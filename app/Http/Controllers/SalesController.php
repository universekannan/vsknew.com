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


class SalesController extends BaseController
{
    use AuthorizesRequests, DispatchesJobs, ValidatesRequests;

	public function manageNewSales(){

     return view("products.newsales");
	} 
          	
	 public function orders(){
        $order_status = array( '1', '2', '3' );
	    $order = DB::table('orders')->get();
	        $order = DB::table( 'orders' )->select( 'orders.*', 'customers.firstname','customers.lastname','customers.telephone', 'orders.order_id as ordersID' )
            ->Join( 'customers', 'customers.customer_id', '=', 'orders.customer_id' )
			->whereIn( 'orders.order_status_id', $order_status)
            ->orderBy( 'orders.order_id', 'Asc' )->get();
	
    /*  foreach($order as $orders){
         $orders1 = $orders->order_id;
         $total = $orders->total;

	$orderhistory = DB::table('orders_history')->where( 'order_id', $orders1)->first();
         $orderhistoryid = $orderhistory->order_history_id;
         $orderid = $orderhistory->order_id;
         $orderstatusid = $orderhistory->order_status_id;
         $dateadded = $orderhistory->date_added;
		 
	$orderstatus = DB::table('order_status')->where( 'order_status_id', $orderstatusid)->first();
         $ordername= $orderstatus->name;
	  }*/

     return view( 'sales.index', compact( 'order') );
	}        
	
	
    public function orderstatu(Request $request, $id)
	{
		$user = Auth::user();
		$user_type_id = $user->user_type_id;
		$user_id = $user->id;

		$payment_status = $request->payment_status;
		$order_status = $request->order_status;
		$from_date = $request->from_date;
		$to_date = $request->to_date;
		$nameall = $request->nameall;

		// use $id as order_status
		if ($user_type_id == 1 || $user_type_id == 2) {
			$query = DB::table('orders')
				->select('orders.*', 'customers.firstname', 'customers.lastname', 'customers.telephone', 'orders.order_id as ordersID')
				->join('customers', 'customers.customer_id', '=', 'orders.customer_id')
				->where('orders.order_status_id', $id);

			if ($nameall) {
				$query->where(function ($q) use ($nameall) {
					$q->where('customers.firstname', 'like', "%$nameall%")
						->orWhere('customers.lastname', 'like', "%$nameall%")
						->orWhere('customers.telephone', 'like', "%$nameall%");
				});
			}

			if ($payment_status) {
				$query->where('orders.payment_method', $payment_status);
			}

			if ($order_status) {
				$query->where('orders.order_status_id', $order_status);
			}

			if ($from_date && $to_date) {
				$query->whereBetween('orders.date_added', [$from_date, $to_date]);
			}

			$order = $query->orderBy('orders.order_id', 'asc')->get();
		} else {
			$query = DB::table('order_management')
				->select('order_management.*', 'customers.firstname', 'customers.lastname', 'customers.telephone', 'orders.total')
				->join('customers', 'customers.customer_id', '=', 'order_management.customer_id')
				->join('orders', 'orders.order_id', '=', 'order_management.order_id')
				->where('order_management.user_id', $user_id)
				->where('order_management.live', '!=', '0')
				->where('order_management.order_status_id', $id);

			if ($payment_status) {
				$query->where('orders.payment_method', $payment_status);
			}

			if ($order_status) {
				$query->where('orders.order_status_id', $order_status);
			}

			if ($from_date && $to_date) {
				$query->whereBetween('orders.date_added', [$from_date, $to_date]);
			}

			$order = $query->groupBy('order_management.order_id')->get();
		}

		return view('sales.index', compact('order','id'));
	}
  
	
	
