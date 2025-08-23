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

  public function itemsearch($query){
    $query = trim($query);
    $shop_id = Auth::user()->shop_id;
    $sql = "select a.product_id,a.name,c.price,c.discount_price,c.discount_price_min_weight,c.tax_class_id,b.stock,c.selling_type from oc_product_description a,stock b,oc_product c where a.product_id=c.product_id and a.product_id=b.item_id and b.shop_id=$shop_id and a.name like '%$query%' and b.stock > 0";
    $sql= $sql ." order by name LIMIT 20";
    $result = DB::select(DB::raw($sql));
    $array = array();
    foreach ($result as $key => $res) {
      $price = number_format($res->price,2);
      $discount_price = number_format($res->discount_price,2);
      $discount_price_min_weight = number_format($res->discount_price_min_weight,2);
      $tax_class_id = $res->tax_class_id;
      $selling_type = $res->selling_type;
      $sql2 = "select rate,name from oc_tax_rule a,oc_tax_rate b where a.tax_rate_id=b.tax_rate_id and a.tax_class_id=$tax_class_id";
      $result2 = DB::select(DB::raw($sql2));
      $gst = 0;
      $tax_name = "";
      if(count($result2) > 0){
        $gst = round($result2[0]->rate,0);
        $tax_name = $result2[0]->name;
      }
      $pname = $res->name ." ".number_format((float)$res->price, 2, '.', '');
      $array[] = array('value' => $pname,'id' => $res->product_id,'price' => $price,'stock' => $res->stock,'gst' => $gst,'tax_name' => $tax_name,'discount_price' => $discount_price, 'discount_price_min_weight' => $discount_price_min_weight,'selling_type' => $selling_type);
    }
    echo json_encode($array);
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
  
  
  public function itemsearchmobile($mobile){
    $results = DB::table('oc_customer')->select('customer_id','telephone','firstname','lastname')->where('telephone', 'LIKE', $mobile . '%')->get();
	echo json_encode($results);
  }

  public function viewbill($id){
    $shop_id = Auth::user()->shop_id;
    $sql = "select * from oc_order where shop_id=$shop_id and order_id=$id";
    $result = DB::select(DB::raw($sql));
    $billnum = "";
    $bill_date = "";
    $mobile = "";
    $cust_name = "";
    $total = "";
    $gst_amount = "";
    $net_amount = "";
    if(count($result) > 0){
      $billnum    = $result[0]->billnum;
      $bill_date  = $result[0]->bill_date;
      $mobile     = $result[0]->mobile;
      $cust_name  = $result[0]->cust_name;
      $total      = $result[0]->total;
      $gst_amount = $result[0]->gst_amount;
      $net_amount = $result[0]->total;
    }
    $bill_date = date("d-m-Y",strtotime($bill_date));
    $bill = DB::table('oc_order_product')
			->leftjoin('oc_product_description','oc_product_description.product_id','=','oc_order_product.product_id')
			->select('oc_order_product.*','oc_product_description.name as proname')
            ->where('order_id', $id)
            ->get();
		  
		  $gtotal = DB::table('oc_order')
          ->where('order_id', $id)
          ->first();

    return view("Bill.viewbill",compact('gtotal','total','billnum','bill_date','mobile','cust_name','bill','gst_amount','net_amount','id'));
  }

  public function billdetails($from,$to)
  {
    $shop_id = Auth::user()->shop_id;
    $sql = "select * from shop_billing where shop_id=$shop_id and bill_date>='$from' and bill_date<='$to' order by billnum desc";
    $bill = DB::select(DB::raw($sql));
    return view("Bill.billdetails",compact('from','to','bill'));
  }

  public function manageBill()
  {
    $manageproducts = DB::table('oc_product')->select('oc_product.*','oc_product_description.name','oc_product_description.product_id','oc_product.product_id as pID')
    ->Join('oc_product_description', 'oc_product.product_id', '=', 'oc_product_description.product_id')
    ->orderBy('oc_product.product_id','Asc')->get();

    return view("Bill.newbill")->with('manageproducts',$manageproducts);
  }

  public function savebill(Request $request)
  {
	$invoice_no="0";
	$invoice_prefix="I";
	$store_id=0;
	$store_name='VSK Brothers';
	$store_url='https://vskbrothers.com';
	$customer_group_id=1;
	
    $shop_id = Auth::user()->shop_id;
    $sales       = $request->get('sales');
    $amount      = $request->get('amount');
    $gst_amount  = $request->get('gst_amount');
    $net_amount  = $request->get('net_amount');
    $mobile      = $request->get('mobile');
    $cust_name   = $request->get('cust_name');
    $bar_code    = $request->get('bar_code');
    $sales_array = json_decode($sales,true);
    $bill_date   = date("Y-m-d");
    $billnum     = 0;
	
	if(!empty($customer_id)){
		$customer_id = $customer_id;
	} else {
		$customer_id = 1;
	}
		
	
	
    $sql="select max(billnum) bilnum from shop_billing where shop_id=$shop_id";
    $result = DB::select(DB::raw($sql));
    if(count($result) > 0){
      $billnum = $result[0]->bilnum;
      $billnum = $billnum + 1;
    }else{
      $billnum = 1;
    }
    $sql = "insert into shop_billing (shop_id,billnum,bill_date,total,mobile,cust_name,bar_code,gst_amount,net_amount) values ($shop_id,$billnum,'$bill_date',$amount,'$mobile','$cust_name','$bar_code',$gst_amount,$net_amount)";

    DB::insert($sql);
    $bill_id = DB::getPdo()->lastInsertId();
	
	//// OPEN CART /////
	
	
	$str="INSERT INTO `oc_order`(invoice_no,invoice_prefix,store_id,store_name,store_url,customer_id,customer_group_id,firstname,lastname,email,telephone,payment_firstname,payment_lastname,payment_address_1,payment_address_2,payment_city,payment_postcode,payment_country,payment_zone,payment_method,shipping_firstname,shipping_lastname,shipping_address_1,shipping_address_2,shipping_city,shipping_postcode,shipping_country,shipping_country_id,shipping_zone,shipping_method,total,order_status_id,affiliate_id,commission,marketing_id,language_id,currency_id,currency_code,currency_value,date_added,date_modified,payment_zone_id,shipping_zone_id,custom_field,payment_custom_field,shipping_custom_field,comment) VALUES ('$billnum','','$shop_id','','',$customer_id,$customer_group_id,'$cust_name','$cust_name','','$mobile','$cust_name','$cust_name','','','','','','','','$cust_name','$cust_name','','','','','',1,'','','$amount',1,1,'0.00',1,1,1,'','1.00000000','$bill_date','$bill_date',1,1,'','','','')";

	DB::insert($str);
	
	///// OPEN CART //////
	
    foreach($sales_array as $sal){
      $item_id  = $sal["item_id"];
      $quantity = $sal["item_quantity"];
      $rate     = $sal["item_rate"];
      $amount   = $sal["item_amount"];
      
      $sql="update stock set stock = stock - $quantity where shop_id=$shop_id and item_id=$item_id";
      DB::update($sql);
      $sql="update oc_product set quantity = quantity - $quantity where  product_id=$item_id";
      DB::update($sql);
	  
	  ///// OPEN CART //////
		
		$sql = "INSERT INTO oc_order_product (order_id, product_id, name, quantity, price, total) 
        VALUES ('$bill_id', '$item_id', '$cust_name', '$quantity', '$rate', '$amount')";
		DB::insert($sql);


	  ///// OPEN CART //////
    }
	
	///// OPEN CART //////
		$order_status_id = 1;

		// Insert into `oc_order_history`
		DB::insert(
			"INSERT INTO oc_order_history (order_id, order_status_id, date_added) VALUES (?, ?, ?)", 
			[$billnum, $order_status_id, $bill_date]
		);

		// Insert into `oc_order_total` for sub-total
		DB::insert(
			"INSERT INTO oc_order_total (order_id, code, title, value) VALUES (?, ?, ?, ?)", 
			[$billnum, 'sub-total', 'Sub-Total', $amount]
		);

		// Insert into `oc_order_total` for shipping
		DB::insert(
			"INSERT INTO oc_order_total (order_id, code, title, value) VALUES (?, ?, ?, ?)", 
			[$billnum, 'shipping', 'Flat Shipping Rate', '']
		);

		// Calculate total payable
		$total_payable = $amount + 0;

		// Insert into `oc_order_total` for total
		DB::insert(
			"INSERT INTO oc_order_total (order_id, code, title, value) VALUES (?, ?, ?, ?)", 
			[$billnum, 'total', 'Total', $total_payable]
		);

		// Update `oc_order` with total
		DB::update(
			"UPDATE oc_order SET total = ? WHERE order_id = ?", 
			[$total_payable, $billnum]
		);

	///// OPEN CART //////

    echo $bill_id;

  }

	public function add_customer(Request $request){
		 $firstname = $request->post('firstname');
		 $lastname  = $request->post('lastname');
		 $telephone = $request->post('telephone');
		 $email     = $request->post('email');
		 
		 DB::table('oc_customer')->insert([
			'firstname' => $firstname,
			'lastname'  => $lastname,
			'telephone' => $telephone,
			'email'     => $email,
			'password'  => bcrypt('123456'), 
		]);
		
		return redirect()->back();
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
