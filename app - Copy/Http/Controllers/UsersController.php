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
         $manageusers = DB::table('users')->select('users.*','user_types.*','users.id as userID')->Join('user_types', 'user_types.id', '=', 'users.user_type_id')->where('users.user_type_id', '=',2)
         ->orderBy('users.id','Asc')->get();
     }else if(Auth::user()->user_type_id == 2){
        $manageusers = DB::table('users')->select('users.*','user_types.*','users.id as userID')->Join('user_types', 'user_types.id', '=', 'users.user_type_id')->where('users.shop_id', '=',$shop_id)
        ->orderBy('users.id','Asc')->get();

    }


            //$sql = "select * from user_types where "    
    if(Auth::user()->user_type_id == 1){
        $userrole = DB::table('user_types')->where('id','=',2)->get();

    }else if(Auth::user()->user_type_id == 2){
        $userrole = DB::table('user_types')->where('id','!=',1)->get();

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
               /* $email = trim($request->get('email'));
                $emailcheck = DB::table('users')->select('email')->where('email','=',$email)->get();

               if(count($emailcheck) > 0){
            return redirect('/users')->with('error', 'Email already used by another user');
        }else{*/
            $login_id =  Auth::user()->id;
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

            $shop_id = 0;
            if($user_type == 2){
                $shop_id =  $user_id;
            }
            if($user_type == 3){
                $shop_id =  $login_id;
            }
            $sql="update users set shop_id=$shop_id where id=$user_id";
            DB::update($sql);
			
            $sql = "SELECT * FROM user_types where id = $user_type";
		    $maicat = DB::select(DB::raw($sql));
			    $dashboard         = $maicat[0]->dashboard;
                $roles             = $maicat[0]->roles;
                $addrole           = $maicat[0]->addrole;
                $editrole          = $maicat[0]->editrole;
                $deleterole        = $maicat[0]->deleterole;
                $users             = $maicat[0]->users;
                $adduser           = $maicat[0]->adduser;
                $edituser          = $maicat[0]->edituser;
                $deleteuser        = $maicat[0]->deleteuser;
                $billing           = $maicat[0]->billing;

            DB::table('users')->where('id',$user_id)->update([
                'user_id'                   => $customers_id,
			    'dashboard'                 => $dashboard,
                'roles'                     => $roles,
                'addrole'                   => $addrole,
                'editrole'                  => $editrole,
                'deleterole'                => $deleterole,
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
        /******   Edit Users End ******/

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

         public function updateusertypepermissions(Request $request){
		    DB::table('user_type')->where('user_id',$request->user_id)->update([
                'dashboard'                  => $request->dashboard == null ? 0 : 1,
                'usertype'                   => $request->usertype == null ? 0 : 1,
                'addrusertype'               => $request->addrusertype == null ? 0 : 1,
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
		
		
}