	 public function orderproducts($orderid){
		$userid = Auth::user()->id;
	    $user_type_id = "0";

		$orderproducts = DB::table('order_products')->where( 'order_id', $orderid)->get();
		
		$orderstatus = DB::table('orders')->where( 'order_id', $orderid)->first();
        $orderstatusid = $orderstatus->order_status_id;
        $order_id      = $orderstatus->order_id;
        $customer_id   = $orderstatus->customer_id;
        $ordertotal    = $orderstatus->total;
        $ocorderid     = $orderstatus->ocorderid;
		
			$statusid = "";
		if($orderstatusid == '1'){
			$user_type_id = "4";
			$statusid = "1";
		} else if($orderstatusid == '2'){
			$user_type_id = 5;
			$statusid = 2;
		} else if($orderstatusid == '3'){
			$user_type_id = 6;
			$statusid = 3;
		} else if($orderstatusid == '4'){
			$user_type_id = 7;
			$statusid = 4;
		} else if($orderstatusid == '5'){
			$user_type_id = 8;
			$statusid = 5;
		}
		
        if(Auth::user()->user_type_id == '1' || Auth::user()->user_type_id == '2'){
		    $order_status = DB::table('order_status')->where('status','1')->get();
		    $users = DB::table('users')->get();
		} else {
	     	$order_status = DB::table('order_status')->where('order_status_id', '>', $statusid)->where('status','1')->get();
		    $users = DB::table('users')->where('user_type_id',$user_type_id)->get();
		} 
		
		$user = DB::table('order_management')->where('order_id', $orderid)->first();

	        $order_1 = DB::table( 'orders' )->select( 'orders.*', 'customers.firstname','customers.lastname','customers.telephone', 'orders.order_id as ordersID' )
            ->Join( 'customers', 'customers.customer_id', '=', 'orders.customer_id' )
			->where( 'orders.order_id', $orderid)
            ->orderBy( 'orders.order_id', 'Asc' )->first();

	        $order_2 = DB::table( 'order_management' )->select( 'order_management.*', 'order_management.*', 'a.full_name as assain_user', 'b.full_name as login_user', 'order_management.order_id as order_management_id' )
            ->Join( 'users as a', 'a.id', '=', 'order_management.user_id' )
			->Join( 'users as b', 'b.id', '=', 'order_management.log_id' )
			->where( 'order_management.order_id', $orderid)
			->where( 'order_management.order_status_id', 2)
            ->orderBy( 'order_management.order_id', 'Asc' )->first();
			
            $order_3 = DB::table( 'order_management' )->select( 'order_management.*', 'order_management.*', 'a.full_name as assain_user', 'b.full_name as login_user', 'order_management.order_id as order_management_id' )
            ->Join( 'users as a', 'a.id', '=', 'order_management.user_id' )
			->Join( 'users as b', 'b.id', '=', 'order_management.log_id' )
			->where( 'order_management.order_id', $orderid)
			->where( 'order_management.order_status_id', 3)
            ->orderBy( 'order_management.order_id', 'Asc' )->first();
			
            $order_4 = DB::table( 'order_management' )->select( 'order_management.*', 'order_management.*', 'a.full_name as assain_user', 'b.full_name as login_user', 'order_management.order_id as order_management_id' )
            ->Join( 'users as a', 'a.id', '=', 'order_management.user_id' )
			->Join( 'users as b', 'b.id', '=', 'order_management.log_id' )
			->where( 'order_management.order_id', $orderid)
			->where( 'order_management.order_status_id', 4)
            ->orderBy( 'order_management.order_id', 'Asc' )->first();

            $order_5 = DB::table( 'order_management' )->select( 'order_management.*', 'order_management.*', 'a.full_name as assain_user', 'b.full_name as login_user', 'order_management.order_id as order_management_id' )
            ->Join( 'users as a', 'a.id', '=', 'order_management.user_id' )
			->Join( 'users as b', 'b.id', '=', 'order_management.log_id' )
			->where( 'order_management.order_id', $orderid)
			->where( 'order_management.order_status_id', 5)
            ->orderBy( 'order_management.order_id', 'Asc' )->first();

     return view('sales.order_products', compact( 'orderproducts','orderstatusid','order_status','users','ordertotal','orderstatus','orderid','user','customer_id','order_id','order_1','order_2','order_3','order_4','order_5','ocorderid') );
	} 
	
	 public function saveorderstatus( Request $request )
    {

        $user_id = Auth::user()->id;
        $shop_id = Auth::user()->shop_id;
        $order_id = $request->order_id;
        $saveorderstatus = DB::table( 'order_management' )->insertGetId( [
            'shop_id'         => $request->shop_id,
            'shop_id'         => $request->shop_id,
            'order_id'        => $order_id,
            'customer_id'     => $request->customer_id,
            'order_status_id' => $request->order_status_id,
            'user_id'         => $request->user_id,
            'log_id'          => $user_id,
            'live'            => 1,
            'order_date'      => date("Y-m-d H:i:s"),
        ] );

		DB::table( 'order_management' )->where( 'id', '!=', $saveorderstatus )->where( 'order_id', $order_id )->update( [
				'live' => 'NULL',
			] );
        $updateuser = DB::table( 'orders' )->where( 'order_id', $order_id )->update( [
            'order_status_id' => $request->order_status_id,
        ] );
		 $updateuser = DB::table( 'orders_history' )->where( 'order_id', $order_id )->update( [
            'order_status_id' => $request->order_status_id,
        ] );
        return redirect( 'dashboard')->with( 'success', 'Update Successfully ... !' );
        //return redirect( 'orderproducts/' . $order_id )->with( 'success', 'Update Successfully ... !' );

    }	
	
