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
use Milon\Barcode\DNS1D;
use Milon\Barcode\DNS2D;


class ProductsController extends BaseController
{
  use AuthorizesRequests, DispatchesJobs, ValidatesRequests;

  public function managesupplier(){
    $managesupplier = DB::table('ph_supplier')->orderBy('id','Asc')->get();
    return view("pharmacy/products.supplier")->with('managesupplier',$managesupplier);
  }

  public function save_purchase(Request $request){
    $shop_id = Auth::user()->shop_id;
    $created_at = date("Y-m-d");
    $item_id = $request->item_id;
    $pqty = $request->pqty;
    $sql="select * from purchase where shop_id=$shop_id and item_id=$item_id and status=0";
    $result = DB::select(DB::raw($sql));
    if(count($result) > 0){
    }else{
      $sql = "insert into purchase (shop_id,item_id,pqty,created_at) values ($shop_id,$item_id,$pqty,'$created_at')";
      DB::insert($sql);
    }
  }

  public function cancel_purchase(Request $request){
    $pur_id = $request->pur_id;
    $sql="update purchase set status=2 where id=$pur_id";
    DB::update($sql);
  }

  public function barcodewith(){
    $sql = "select a.* from oc_product_description a,oc_product b where a.product_id=b.product_id and b.status=1 and bar_code is NOT NULL order by name";
    $products = DB::select(DB::raw($sql));
    return view("products.barcode",compact('products'));
  }

  public function barcodewithout(){
    $sql = "select a.* from oc_product_description a,oc_product b where a.product_id=b.product_id and b.status=1 and bar_code is NULL order by name";
    $products = DB::select(DB::raw($sql));
    return view("products.barcode",compact('products'));
  }

  public function save_barcode(Request $request){
    $product_id = $request->product_id;
    $bar_code = $request->bar_code;
    foreach ($product_id as $key => $pid) {
      $bcode = trim($bar_code[$key]);
      if($bcode != ""){
        $sql="update oc_product_description set bar_code='$bcode' where product_id=$pid";
        DB::update($sql);
      }else{
        $sql="update oc_product_description set bar_code=NULL where product_id=$pid";
        DB::update($sql);
      }
    }
    return redirect('/barcode');
  }

  public function approve_purchase(Request $request){
    $shop_id = Auth::user()->shop_id;
    $created_at = date("Y-m-d H:i:s");
    $item_id = $request->item_id;
    $pqty = $request->pqty;
    $pur_id = $request->pur_id;
    $created_at = date("Y-m-d");
    $sql="update purchase set status=1,created_at='$created_at' where id=$pur_id";
    DB::update($sql);
    $sql="select * from stock where shop_id=$shop_id and item_id=$item_id";
    $result = DB::select(DB::raw($sql));
    if(count($result) > 0){
      $sql="update stock set stock=stock+$pqty where shop_id=$shop_id and item_id=$item_id";
      DB::update($sql);
    }else{
      $sql = "insert into stock (shop_id,item_id,stock) values ($shop_id,$item_id,$pqty)";
      DB::insert($sql);
    }
    $sql="update oc_product set quantity=quantity+$pqty where product_id=$item_id";
    DB::update($sql);
  }

