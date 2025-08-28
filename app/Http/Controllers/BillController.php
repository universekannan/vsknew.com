<?php

namespace App\Http\Controllers;

use Illuminate\Foundation\Auth\Access\AuthorizesRequests;
use Illuminate\Foundation\Bus\DispatchesJobs;
use Illuminate\Foundation\Validation\ValidatesRequests;
use Illuminate\Routing\Controller as BaseController;
use Illuminate\Support\Facades\Config;


use App\Models\Core\Setting;
use App\Models\Admin\Admin;
use App\Models\Core\Order;
use App\Models\Core\Customers;
use App\Models\Core\Drivers;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Lang;
use Exception;
use App\Models\Core\Images;
use Validator;
use Hash;
use Auth;
use ZipArchive;
use File;
use PDF;
use SimpleSoftwareIO\QrCode\Facades\QrCode;


class BillController extends BaseController
{
  use AuthorizesRequests, DispatchesJobs, ValidatesRequests;


  public function manageBill()
  {
    $manageproducts = DB::table('products')->orderBy('product_id','Asc')->get();

    return view("Bill.newbill")->with('manageproducts',$manageproducts);
  }


  public function itemsearch($query)
  {
      $query = trim($query);
      $shop_id = Auth::user()->shop_id;

      // ✅ Main product search query
      $result = DB::table('products')
          ->where('product_name', 'like', "%{$query}%")
          ->orderBy('product_name')
          ->limit(20)
          ->get();

      $array = [];

      foreach ($result as $res) {
          $price  = number_format($res->price, 2);
          $discount_price = number_format($res->discount_price, 2);
          $discount_price_min_weight = number_format($res->discount_price_min_weight, 2);

  
          $pname = $res->product_name . " " . number_format((float)$res->price, 2, '.', '');

          $array[] = [
              'value'                     => $pname,
              'id'                        => $res->product_id,
              'price'                     => $price,
              // 'stock'                     => $res->stock,
              'discount_price'            => $discount_price,
              'discount_price_min_weight' => $discount_price_min_weight,
              'selling_type'              => $res->selling_type,
          ];
      }

      return response()->json($array);
  }


public function savebill(Request $request)
{
    $invoice_no = "0";
    $invoice_prefix = "I";
    $store_id = 0;
    $store_name = 'VSK Brothers';
    $store_url = 'https://vskbrothers.com';
    $customer_group_id = 1;

    $shop_id     = Auth::user()->shop_id;
    $sales       = $request->get('sales');
    $amount      = $request->get('amount');
    $gst_amount  = $request->get('gst_amount');
    $net_amount  = $request->get('net_amount');
    $mobile      = $request->get('mobile');
    $cust_name   = $request->get('cust_name');
    $bar_code    = $request->get('bar_code');
    $sales_array = json_decode($sales, true);
    $bill_date   = now()->toDateString();

    // fallback if customer_id not passed
    $customer_id = $request->get('customer_id', 1);

    // ✅ Find next bill number
    $billnum = DB::table('shop_billing')
        ->where('shop_id', $shop_id)
        ->max('billnum');
    $billnum = $billnum ? $billnum + 1 : 1;

    // ✅ Insert into shop_billing
    $bill_id = DB::table('shop_billing')->insertGetId([
        'shop_id'   => $shop_id,
        'billnum'   => $billnum,
        'bill_date' => $bill_date,
        'total'     => $amount,
        'mobile'    => $mobile,
        'cust_name' => $cust_name,
        'bar_code'  => $bar_code,
        'gst_amount'=> $gst_amount,
        'net_amount'=> $net_amount,
    ]);

    // ✅ Insert into oc_order
    $order_id = DB::table('orders')->insertGetId([
        'invoice_no'        => $billnum,
        'invoice_prefix'    => $invoice_prefix,
        'store_id'          => $shop_id,
        'store_name'        => '',
        'store_url'         => '',
        'customer_id'       => $customer_id,
        'customer_group_id' => $customer_group_id,
        'firstname'         => $cust_name,
        'lastname'          => $cust_name,
        'email'             => '',
        'telephone'         => $mobile,
        'payment_firstname' => $cust_name,
        'payment_lastname'  => $cust_name,
        'payment_address_1' => '',
        'payment_address_2' => '',
        'payment_city'      => '',
        'payment_postcode'  => '',
        'payment_country'   => '',
        'payment_zone'      => '',
        'payment_method'    => '',
        'shipping_firstname'=> $cust_name,
        'shipping_lastname' => $cust_name,
        'shipping_address_1'=> '',
        'shipping_address_2'=> '',
        'shipping_city'     => '',
        'shipping_postcode' => '',
        'shipping_country'  => '',
        'shipping_country_id'=> 1,
        'shipping_zone'     => '',
        'shipping_method'   => '',
        'total'             => $net_amount,
        'order_status_id'   => 1,
        'affiliate_id'      => 1,
        'commission'        => '0.00',
        'marketing_id'      => 1,
        'language_id'       => 1,
        'currency_id'       => 1,
        'currency_code'     => '',
        'currency_value'    => '1.00000000',
        'date_added'        => $bill_date,
        'date_modified'     => $bill_date,
        'payment_zone_id'   => 1,
        'shipping_zone_id'  => 1,
        'custom_field'      => '',
        'payment_custom_field' => '',
        'shipping_custom_field'=> '',
        'comment'           => '',
    ]);

    // ✅ Insert order items + update stock
    foreach ($sales_array as $sal) {
        $item_id  = $sal["item_id"];
        $quantity = $sal["item_quantity"];
        $rate     = $sal["item_rate"];
        $line_amount = $sal["item_amount"];

        // update stock
        // DB::table('stocks')
        //     ->where('shop_id', $shop_id)
        //     ->where('product_id', $item_id)
        //     ->decrement('stock', $quantity);

        DB::table('products')
            ->where('product_id', $item_id)
            ->decrement('quantity', $quantity);

        // insert into oc_order_product
        DB::table('order_products')->insert([
            'order_id'  => $order_id,
            'product_id'=> $item_id,
            'name'      => $cust_name,
            'quantity'  => $quantity,
            'price'     => $rate,
            'total'     => $line_amount,
        ]);
    }

    // ✅ Order history
    $order_status_id = 1;
    DB::table('orders_history')->insert([
        'order_id'       => $order_id,
        'order_status_id'=> $order_status_id,
        'date_added'     => $bill_date,
    ]);

    // // ✅ Order totals
    // DB::table('oc_order_total')->insert([
    //     'order_id' => $order_id,
    //     'code'     => 'sub-total',
    //     'title'    => 'Sub-Total',
    //     'value'    => $amount,
    // ]);

    // DB::table('oc_order_total')->insert([
    //     'order_id' => $order_id,
    //     'code'     => 'shipping',
    //     'title'    => 'Flat Shipping Rate',
    //     'value'    => 0,
    // ]);

     $total_payable = $amount;

    // DB::table('oc_order_total')->insert([
    //     'order_id' => $order_id,
    //     'code'     => 'total',
    //     'title'    => 'Total',
    //     'value'    => $total_payable,
    // ]);

    // update order total
    DB::table('orders')
        ->where('order_id', $order_id)
        ->update(['total' => $total_payable]);

    return response()->json(['bill_id' => $bill_id, 'order_id' => $order_id, 'message' => 'Bill saved successfully']);
}

public function add_customer(Request $request){
  $firstname = $request->post('firstname');
  $lastname  = $request->post('lastname');
  $telephone = $request->post('telephone');
  $email     = $request->post('email');
  
  DB::table('customers')->insert([
   'firstname' => $firstname,
   'lastname'  => $lastname,
   'telephone' => $telephone,
   'email'     => $email,
   'password'  => bcrypt('123456'), 
 ]);
 
 return redirect()->back();
}

public function itemsearchmobile($mobile){
  $results = DB::table('customers')->select('customer_id','telephone','firstname','lastname')->where('telephone', 'LIKE', $mobile . '%')->get();
echo json_encode($results);
}

public function viewbill($id)
{
    $shop_id = Auth::user()->shop_id;

    // ✅ Get order info
    $order = DB::table('orders')
        ->where('shop_id', $shop_id)
        ->where('order_id', $id)
        ->first();

    // Default values
    $billnum    = "";
    $bill_date  = "";
    $mobile     = "";
    $cust_name  = "";
    $total      = "";
    $gst_amount = "";
    $net_amount = "";

    if ($order) {
        // adapt fields to your schema
        $billnum    = $order->invoice_no ?? "";
        $bill_date  = $order->date_added ?? "";
        $mobile     = $order->telephone ?? "";
        $cust_name  = $order->firstname ?? "";
        $total      = $order->total ?? 0;
        $gst_amount = $order->gst_amount ?? 0;   // only if column exists
        $net_amount = $order->total ?? 0;
    }

    if ($bill_date) {
        $bill_date = date("d-m-Y", strtotime($bill_date));
    }

    // ✅ Get bill items with product names
    $bill = DB::table('order_products')->select('order_products.*','products.product_name')
    ->join('products','products.product_id','=','order_products.product_id')
        ->where('order_products.order_id', $id)
        ->get();

    // ✅ Grand total
    $gtotal = DB::table('orders')
        ->where('order_id', $id)
        ->first();

    return view("Bill.viewbill", compact(
        'gtotal',
        'total',
        'billnum',
        'bill_date',
        'mobile',
        'cust_name',
        'bill',
        'gst_amount',
        'net_amount',
        'id'
    ));
}

































