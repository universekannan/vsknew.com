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
use Illuminate\Support\Facades\Input;
use Exception;
use App\Models\Core\Images;
use Validator;
use Hash;
use Auth;
use ZipArchive;
use File;
use Carbon\Carbon;

class UsersController extends BaseController
{
    use AuthorizesRequests, DispatchesJobs, ValidatesRequests;

    /****** View  Roles Start ******/

    public function manageUsers(){
        $shop_id = Auth::user()->shop_id;
        $shop_name = Auth::user()->shop_name;
        if(Auth::user()->user_type_id == 1){
         $manageusers = DB::table('users')->select('users.*','user_types.*','users.id as userID','users.status as userstatus')->Join('user_types', 'user_types.id', '=', 'users.user_type_id')->where('users.user_type_id', '=',2)
         ->orderBy('users.id','Asc')->get();
     }else if(Auth::user()->user_type_id == 2){
        $manageusers = DB::table('users')->select('users.*','user_types.*','users.id as userID','users.status as userstatus')->Join('user_types', 'user_types.id', '=', 'users.user_type_id')->where('users.shop_id', '=',$shop_id)->orderBy('users.id','Asc')->get();
    }


            //$sql = "select * from user_types where "    
    if(Auth::user()->user_type_id == 1){
        $userrole = DB::table('user_types')->where('id','=',2)->get();

    }else if(Auth::user()->user_type_id == 2){
        $userrole = DB::table('user_types')->where('id','!=',1)->where('id','!=',2)->get();

    }    


    return view("users.index",compact('shop_name'))->with('manageusers',$manageusers)->with('userrole', $userrole);

    }

	/******   View Roles  end ******/

	public function usersAttendance($id){
		$attendance = DB::table('attendances')->select('attendances.*','users.*','attendances.id as userID')
		->Join('users', 'users.id', '=', 'attendances.user_id')
		->orderBy('attendances.id','Asc')->get();
		return view("users.attendance")->with('attendance', $attendance);
	}

	/****** Add  Roles Action Start ******/

	public function addUser(Request $request){
		  
		$login_id =  Auth::user()->id;
		$shop_id =  Auth::user()->shop_id;
		$user_type = $request->user_type_id;
		$user_id = DB::table('users')->insertGetId([
			'full_name'		 		    =>   $request->first_name.' '.$request->last_name,
			'first_name'		 		=>   $request->first_name,
			'last_name'			 		=>   $request->last_name,
			'mobile_number'	 			=>	 $request->mobile_number,
			'email'                     =>   $request->email,
			'shop_name'                 =>   $request->shop_name,
			'login_id'                  =>   $login_id,
			'password'		 			=>   Hash::make($request->password),
			'cpassword'		        	=>   $request->password,
			'gender'                    =>   $request->gender,
			'address'                   =>   $request->address,
			'created_at'                =>   date('Y-m-d H:i:s'),
			'user_type_id'			    =>	 $request->user_type_id
		]);

		if($user_type == 2){
			$shop_id =  $user_id;
		} else { 
			$shop_id =  $shop_id;
		}

		$sql = "SELECT * FROM user_types where id = $user_type";
		$maicat = DB::select(DB::raw($sql));
			$dashboard         = $maicat[0]->dashboard;
			$usertype	       = $maicat[0]->usertype;
			$addusertype	   = $maicat[0]->addusertype;
			$editusertype	   = $maicat[0]->editusertype;
			$deleteusertype	   = $maicat[0]->deleteusertype;
			$users             = $maicat[0]->users;
			$adduser           = $maicat[0]->adduser;
			$edituser          = $maicat[0]->edituser;
			$deleteuser        = $maicat[0]->deleteuser;
			$billing           = $maicat[0]->billing;

		DB::table('users')->where('id',$user_id)->update([
			'shop_id'                   => $shop_id,
			'dashboard'                 => $dashboard,
			'usertype'                  => $usertype,
			'addusertype'               => $addusertype,
			'editusertype'              => $editusertype,
			'deleteusertype'            => $deleteusertype,
			'users'                     => $users,
			'adduser'                   => $adduser,
			'edituser'                  => $edituser,
			'deleteuser'                => $deleteuser,
			'billing'                   => $billing,
			]);
            return redirect('/users')->with('success', 'Users Created Successfully');
    }

        /****** Edit  Roles Start ******/

	public function editUser(Request $request){

		$edituser = DB::table('users')->where('id',$request->id)->update([
			'full_name'                 =>   $request->first_name.' '.$request->last_name,
			'first_name'                =>   $request->first_name,
			'last_name'                 =>   $request->last_name,
			'mobile_number'             =>   $request->mobile_number,
			'email'                     =>   $request->email,
			'shop_name'                 =>   $request->shop_name,
			'gender'                    =>   $request->gender,
			'address'                   =>   $request->address,
			'status'                    =>   $request->status,
			'created_at'                =>   date('Y-m-d H:i:s'),
			'user_type_id'              =>   $request->user_type_id
			
		]);
						//Print_r($edituser);die();

		return redirect('/users')->with('success', 'Users Updated Successfully'); 
	}