  public function purchase($shop_id){
    ///$shop_id = Auth::user()->shop_id;

    $user_type_id = Auth::user()->user_type_id;
    $sql = "select shop_id,shop_name from users order by id";
    if($user_type_id != 1){
      $sql = "select shop_id,shop_name from users where shop_id=$shop_id";
    }
    $shops = DB::select(DB::raw($sql));
    $sql = "select c.stock, a.product_id,a.minimum,a.model,a.price,b.name,b.bar_code from oc_product a,oc_product_description b,stock c where a.product_id=b.product_id and a.product_id=c.item_id and c.stock < a.minimum and a.status=1";
    $sql .= " union all ";
    $sql .= "select 0 as stock, a.product_id,a.minimum,a.model,a.price,b.name,b.bar_code from oc_product a,oc_product_description b where a.product_id=b.product_id and a.status=1 and a.product_id not in (select item_id from stock where shop_id=$shop_id)";
    $sql .= " order by product_id ";
    $manageproduct = DB::select(DB::raw($sql));
    
    /*$manageproduct1 = DB::table('oc_product')->select("oc_product.product_id", "oc_product.minimum", "oc_product.model", "oc_product.price", "oc_product_description.name", "oc_product_description.bar_code","stock.stock")
    ->join('oc_product_description', 'oc_product_description.product_id', '=', 'oc_product.product_id')
    ->join('stock', 'stock.item_id', '=', 'oc_product.product_id')
    ->where("stock.shop_id", "=", $shop_id)
    ->where("stock.stock", "<", "oc_product.minimum")
    ->where("oc_product.status", "=", 0)->get();
    dd($manageproduct1);
    DB::table("oc_product", "oc_product_description", "stock")
    ->select("stock.stock", "oc_product.product_id", "oc_product.minimum", "oc_product.model", "oc_product.price", "oc_product_description.name", "oc_product_description.bar_code")
    ->where("oc_product.product_id", "=", "oc_product_description.product_id")
    ->where("oc_product.product_id", "=", "c.item_id")
    ->where("stock.stock", "<", "oc_product.minimum")
    ->where("oc_product.status", "=", 1)
    ->union($manageproduct)
    ->get();*/
    
    $manageproduct = json_decode(json_encode($manageproduct),true);
    foreach($manageproduct as $key => $mp){
      $item_id = $mp["product_id"];
      $sql="select * from purchase where shop_id=$shop_id and item_id=$item_id";
      $res = DB::select(DB::raw($sql));
      $manageproduct[$key]["pending_purchase"] = 0; 
      if(count($res) > 0){
        $manageproduct[$key]["pending_purchase"] = 1;
      }
    }
    $manageproduct = json_decode(json_encode($manageproduct));
    return view("products.purchase")->with('manageproduct', $manageproduct)->with('shops', $shops)->with('shop_id', $shop_id);
  }

  public function approve($shop_id){
    $user_type_id = Auth::user()->user_type_id;
    $sql = "select shop_id,shop_name from users order by id";
    if($user_type_id != 1){
      $sql = "select shop_id,shop_name from users where shop_id=$shop_id";
    }
    $shops = DB::select(DB::raw($sql));
    $sql = "select *,c.id as pur_id from oc_product a,oc_product_description b,purchase c where a.product_id=b.product_id and c.shop_id=$shop_id and a.product_id=c.item_id and c.status=0 order by a.product_id";
    $manageproduct = DB::select(DB::raw($sql));
    $manageproduct = json_decode(json_encode($manageproduct),true);
    foreach($manageproduct as $key => $mp){
      $item_id = $mp["product_id"];
      $manageproduct[$key]["stock"] = 0;
      $sql="select * from stock where shop_id=$shop_id and item_id=$item_id";
      $res = DB::select(DB::raw($sql));
      if(count($res) > 0){
        $manageproduct[$key]["stock"] = $res[0]->stock;
      }
    }
    $manageproduct = json_decode(json_encode($manageproduct));
    return view("products.approve")->with('manageproduct', $manageproduct)->with('shops', $shops)->with('shop_id', $shop_id);
  }

  public function pending(){
    $shop_id = Auth::user()->shop_id;
    $sql = "select * from oc_product a,oc_product_description b,purchase c where a.product_id=b.product_id and c.shop_id=$shop_id and a.product_id=c.item_id and c.status=0 order by a.product_id";
    $manageproduct = DB::select(DB::raw($sql));
    foreach($manageproduct as $key => $mp){
      $item_id = $mp->product_id;
      $mp->stock = 0;
      $sql="select * from stock where shop_id=$shop_id and item_id=$item_id";
      $res = DB::select(DB::raw($sql));
      if(count($res) > 0){
        $mp->stock = $res[0]->stock;
      }
    }
    return view("products.pending")->with('manageproduct', $manageproduct);
  }

public function updatemoreinfo(Request $request){

   DB::table('oc_product')->where('product_id',$request->product_id)->update([
   'price'         =>   $request->price,
   'mrp'         =>   $request->mrp,
   'buying_price'         =>   $request->buying_price,
   'discount_price'              =>   $request->discount_price,
   'discount_price_min_weight'             =>   $request->discount_weight,
 ]);
  return redirect()->back(); 
}