	 public function updateorderstatus( Request $request )
    {
        $log_id = Auth::user()->id;
		
		$order_status_id =$request->order_status_id;
		$user_id =$request->user_id;
		if($order_status_id == '2'){
			$updateuser = DB::table( 'order_management' )->where( 'id', $request->row_id )->update( [
				'order_status_id' => $order_status_id,
				'user_id'         => $user_id,
				'log_id'          => $log_id,
				'updated_at'      => date("Y-m-d H:i:s"),
			] );
		} elseif($order_status_id == '3'){
            DB::table( 'shop_billing' )->insert( [
				'order_status_id' => $order_status_id,
				'user_id'         => $user_id,
				'login_id'        => $log_id,
				'bill_date'       => date("Y-m-d H:i:s"),
			] );
		}
			

		$orderproducts = DB::table('order_products')->where( 'order_id', $request->order_id)->where( 'packaging', '1')->get();

		foreach($orderproducts as $orderproductslist){
			$shop_id   = $orderproductslist->id;
			$bill_id   = $orderproductslist->id;
			$item_id   = $orderproductslist->product_id;
			$quantity  = $orderproductslist->quantity;
			$item_rate = $orderproductslist->price;
			$amount	   = $orderproductslist->total;
			
			$saveorderstatus = DB::table( 'shop_bill_items' )->insert( [
		    'shop_id'   => $shop_id,
			'order_id'  => $request->order_id,
			'bill_id'   => $bill_id,
			'item_id'   => $item_id,
			'quantity'  => $quantity,
			'item_rate' => $item_rate,
			'amount'    => $amount,
        ] );
		}

       

		
		//shop_billing
		
//shop_id	billnum	bill_date	total	mobile	cust_name	bar_code	///gst_amount	net_amount	


        $updateuser = DB::table( 'orders' )->where( 'order_id', $request->order_id )->update( [
            'order_status_id' => $order_status_id,
        ] );
		


        return redirect( 'orders' )->with( 'success', 'Update Successfully ... !' );
    }
	
	    public function packaging( $user_id, $order_product_id ) {
        $id = Auth::user()->id;
        $sql = "update order_products set packaging=$user_id where order_product_id  = $order_product_id";

        DB::update( DB::raw( $sql ) );
        $response[ 'status' ] = 'success';
        return response()->json( $response );
    }
	
	
	
	
	public function order_process($orderid)
	  {
      $orderproducts = DB::table('order_products')->where( 'order_products.order_id', $orderid)->get();

		$manageproducts = DB::table('oc_product')->select('oc_product.*','oc_product_description.name as item_name','oc_product_description.product_id','oc_product.product_id as pID')
		->Join('oc_product_description', 'oc_product.product_id', '=', 'oc_product_description.product_id')
		->orderBy('oc_product.product_id','Asc')->get();

	        $order_1 = DB::table( 'orders' )->select( 'orders.*', 'customers.firstname','customers.lastname','customers.telephone')
            ->Join( 'customers', 'customers.customer_id', '=', 'orders.customer_id' )
			->where( 'orders.order_id', $orderid)
            ->orderBy( 'orders.order_id', 'Asc' )->first();
			
	    $orderstatus = DB::table('orders')->where( 'order_id', $orderid)->first();
        $orderstatusid = $orderstatus->order_status_id;
        $order_id      = $orderstatus->order_id;
        $customer_id   = $orderstatus->customer_id;
        $ordertotal    = $orderstatus->total;
        $ocorderid     = $orderstatus->ocorderid;
		
			$statusid = "";
		if($orderstatusid == '1'){
			$user_type_id = "3";
			$statusid = "2";
		} else if($orderstatusid == '2'){
			$user_type_id = 4;
			$statusid = 3;
		} else if($orderstatusid == '3'){
			$user_type_id = 5;
			$statusid = 4;
		} else if($orderstatusid == '4'){
			$user_type_id = 6;
			$statusid = 5;
		} else if($orderstatusid == '5'){
			$user_type_id = 2;
			$statusid = 6;
		}
		
		
        if(Auth::user()->user_type_id == '1' || Auth::user()->user_type_id == '2'){
		    $order_status = DB::table('order_status')->where('status','1')->get();
		    $users = DB::table('users')->get();
		} else {
	     	$order_status = DB::table('order_status')->where('order_status_id', '>', $statusid)->where('status','1')->get();
		    $users = DB::table('users')->where('user_type_id',$user_type_id)->get();
		}   
		$user = DB::table('order_management')->where('order_id', $orderid)->first();

		return view("Bill.orderprocess")->with('manageproducts',$manageproducts)->with('orderproducts',$orderproducts)->with('order_1',$order_1)->with('users',$users)->with('order_status',$order_status)->with('orderid', $orderid)->with('customer_id', $customer_id)->with('orderstatusid', $orderstatusid )->with('user', $user );
	  }
	  