	public function checkemail(Request $request){
		$email = trim($request->get('email'));
		$id = trim($request->get('id'));
		if($id == 0){
			$sql = "SELECT * FROM users where email='$email'";
		}else{
			$sql = "SELECT * FROM users where email='$email' and id <> $id";
		}
		$emailcheck = DB::select(DB::raw($sql));
		if(count($emailcheck) > 0){
			return response()->json(array("exists" => true));
		}else{
			return response()->json(array("exists" => false));   
		}
	}


	 public function followup($id){
		$orderproducts = DB::table('oc_order_product')->where( 'order_id', $orderid)->get();
		$userid = Auth::user()->id;
	  if(Auth::user()->user_type_id == 3){
		$users = DB::table('users')->where( 'id', $userid)->get();
	  } else{
		$users = DB::table('users')->where( 'shop_id', Auth::user()->shop_id)->get();
	  }
		$followup = DB::table('oc_order')->where( 'order_id', $orderid)->first();
		$orderstatusid = $orderstatus->order_status_id;
		$ordertotal = $orderstatus->total;
		$order_status = DB::table('oc_order_status')->get();

	 return view('users.followup', compact( 'followup') );
	} 

	public function check_email(Request $request)
	{
		$email = $request->query('email');
		$user = DB::table('users')->where('email', $email)->first();

		if ($user) {
			return response()->json(['exists' => true, 'message' => 'Email already exists']);
		} else {
			return response()->json(['exists' => false, 'message' => 'Email is available']);
		}
	}

	public function usertype(){
		$usertype = DB::table('user_type')->get();
	 return view('users.user_type', compact( 'usertype') );
	}

	 public function edit_user_permissions(Request $request){
		 //Print_r($request->user_id);die;
		DB::table('users')->where('id',$request->user_id)->update([
			'dashboard'                  => $request->dashboard == null ? 0 : 1,
			'usertype'                   => $request->usertype == null ? 0 : 1,
			'addusertype'                => $request->addusertype == null ? 0 : 1,
			'editusertype'               => $request->editusertype == null ? 0 : 1,
			'deleteusertype'             => $request->deleteusertype == null ? 0 : 1,
			'users'                      => $request->users == null ? 0 : 1,
			'adduser'                    => $request->adduser == null ? 0 : 1,
			'edituser'                   => $request->edituser == null ? 0 : 1,
			'deleteuser'                 => $request->deleteuser == null ? 0 : 1,
			'billing'                    => $request->billing == null ? 0 : 1,
	]);
			return redirect()->back()->with( 'success', 'User Type Updated Successfully ... !' );
	} 
	
	
	public function changepassword(){
		 
		return view("users.changepassword");
		}


		public function updatepassword(Request $request){
			$user_id=Auth::user()->id;
			$oldpassword = $request->oldpassword;
			$new_password = $request->new_password;
			$conf_password = trim($request->confirm_password);
			$sql = "select * from users where cpassword = '$oldpassword' and id=$user_id";
			$result = DB::select(DB::raw($sql));
			if(count($result) > 0){
				if($new_password != $conf_password){
					return redirect("/changepassword")->with('error', 'Passwords does not match');
				}else{
					$password = Hash::make($new_password);
					$sql="update users set password='$password',cpassword='$new_password' where id=$user_id";
					DB::update($sql);
					return redirect("/changepassword")->with('success', 'Password changed successfully');
				}
			}else{
				return redirect("/changepassword")->with('error', 'Incorrect old password');
			}
		}

		public function bgdark( $colour ) {
			$id = Auth::user()->id;
			$sql = "update users set colour=$colour where id = $id";
	
			DB::update( DB::raw( $sql ) );
			$response[ 'status' ] = 'success';
			return response()->json( $response );
		}

		public function location(){
			$location = DB::table('location')->get();
			return view("location")->with('location', $location);
		}

		public function add_location(Request $request){
		  
			$location = DB::table('location')->insertGetId([
				'PostOfficeName'		=>   $request->postoffice_name,
				'Pincode'		 		=>   $request->pincode,
				'City'			 		=>   $request->city,
				'District'	 			=>	 $request->district,
				'State'                 =>   $request->state,
			]);

            return redirect()->back()->with('success', 'Location Created Successfully');
    	}

		public function update_location(Request $request)
		{
			DB::table('location')
				->where('id', $request->id)
				->update([
					'PostOfficeName' => $request->postoffice_name,
					'Pincode'        => $request->pincode,
					'City'           => $request->city,
					'District'       => $request->district,
					'State'          => $request->state,
				]);

			return redirect()->back()->with('success', 'Location updated successfully!');
		}

	
}
