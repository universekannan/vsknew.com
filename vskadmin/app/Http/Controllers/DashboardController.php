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
use Carbon\Carbon;
use DateTime;
use Carbon\CarbonPeriod;
use PDF;
use DateInterval;


class DashboardController extends BaseController
{
	use AuthorizesRequests, DispatchesJobs, ValidatesRequests;

	public function dashboard(){
		

        $user_type_id =  Auth::user()->user_type_id;
    	$shop_id = Auth::user()->shop_id;
        $user_id = Auth::user()->id;
    	$Users=0;
    	$products=0;
    	$bill=0;
    	$purchase=0;
    	$stock=0;
    	$today=date("Y-m-d");
    	if($user_type_id =='1'){
			$sql="select count(*) as no_of_items from products";
		} else {
			//$sql="select count(*) as no_of_items from products where shop_id = $shop_id";

		    $sql = "select a.* ,b.* ,count(shop_id) as no_of_items from products a, stocks b  where a.product_id=b.product_id and b.shop_id = $shop_id";
			
		}

		$result = DB::select(DB::raw($sql));
		if(count($result) > 0){
		  $products = $result[0]->no_of_items;
		}

    	if($user_type_id =='1'){
			$sql="select count(*) as product_purchase from purchase where shop_id = '0'";
		} else {
			$sql="select count(*) as product_purchase from purchase where shop_id = $shop_id";
		}
		$result = DB::select(DB::raw($sql));
		if(count($result) > 0){
		  $purchase = $result[0]->product_purchase;
		}
		
		$sql="select count(*) as countUsers from users where id != '1'";
		$result = DB::select(DB::raw($sql));
		if(count($result) > 0){
		  $Users = $result[0]->countUsers;
		}
		
		$sql="select count(*) as no_of_items from order_management where order_date = '$today'";
		if($user_type_id != 1) $sql=$sql." and shop_id=$shop_id ";
		$result = DB::select(DB::raw($sql));
		if(count($result) > 0){
		  $bill = $result[0]->no_of_items;
		}

	
        $today = date("Y-m-d");
		$week = date('Y-m-d', strtotime('-7 days'));
		//$sql = "select a.date_added,b.firstname,count(*) as prd_cnt from products a,oc_user b  where a.vsk_user_id=b.user_id and a.date_added >= '$week' and a.date_added <= '$today' group by b.user_id,b.firstname	,date_added order by a.date_added desc";
		$sql = "select c.username,count(*) prd_cnt from products a,product_description b,oc_user c where a.product_id=b.product_id and a.vsk_user_id=c.user_id  group by c.username";


		//$users = DB::select($sql);
            //$users = DB::table( 'products' )->select( 'users.*')
            //->Join( 'users', 'users.id', '=', 'products.login_id' )
            //->orderBy( 'products.login_id', 'Asc' )->get();

    	if($user_type_id =='1'){
	        $PendingCount = DB::table( 'orders' )->where( 'order_status_id', '1')->count();
		} elseif ($user_type_id == '2'){
	        $PendingCount = DB::table( 'orders' )->where( 'order_status_id', '1')->count();
		} else {
	        $PendingCount = DB::table( 'order_management' )->where( 'order_status_id', '1')->where( 'user_id', $user_id)->count();
		}
		
		
		$order = array();
        $sql="select * from order_status where status = '1' and order_status_id !=1 order by order_status_id ";
        $result = DB::select($sql);
        $i=0;
        foreach($result as $res){
            $order_status_id = $res->order_status_id;
            $order_status_name = $res->name;
            $order[$i]["order_status_id"] = $order_status_id;
            $order[$i]["order_status_name"] = $order_status_name;
            $order[$i]["order_count"]  = 0;
            if($i%2 == 0)
                $order[$i]["color"]  = "bg-olive";
            else
                $order[$i]["color"]  = "bg-indigo";

    	if($user_type_id == '1' || $user_type_id == '2'){
            $sql2 = "select count(*) as order_count from orders where order_status_id = '$order_status_id' and order_id in (select order_id from order_management) order by order_id desc limit 1";

        } else {
			
            $sql2 = "select count(*) as order_count from orders where order_status_id = '$order_status_id' and order_id in (select order_id from order_management where user_id = $user_id and live != '0') order by order_id desc limit 1";
        }
            $result2 = DB::select($sql2);
            $order[$i]["order_count"] = $result2[0]->order_count;
            $i++;
        }
		
		return view("dashboard",compact('products','bill','purchase','Users','order','PendingCount'));
	}
}