	  public function destroy($id)
		{
			$order = DB::table('order_products')->where('order_product_id',$id)->first();
			DB::table('orders')->where('order_id', $order->order_id)->decrement('total', $order->total);

			$order = DB::table('order_products')->where('order_product_id',$id)->delete();
	    	return response()->json(['success' => true]);
		}

		public function destroyItem($id)
		{
			$order = DB::table('order_products')->where('product_id',$id)->first();
			DB::table('orders')->where('order_id', $order->order_id)->decrement('total', $order->total);

			$order = DB::table('order_products')->where('product_id',$id)->delete();;
	    return response()->json(['success' => true]);
		}
		
		public function alterOrderSave(Request $request)
		{
			try {
				DB::beginTransaction();

				$data = $request->input('orderData');

				$existing = DB::table('order_products')
					->where('order_id', $data['order_id'])
					->where('product_id', $data['product_id'])
					->first();

				if ($existing) {
					$updatedQty = (float)$existing->quantity + (float)$data['item_quantity'];
					$updatedTotal = (float)$updatedQty * (float)$data['item_rate'];

					DB::table('order_products')
						->where('order_id', $data['order_id'])
						->where('product_id', $data['product_id'])
						->update([
							'quantity' => $updatedQty,
							'price' => (float)$data['item_rate'],
							'total' => $updatedTotal,
						]);
				} else {
					DB::table('order_products')->insert([
						'order_id'   => $data['order_id'],
						'product_id' => $data['product_id'],
						'name'       => $data['item_name'],
						'quantity'   => (float)$data['item_quantity'],
						'price'      => (float)$data['item_rate'],
						'total'      => (float)$data['total'],
					]);
				}

				DB::table('orders')
					->where('order_id', $data['order_id'])
					->increment('total', (float)$data['total']);

				DB::commit();
				return response()->json(['status' => 'success', 'message' => 'Order saved successfully!']);

			} catch (\Exception $e) {
				DB::rollBack();
				return response()->json(['status' => 'error', 'message' => 'DB error: ' . $e->getMessage()]);
			}
		}






		public function show_order_process($orderid)
	  {
      $orderproducts = DB::table('order_products')->where( 'order_products.order_id', $orderid)->get();

		$manageproducts = DB::table('oc_product')->select('oc_product.*','oc_product_description.name as item_name','oc_product_description.product_id','oc_product.product_id as pID')
		->Join('oc_product_description', 'oc_product.product_id', '=', 'oc_product_description.product_id')
		->orderBy('oc_product.product_id','Asc')->get();

	        $order_1 = DB::table( 'orders' )->select( 'orders.*', 'customers.firstname','customers.lastname','customers.telephone')
            ->Join( 'customers', 'customers.customer_id', '=', 'orders.customer_id' )
			->where( 'orders.order_id', $orderid)
            ->orderBy( 'orders.order_id', 'Asc' )->first();
			
	    $orderstatus = DB::table('orders')->where( 'order_id', $orderid)->first();
        $orderstatusid = $orderstatus->order_status_id;
        $order_id      = $orderstatus->order_id;
        $customer_id   = $orderstatus->customer_id;
        $ordertotal    = $orderstatus->total;
        $ocorderid     = $orderstatus->ocorderid;
		
			$statusid = "";
		if($orderstatusid == '1'){
			$user_type_id = "3";
			$statusid = "2";
		} else if($orderstatusid == '2'){
			$user_type_id = 4;
			$statusid = 3;
		} else if($orderstatusid == '3'){
			$user_type_id = 5;
			$statusid = 4;
		} else if($orderstatusid == '4'){
			$user_type_id = 6;
			$statusid = 5;
		} else if($orderstatusid == '5'){
			$user_type_id = 2;
			$statusid = 6;
		}
		
		
        if(Auth::user()->user_type_id == '1' || Auth::user()->user_type_id == '2'){
		    $order_status = DB::table('order_status')->where('status','1')->get();
		    $users = DB::table('users')->get();
		} else {
	     	$order_status = DB::table('order_status')->where('order_status_id', '>', $statusid)->where('status','1')->get();
		    $users = DB::table('users')->where('user_type_id',$user_type_id)->get();
		}   
		$user = DB::table('order_management')->where('order_id', $orderid)->first();

		return view("Bill.orderprocess")->with('manageproducts',$manageproducts)->with('orderproducts',$orderproducts)->with('order_1',$order_1)->with('users',$users)->with('order_status',$order_status)->with('orderid', $orderid)->with('customer_id', $customer_id)->with('orderstatusid', $orderstatusid )->with('user', $user );
	  }
}