  public function getitembybarcode($barcode){
    $shop_id = Auth::user()->shop_id;
    $sql = "select a.product_id,a.name,c.price,c.discount_price,c.discount_price_min_weight,c.tax_class_id,b.stock from oc_product_description a,stock b,oc_product c where a.product_id=c.product_id and a.product_id=b.item_id and b.shop_id=$shop_id and a.bar_code = '$barcode' and b.stock > 0";
    $result = DB::select(DB::raw($sql));
    $response = array();
    $response["product_id"] = 0;
    if(count($result) > 0){
      $response["product_id"] = $result[0]->product_id;
      $response["name"] = $result[0]->name;
      $response["price"] = number_format($result[0]->price,2);
      $response["discount_price_min_weight"] = number_format($result[0]->discount_price_min_weight,2);
      $response["discount_price"] = number_format($result[0]->discount_price,2);
      $response["stock"]          = $result[0]->stock;
      $tax_class_id               = $result[0]->tax_class_id;
	  
      $sql2 = "select rate,name from oc_tax_rule a,oc_tax_rate b where a.tax_rate_id=b.tax_rate_id and a.tax_class_id=$tax_class_id";
      $result2 = DB::select(DB::raw($sql2));
      $gst = 0;
      $tax_name = "";
      if(count($result2) > 0){
        $gst = round($result2[0]->rate,0);
        $tax_name = $result2[0]->name;
      }
      $response["gst"] = $gst;
      $response["tax_name"] = $tax_name;
    }
    echo json_encode($response);
  }

  
  
