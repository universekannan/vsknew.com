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
use Illuminate\Support\Facades\Hash;

use Exception;
use App\Models\Core\Images;
use Validator;
use Auth;
use ZipArchive;
use File;
use PDF;
use SimpleSoftwareIO\QrCode\Facades\QrCode;


class PermissionsController extends BaseController
{
    use AuthorizesRequests, DispatchesJobs, ValidatesRequests;
		
        
/******   Manage Users  Start ******/
		
         public function manageusers(){
			 
            if(Auth::user()->user_type == 1){
            $userrole = DB::table('user_types')->where('id', '2' )->orderBy('id','Asc')->get();
            } else { 
            $userrole = DB::table('user_types')->where('id', '!=', '1' )->where('id', '!=', '2')->orderBy('id','Asc')->get();
            }
						
            return view("users.permissions")->with('userrole', $userrole) ;
        }
		
/******   Manage Users End ******/

        public function addRoles(Request $request){
                $dashboard                 = $request->dashboard == null ? 0 : 1;
                $users                     = $request->users == null ? 0 : 1;
                $adduser                   = $request->adduser == null ? 0 : 1;
                $edituser                  = $request->edituser == null ? 0 : 1;
                $deleteuser                = $request->deleteuser == null ? 0 : 1;
                $usertype                  = $request->usertype == null ? 0 : 1;
                $addusertype               = $request->addusertype == null ? 0 : 1;
                $editusertype              = $request->editusertype == null ? 0 : 1;
                $deleteusertype            = $request->deleteusertype == null ? 0 : 1;
                $billing                   = $request->billing == null ? 0 : 1;

		   $addroles = DB::table('user_types')->insertGetId([
		        'dashboard'                 => $dashboard,
                'users'                     => $users,
                'adduser'                   => $adduser,
                'edituser'                  => $edituser,
                'deleteuser'                => $deleteuser,
                'usertype'                  => $usertype,
                'addusertype'               => $addusertype,
                'editusertype'              => $editusertype,
                'deleteusertype'            => $deleteusertype,
                'billing'                   => $billing,
		     ]);
            return redirect()->back();
        }
		
        public function edit_user_type(Request $request){
                $dashboard                 = $request->dashboard == null ? 0 : 1;
                $users                     = $request->users == null ? 0 : 1;
                $adduser                   = $request->adduser == null ? 0 : 1;
                $edituser                  = $request->edituser == null ? 0 : 1;
                $deleteuser                = $request->deleteuser == null ? 0 : 1;
                $usertype                  = $request->usertype == null ? 0 : 1;
                $addusertype               = $request->addusertype == null ? 0 : 1;
                $editusertype              = $request->editusertype == null ? 0 : 1;
                $deleteusertype            = $request->deleteusertype == null ? 0 : 1;
                $billing                   = $request->billing == null ? 0 : 1;

		   $addroles = DB::table('user_types')->where('id',$request->row_id)->update([
		        'dashboard'                 => $dashboard,
                'users'                     => $users,
                'adduser'                   => $adduser,
                'edituser'                  => $edituser,
                'deleteuser'                => $deleteuser,
                'usertype'                  => $usertype,
                'addusertype'               => $addusertype,
                'editusertype'              => $editusertype,
                'deleteusertype'            => $deleteusertype,
                'billing'                   => $billing,
		     ]);
            return redirect()->back();
        }
}