  public function manageProducts(){
    $shop_id = Auth::user()->shop_id;
    $manageproduct = DB::table('oc_product')
    ->join('oc_product_description', 'oc_product.product_id', '=', 'oc_product_description.product_id')
    ->select('oc_product.*','oc_product_description.name','oc_product_description.bar_code')
    ->orderBy('oc_product.product_id','ASC')
    ->paginate(10);
    foreach($manageproduct as $key => $mp){
      $item_id = $mp->product_id;
      if(Auth::user()->user_type_id == 1){
        $sql="select * from purchase where item_id=$item_id and status=0";
      } else {
        $sql="select * from purchase where shop_id=$shop_id and item_id=$item_id and status=0";

      }

      $res = DB::select(DB::raw($sql));
      $mp->pending_purchase=0;
      if(count($res) > 0){
        $mp->pending_purchase=1;
      }
      $mp->stock = 0;
      $sql="select * from stock where shop_id=$shop_id and item_id=$item_id";
      $res = DB::select(DB::raw($sql));
      if(count($res) > 0){
        $mp->stock = $res[0]->stock;
      }
    }

    return view("products.index")->with('manageproduct', $manageproduct);
  }

  function fetch_data( Request $request ){
   $shop_id = Auth::user()->shop_id;
   if ( $request->ajax() ) {
    $query = $request->get( 'query' );
    $perpage = $request->get( 'perpage' );
    $sortby = $request->get( 'sortby' );
    $sortorder = $request->get( 'sortorder' );
    $query = str_replace( ' ', '%', $query );

    $manageproduct = DB::table('oc_product')
    ->join('oc_product_description', 'oc_product.product_id', '=', 'oc_product_description.product_id')
    ->select('oc_product.*','oc_product_description.name','oc_product_description.bar_code')
    ->where( 'oc_product_description.name', 'like', '%'.$query.'%' )
    ->orWhere( 'oc_product_description.bar_code', 'like', '%'.$query.'%' )
    ->orderBy('oc_product.product_id' , $sortorder)
    ->paginate( $perpage );
    foreach($manageproduct as $key => $mp){
      $item_id = $mp->product_id;
      if(Auth::user()->user_type_id == 1){
        $sql="select * from purchase where item_id=$item_id and status=0";
      } else {
        $sql="select * from purchase where shop_id=$shop_id and item_id=$item_id and status=0";
      }

      $res = DB::select(DB::raw($sql));
      $mp->pending_purchase=0;
      if(count($res) > 0){
        $mp->pending_purchase=1;
      }
      $mp->stock = 0;
      $sql="select * from stock where shop_id=$shop_id and item_id=$item_id";
      $res = DB::select(DB::raw($sql));
      if(count($res) > 0){
        $mp->stock = $res[0]->stock;
      }
    }
    return view( 'products/productpaginate', compact( 'manageproduct' ))->render();
  }
}

public function manageBanner($id){
  $customPaper = array(0,0,500,850);
  $shop_id = Auth::user()->shop_id;
  $managebanner = DB::table('oc_product')->select('oc_product.*','oc_product_description.*','oc_product.product_id as productid')
  ->Join('oc_product_description', 'oc_product_description.product_id', '=', 'oc_product.product_id')->where('oc_product.product_id', '=',$id)->orderBy('oc_product.product_id','Asc')->get();

  $pdf = PDF::loadView("products/banner",compact('managebanner'))->setPaper($customPaper, 'portrait');
  $path ="uploads".DIRECTORY_SEPARATOR."productpdf".DIRECTORY_SEPARATOR.$id.".pdf";
  return $pdf->download($id.".pdf");  
  return response()->file($path);

  //return view("products.banner")->with('managebanner', $managebanner);
}

public function generateBarcode($id){
  $random = rand('11','99');
  $barcode = $random."".time();
  $sql="update oc_product_description set bar_code='$barcode' where product_id=$id";
  DB::update($sql);

 return redirect()->back()->with('success','Barcode Updated Successfully');

}


public function printBarcode($id,$count){
  $customPaper = array(0,0,500,850);

  $products = DB::table('oc_product')->select('oc_product.*','oc_product_description.*','oc_product.product_id as productid')
  ->Join('oc_product_description', 'oc_product_description.product_id', '=', 'oc_product.product_id')->where('oc_product.product_id', '=',$id)->orderBy('oc_product.product_id','Asc')->get();
  return view('products.generatebarcode')->with('products',$products)->with('count',$count);
  
  $pdf = PDF::loadView("products/generatebarcode",compact('products'))->setPaper($customPaper, 'portrait');
  $path ="uploads".DIRECTORY_SEPARATOR."productpdf".DIRECTORY_SEPARATOR.$id.".pdf";
  return $pdf->download($id.".pdf");  
  return response()->file($path);

}





public function addProduct(Request $request){

  $addproduct = DB::table('ph_products')->insert([
   'product_code'	        =>   $request->product_code,
   'product_name'	        =>   $request->product_name,
   'category_id'	            =>   $request->category_id,
   'generic_id'	            =>   $request->generic_id,
   'company_id'              =>   $request->company_id,
   'supplier_id'             =>   $request->supplier_id,
   'mini_order_qty'          =>   $request->mini_order_qty,
   'location_id'             =>   $request->location_id,	
   'packing_id'	            =>   $request->packing_id,
   'packing_qty'	            =>   $request->packing_qty,
   'max_dosage'	            =>   $request->max_dosage,
   'dosage_per_kg'	        =>   $request->dosage_per_kg,
   'food_interaction'		=>   $request->food_interaction, 
   'sgst'                    =>   $request->sgst,
   'cgst'                    =>   $request->cgst,
   'hsn_code'                =>   $request->hsn_code,
   'created_at'	            =>	 date('Y-m-d H:i:s'),
 ]);
                //Print_r($addproduct);die();

  return redirect()->back(); 
}


public function editProduct(Request $request){

  $editProduct = DB::table('ph_products')->where('id',$request->id)->update([

   'product_code'	        =>   $request->product_code,
   'product_name'	        =>   $request->product_name,
   'category_id'	            =>   $request->category_id,
   'generic_id'	            =>   $request->generic_id,
   'company_id'              =>   $request->company_id,
   'supplier_id'             =>   $request->supplier_id,
   'mini_order_qty'          =>   $request->mini_order_qty,
   'location_id'             =>   $request->location_id,	
   'packing_id'	            =>   $request->packing_id,
   'packing_qty'	            =>   $request->packing_qty,
   'max_dosage'	            =>   $request->max_dosage,
   'dosage_per_kg'	        =>   $request->dosage_per_kg,
   'food_interaction'		=>   $request->food_interaction, 
   'sgst'                    =>   $request->sgst,
   'cgst'                    =>   $request->cgst,
   'hsn_code'                =>   $request->hsn_code,
   'created_at'	            =>	 date('Y-m-d H:i:s'),
 ]);
  return redirect()->back(); 
}


public function Order(Request $request){

  $Order = DB::table('order')->insert([
    'product_id'	        =>   $request->product_id,
    'mini_order_qty'        =>   $request->mini_order_qty,
    'max_order_qty'         =>   $request->max_order_qty,
    'order_qty'             =>   $request->order_qty,
    'status'                =>   "ordered",
    'order_date'            =>   date('Y-m-d H:i:s'),
  ]);
  return redirect()->back(); 
} 

public function Stock(Request $request){


  $qty = $request->input('qty');
  $reac = $request->input('reac');

  $calculated = $qty + $reac;    
          //dd($calculated);

  $Stock = DB::table('order')->where('product_id',$request->product_id)->update([
    'status'                =>   "received",
  ]);

  $product = DB::table('oc_product')->where('product_id',$request->product_id)->update([
    'quantity'                =>  $calculated,
  ]);

  return redirect()->back(); 
}

/******   Edit Order End ******/

public function addSupplier(Request $request){

  $addSupplier = DB::table('supplier')->insert([
    'supplier_name'	         =>   $request->supplier_name,
    'contact'                =>   $request->contact,
    'address'                =>   $request->address,
  ]);
  return redirect()->back(); 
}

public function editSupplier(Request $request){

  $editSupplier = DB::table('supplier')->where('id',$request->id)->update([

    'supplier_name'	        =>   $request->supplier_name,
    'contact'	            =>   $request->contact,
    'address'	            =>   $request->address,
  ]);
  return redirect()->back(); 
}

/******    Delete Users  Start ******/

public function deleteUser(Request $request){

  $deluser = DB::table('users')->where('id',$request->id)->delete();
  return redirect()->back(); 

}

/******   Delete Users  End ******/

/******   Delete Patients  Start ******/
public function managePatients(){
  $managepatients = DB::table('users')
  ->Join('patient_disease', 'patient_disease.id', '=', 'users.disease_id')
  ->where('users.role_id', '=','2')->get();
  return view("patients.index")->with('managepatients', $managepatients);

}
/******   Delete Patients  End ******/
/******    Sorting Users  Start ******/

public function planSorting(Request $request)
{
  $array  = $request->arrayorder;
     //Print_r($array);die();
  if($request->update == "update")
  {
    $count = 1;

    foreach ($array as $idval)
    {
             //$data=array('sort_order'=> $count);
     $sortPlan = DB::table('manage_plan')->where('id',$idval)->update(['sort_order' =>   $count]);
     $count ++;
   }
 }

 echo 'Manage Plan Order Change Successfully....!';
}

public function manageNewSales(Request $request)
{
}

}