  public function itemsearchedit($query){
    $query = trim($query);
    $shop_id = Auth::user()->shop_id;
    $sql = "select a.product_id,a.name,c.price,c.discount_price,c.discount_price_min_weight,c.tax_class_id,b.stock from oc_product_description a,stock b,oc_product c where a.product_id=c.product_id and a.product_id=b.item_id and b.shop_id=$shop_id and a.name like '%$query%' and b.stock > 0";
    $sql= $sql ." order by name LIMIT 20";
    $result = DB::select(DB::raw($sql));
    $array = array();
    foreach ($result as $key => $res) {
      $price = number_format($res->price,2);
      $discount_price = number_format($res->discount_price,2);
      $discount_price_min_weight = number_format($res->discount_price_min_weight,2);
      $tax_class_id = $res->tax_class_id;
      $sql2 = "select rate,name from oc_tax_rule a,oc_tax_rate b where a.tax_rate_id=b.tax_rate_id and a.tax_class_id=$tax_class_id";
      $result2 = DB::select(DB::raw($sql2));
      $gst = 0;
      $tax_name = "";
      if(count($result2) > 0){
        $gst = round($result2[0]->rate,0);
        $tax_name = $result2[0]->name;
      }
      $pname = $res->name ." ".number_format((float)$res->price, 2, '.', '');
      $array[] = array('value' => $pname,'id' => $res->product_id,'price' => $price,'stock' => $res->stock,'gst' => $gst,'tax_name' => $tax_name,'discount_price' => $discount_price, 'discount_price_min_weight' => $discount_price_min_weight);
    }
    echo json_encode($array);
  }
  
  
  

  

  public function billdetails($from,$to)
  {
    $shop_id = Auth::user()->shop_id;
    $sql = "select * from shop_billing where shop_id=$shop_id and bill_date>='$from' and bill_date<='$to' order by billnum desc";
    $bill = DB::select(DB::raw($sql));
    return view("Bill.billdetails",compact('from','to','bill'));
  }

  

  

	
	
	
	public function savebillupdate(Request $request)
  {
	$bill_date   = date("Y-m-d");
    $billnum     = $request->id;
    $amount      = $request->get('amount');
    $gst_amount  = $request->get('gst_amount');

    DB::table('oc_order')
        ->where('order_id', $billnum)
 	    ->increment('total', $amount);

	///// OPEN CART //////
		$order_status_id = 1;

		// Insert into oc_order_history
		DB::insert(
			"INSERT INTO oc_order_history (order_id, order_status_id, date_added) VALUES (?, ?, ?)",
			[$billnum, $order_status_id, $bill_date]
		);


        $deletesordertotal = DB::table('oc_order_total')->where('order_id',$request->id)->delete();


        DB::insert(
			"INSERT INTO oc_order_total (order_id, code, title, value) VALUES (?, ?, ?, ?)",
			[$billnum, 'sub-total', 'Sub-Total', $amount]
		);


		// Insert into oc_order_total for shipping
		DB::insert(
			"INSERT INTO oc_order_total (order_id, code, title, value) VALUES (?, ?, ?, ?)",
			[$billnum, 'shipping', 'Flat Shipping Rate', '']
		);

		// Calculate total payable
		$total_payable = $amount + $gst_amount;

		// Insert into oc_order_total for total
		DB::insert(
			"INSERT INTO oc_order_total (order_id, code, title, value) VALUES (?, ?, ?, ?)",
			[$billnum, 'total', 'Total', $total_payable]
		);


    echo $request->id;

  }

}
