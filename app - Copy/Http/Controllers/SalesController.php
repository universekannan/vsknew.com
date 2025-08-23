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
/******   Manage Products Start ******/
		
      

		
	public function manageNewSales(){

     return view("products.newsales");

	} 
          	
	 public function orders(){
    $order_status = array( '1', '2', '3' );

	$order = DB::table('oc_order')->get();
	        $order = DB::table( 'oc_order' )->select( 'oc_order.*', 'oc_customer.firstname','oc_customer.lastname','oc_customer.telephone', 'oc_order.order_id as oc_orderID' )
            ->Join( 'oc_customer', 'oc_customer.customer_id', '=', 'oc_order.customer_id' )
			->whereIn( 'oc_order.order_status_id', $order_status)
            ->orderBy( 'oc_order.order_id', 'Asc' )->get();
	
    /*  foreach($order as $orders){
         $orders1 = $orders->order_id;
         $total = $orders->total;

	$orderhistory = DB::table('oc_order_history')->where( 'order_id', $orders1)->first();
         $orderhistoryid = $orderhistory->order_history_id;
         $orderid = $orderhistory->order_id;
         $orderstatusid = $orderhistory->order_status_id;
         $dateadded = $orderhistory->date_added;
		 
	$orderstatus = DB::table('oc_order_status')->where( 'order_status_id', $orderstatusid)->first();
         $ordername= $orderstatus->name;
	  }*/

     return view( 'sales.index', compact( 'order') );
	}        
	
	
    public function orderstatu($order_status){
        $user_type_id =  Auth::user()->user_type_id;
        $user_id =  Auth::user()->id;

    	if($order_status =='1'){
	        $order = DB::table( 'oc_order' )->select( 'oc_order.*', 'oc_customer.firstname','oc_customer.lastname','oc_customer.telephone', 'oc_order.order_id as oc_orderID' )
            ->Join( 'oc_customer', 'oc_customer.customer_id', '=', 'oc_order.customer_id' )
			->where( 'oc_order.order_status_id', $order_status)
            ->orderBy( 'oc_order.order_id', 'Asc' )->get();
		}else{
	        $order = DB::table( 'order_management' )->select( 'order_management.*','order_management.*', 'oc_customer.firstname','oc_customer.lastname','oc_customer.telephone', 'oc_order.total' )
            ->Join( 'oc_customer', 'oc_customer.customer_id', '=', 'order_management.customer_id' )
            ->Join( 'oc_order', 'oc_order.order_id', '=', 'order_management.order_id' )
			->where( 'order_management.order_status_id', $order_status)
			->where( 'order_management.user_id', $user_id)
			->groupBy('order_management.order_id')
			->get();
		}
		
     return view( 'sales.index', compact( 'order') );
	}        
	
	
	 public function orderproducts($orderid){
		 

		$orderproducts = DB::table('oc_order_product')->where( 'order_id', $orderid)->get();
		$userid = Auth::user()->id;
		if($orderid == '1'){
			$user_type_id = "3";
		} else if($orderid == '3'){
			$user_type_id = 4;
		} else if($orderid == '4'){
			$user_type_id = 5;
		} else if($orderid == '5'){
			$user_type_id = 6;
		} else if($orderid == '6'){
			$user_type_id = 2;
		}
		$users = DB::table('users')->where('user_type_id',$user_type_id)->get();

		$orderstatus = DB::table('oc_order')->where( 'order_id', $orderid)->first();
        $orderstatusid = $orderstatus->order_status_id;
        $order_id = $orderstatus->order_id;
        $customer_id = $orderstatus->customer_id;
        $ordertotal = $orderstatus->total;
		
		if($orderstatusid == '1'){
			$statusid = "2";
		} else if($orderstatusid == '2'){
			$statusid = 3;
		} else if($orderstatusid == '3'){
			$statusid = 4;
		} else if($orderstatusid == '4'){
			$statusid = 5;
		} else if($orderstatusid == '5'){
			$statusid = 6;
		}
		
		if(Auth::user()->user_type_id == '2'){
		    $order_status = DB::table('oc_order_status')->get();
		} else {
	     	$order_status = DB::table('oc_order_status')->where('order_status_id',$statusid)->get();
		}
		
		$user = DB::table('order_management')->where('order_id', $orderid)->first();

	        $order_1 = DB::table( 'oc_order' )->select( 'oc_order.*', 'oc_customer.firstname','oc_customer.lastname','oc_customer.telephone', 'oc_order.order_id as oc_orderID' )
            ->Join( 'oc_customer', 'oc_customer.customer_id', '=', 'oc_order.customer_id' )
			->where( 'oc_order.order_id', $orderid)
            ->orderBy( 'oc_order.order_id', 'Asc' )->first();

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

              
			
     return view('sales.order_products', compact( 'orderproducts','orderstatusid','order_status','users','ordertotal','orderstatus','orderid','user','customer_id','order_id','order_1','order_2','order_3','order_4','order_5') );
	} 
	
	
	 public function saveorderstatus( Request $request )
    {
        $user_id = Auth::user()->id;
        $shop_id = Auth::user()->shop_id;
        $saveorderstatus = DB::table( 'order_management' )->insert( [
            'shop_id' => $request->shop_id,
            'shop_id' => $request->shop_id,
            'order_id' => $request->order_id,
            'customer_id' => $request->customer_id,
            'order_status_id' => $request->order_status_id,
            'user_id' => $request->user_id,
            'log_id' => $user_id,
            'order_date' => date("Y-m-d H:i:s"),
        ] );
		
        $updateuser = DB::table( 'oc_order' )->where( 'order_id', $request->order_id )->update( [
            'order_status_id' => $request->order_status_id,
        ] );
		
        return redirect()->back()->with( 'success', 'Save Successfully ... !' );

    }	
	
	 public function updateorderstatus( Request $request )
    {
        $log_id = Auth::user()->id;
		
		$order_status_id =$request->order_status_id;
		$user_id =$request->user_id;
		if($order_status_id == '2'){
			$updateuser = DB::table( 'order_management' )->where( 'id', $request->row_id )->update( [
				'order_status_id' => $order_status_id,
				'user_id' => $user_id,
				'log_id' => $log_id,
				'updated_at' => date("Y-m-d H:i:s"),
			] );
		} elseif($order_status_id == '3'){
            DB::table( 'shop_billing' )->insert( [
				'order_status_id' => $order_status_id,
				'user_id' => $user_id,
				'login_id' => $log_id,
				'bill_date' => date("Y-m-d H:i:s"),
			] );
		}
			

		$orderproducts = DB::table('oc_order_product')->where( 'order_id', $request->order_id)->where( 'packaging', '1')->get();

		foreach($orderproducts as $orderproductslist){
			$shop_id = $orderproductslist->id;
			$bill_id = $orderproductslist->id;
			$item_id = $orderproductslist->product_id;
			$quantity = $orderproductslist->quantity;
			$item_rate = $orderproductslist->price;
			$amount	 = $orderproductslist->total;
			
			$saveorderstatus = DB::table( 'shop_bill_items' )->insert( [
		    'shop_id' => $shop_id,
			'order_id' => $request->order_id,
			'bill_id' => $bill_id,
			'item_id' => $item_id,
			'quantity' => $quantity,
			'item_rate' => $item_rate,
			'amount' => $amount,
        ] );
		}

       

		
		//shop_billing
		
//shop_id	billnum	bill_date	total	mobile	cust_name	bar_code	///gst_amount	net_amount	


        $updateuser = DB::table( 'oc_order' )->where( 'order_id', $request->order_id )->update( [
            'order_status_id' => $order_status_id,
        ] );
		


        return redirect( 'orders' )->with( 'success', 'Update Successfully ... !' );
    }
	
	    public function packaging( $user_id, $order_product_id ) {
        $id = Auth::user()->id;
        $sql = "update oc_order_product set packaging=$user_id where order_product_id  = $order_product_id";

        DB::update( DB::raw( $sql ) );
        $response[ 'status' ] = 'success';
        return response()->json( $response );
    }
	
	
}
