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
	public function manageProducts()
	{
		$manageproduct = DB::table('products')
			->join('product_description', 'products.product_id', '=', 'product_description.product_id')
			->select('products.*', 'product_description.name', 'product_description.bar_code')
			->orderBy('products.product_id', 'ASC')
			->paginate(10);
	
		$category = DB::table('categorys')
			->where('status', 1)
			->where('parent_id', 0)
			->orderBy('id')
			->get();
	
		$sub_category = collect(); 
		$cat_id = 0;
		$sub_cat_id = 0;
		$product = null; 
	
		if ($manageproduct->count() > 0) {
			$firstProduct = $manageproduct[0];
			$product = DB::table('products')->where('product_id', $firstProduct->product_id)->first();
	
			if ($product) {
				$sub_cat_id = $product->category_id;
	
				$maicat = DB::table('categorys')
					->select('parent_id')
					->where('id', $sub_cat_id)
					->first();
	
				if ($maicat) {
					$cat_id = $maicat->parent_id;
				}
	
				$sub_category = DB::table('categorys')
					->where('status', 1)
					->where('parent_id', $cat_id)
					->orderBy('category_name')
					->get();
			}
		}
	
		return view('products.index', compact('manageproduct','category','sub_category','cat_id','sub_cat_id','product'));
	}

	public function getSubcategories($catId)
	{
		$subcategories = DB::table('categorys')->where('parent_id', $catId)->get();
		return response()->json($subcategories);
	}


	public function updateproduct(Request $request)
	{

		DB::table('products')->where('product_id', $request->product_id)->update([
			'product_name'               => $request->product_name,
			'category_id'                => $request->sub_cat_id,
			'description'                => $request->description,
			'short_description'          => $request->short_description,
			'price'                      => $request->price,
			'mrp'                        => $request->mrp,
			'buying_price'               => $request->buying_price,
			'discount_price'             => $request->discount_price,
			'discount_price_min_weight'  => $request->weight,
			'status'                     => $request->status,
			'date_modified'              =>now(),
		]);
		
	 return redirect()->back()->with('success', 'Product updated successfully!');
	}
	
	public function generateBarcode($id){
	  $random = rand('11','99');
	  $barcode = $random."".time();
	  $sql="update product_description set bar_code='$barcode' where product_id=$id";
	  DB::update($sql);

	 return redirect()->back()->with('success','Barcode Updated Successfully');
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	


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
		$sql = "select a.* from product_description a,products b where a.product_id=b.product_id and b.status=1 and bar_code is NOT NULL order by name";
		$products = DB::select(DB::raw($sql));
		return view("products.barcode",compact('products'));
	}

	public function barcodewithout(){
		$sql = "select a.* from product_description a,products b where a.product_id=b.product_id and b.status=1 and bar_code is NULL order by name";
		$products = DB::select(DB::raw($sql));
		return view("products.barcode",compact('products'));
	}

	public function save_barcode(Request $request){
		$product_id = $request->product_id;
		$bar_code = $request->bar_code;
		foreach ($product_id as $key => $pid) {
		  $bcode = trim($bar_code[$key]);
		  if($bcode != ""){
			$sql="update product_description set bar_code='$bcode' where product_id=$pid";
			DB::update($sql);
		  }else{
			$sql="update product_description set bar_code=NULL where product_id=$pid";
			DB::update($sql);
		  }
		}
		return redirect('/barcode');
	}

	public function approve_purchase(Request $request)
	{
		$shop_id = Auth::user()->shop_id;
		$item_id = $request->item_id;
		$pqty    = $request->pqty;
		$pur_id  = $request->pur_id;
		$created_at = now(); 
	
		// ✅ Update purchase status
		DB::table('purchase')
			->where('id', $pur_id)
			->update([
				'status' => 1,
				'created_at' => $created_at,
			]);
	
		// ✅ Check if stock exists
		$stockExists = DB::table('stocks')
			->where('shop_id', $shop_id)
			->where('product_id', $item_id)
			->exists();
	
		if ($stockExists) {
			// Update existing stock
			DB::table('stocks')
				->where('shop_id', $shop_id)
				->where('product_id', $item_id)
				->increment('stock', $pqty);
		} else {
			// Insert new stock
			DB::table('stocks')->insert([
				'shop_id' => $shop_id,
				'product_id' => $item_id,
				'stock'   => $pqty,
			]);
		}
	
		// ✅ Update product quantity
		DB::table('products')
			->where('product_id', $item_id)
			->increment('quantity', $pqty);
	
		return response()->json(['success' => true, 'message' => 'Purchase approved successfully']);
	}
	
	public function purchase(){
		$user = Auth::user();
			$shop_id = $user->shop_id;
			$user_type = $user->user_type_id;

			// Step 1: Get all active products with name/bar_code
			$manageproduct = DB::table('products')
				->where('status', 1)
				->get();

			// Step 2: Loop through each product and check if it needs purchasing
			foreach ($manageproduct as $product) {
				$product_id = $product->product_id;

				$stock = DB::table('stocks')
					->where('shop_id', $shop_id)
					->where('product_id', $product_id)
					->first();

				if ($stock && $stock->stock < $product->minimum) {
					$product->pending_purchase = 1;
					$product->minimum = $stock->stock;
				} else {
					$product->pending_purchase = 0;
					if ($user_type != 1) {
						$product->minimum = 0; // only for non-admin
					}
				}
			}

			// Step 3: Get list of shops
			$shops = DB::table('users')
				->select('shop_id', 'shop_name')
				->when($user_type != 1, fn($q) => $q->where('shop_id', $shop_id))
				->groupBy('shop_id')
				->get();
		
		
		/*$manageproduct1 = DB::table('products')->select("products.product_id", "products.minimum", "products.model", "products.price", "product_description.name", "product_description.bar_code","stock.stock")
		->join('product_description', 'product_description.product_id', '=', 'products.product_id')
		->join('stock', 'stock.item_id', '=', 'products.product_id')
		->where("stock.shop_id", "=", $shop_id)
		->where("stock.stock", "<", "products.minimum")
		->where("products.status", "=", 0)->get();
		dd($manageproduct1);
		DB::table("products", "product_description", "stock")
		->select("stock.stock", "products.product_id", "products.minimum", "products.model", "products.price", "product_description.name", "product_description.bar_code")
		->where("products.product_id", "=", "product_description.product_id")
		->where("products.product_id", "=", "c.item_id")
		->where("stock.stock", "<", "products.minimum")
		->where("products.status", "=", 1)
		->union($manageproduct)
		->get();*/
		
		return view("products.purchase")->with('manageproduct', $manageproduct)->with('shops', $shops)->with('shop_id', $shop_id);
	}

	public function approve($shop_id)
	{
		$user_type_id = Auth::user()->user_type_id;

		// Get shops
		$shopsQuery = DB::table('users')
			->select('shop_id', 'shop_name')
			->groupBy('shop_id', 'shop_name');

		if ($user_type_id != 1) {
			$shopsQuery->where('shop_id', $shop_id);
		} 

		$shops = $shopsQuery->get();

		// Get manage products
		$manageproduct = DB::table('products')
			->join('purchase', function ($join) use ($shop_id) {
				$join->on('products.product_id', '=', 'purchase.item_id')
					->where('purchase.shop_id', '=', $shop_id)
					->where('purchase.status', '=', 0);
			})
			->select('products.*', 'purchase.*', 'purchase.id as pur_id')
			->orderBy('products.product_id')
			->get();

		// Attach stock info
		$manageproduct = $manageproduct->map(function ($mp) use ($shop_id) {
			$stock = DB::table('stocks')
				->where('shop_id', $shop_id)
				->where('product_id', $mp->product_id)
				->value('total_stock') ?? 0;

			$mp->stock = $stock;
			return $mp;
		});

		return view('products.approve', [
			'manageproduct' => $manageproduct,
			'shops' => $shops,
			'shop_id' => $shop_id
		]);
	}

	public function pending(){
		$shop_id = Auth::user()->shop_id;
		$sql = "select * from products a,product_description b,purchase c where a.product_id=b.product_id and c.shop_id=$shop_id and a.product_id=c.item_id and c.status=0 order by a.product_id";
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


	public function fetch_data(Request $request)
	{
		$shop_id = Auth::user()->shop_id;
		$user_type = Auth::user()->user_type_id;

		if ($request->ajax()) {
			$query = str_replace(' ', '%', $request->get('query', ''));
			$perpage = $request->get('perpage', 10);
			$sortby = $request->get('sortby', 'product_id');
			$sortorder = $request->get('sortorder', 'ASC');

			$manageproduct = DB::table('products')
				->join('product_description', 'products.product_id', '=', 'product_description.product_id')
				->select('products.*', 'product_description.name', 'product_description.bar_code')
				->where(function ($q) use ($query) {
					$q->where('product_description.name', 'like', "%$query%")
					->orWhere('product_description.bar_code', 'like', "%$query%");
				})
				->orderBy("products.$sortby", $sortorder)
				->paginate($perpage);

			foreach ($manageproduct as $product) {
				$product_id = $product->product_id;

				// Check for pending purchases
				$purchaseQuery = DB::table('purchase')
					->where('item_id', $product_id)
					->where('status', 0);

				if ($user_type != 1) {
					$purchaseQuery->where('shop_id', $shop_id);
				}

				$product->pending_purchase = $purchaseQuery->exists() ? 1 : 0;

				// Fetch stock for current shop
				$product->stock = DB::table('stock')
					->where('shop_id', $shop_id)
					->where('item_id', $product_id)
					->value('stock') ?? 0;
			}

			return view('products.productpaginate', compact('manageproduct'))->render();
		}
	}

	public function manageBanner($id){
	  $customPaper = array(0,0,500,850);
	  $shop_id = Auth::user()->shop_id;
	  $managebanner = DB::table('products')->select('products.*','product_description.*','products.product_id as productid')
	  ->Join('product_description', 'product_description.product_id', '=', 'products.product_id')->where('products.product_id', '=',$id)->orderBy('products.product_id','Asc')->get();

	  $pdf = PDF::loadView("products/banner",compact('managebanner'))->setPaper($customPaper, 'portrait');
	  $path ="uploads".DIRECTORY_SEPARATOR."productpdf".DIRECTORY_SEPARATOR.$id.".pdf";
	  return $pdf->download($id.".pdf");  
	  return response()->file($path);
	  //return view("products.banner")->with('managebanner', $managebanner);
	}



	public function printBarcode($id,$count){
	  $customPaper = array(0,0,500,850);

	  $products = DB::table('products')->select('products.*','product_description.*','products.product_id as productid')
	  ->Join('product_description', 'product_description.product_id', '=', 'products.product_id')->where('products.product_id', '=',$id)->orderBy('products.product_id','Asc')->get();
	  return view('products.generatebarcode')->with('products',$products)->with('count',$count);
	  
	  $pdf = PDF::loadView("products/generatebarcode",compact('products'))->setPaper($customPaper, 'portrait');
	  $path ="uploads".DIRECTORY_SEPARATOR."productpdf".DIRECTORY_SEPARATOR.$id.".pdf";
	  return $pdf->download($id.".pdf");  
	  return response()->file($path);

	}

	public function addProduct(Request $request){
	  $addproduct = DB::table('ph_products')->insert([
	   'product_code'	   =>   $request->product_code,
	   'product_name'	   =>   $request->product_name,
	   'category_id'	   =>   $request->category_id,
	   'generic_id'	       =>   $request->generic_id,
	   'company_id'        =>   $request->company_id,
	   'supplier_id'       =>   $request->supplier_id,
	   'mini_order_qty'    =>   $request->mini_order_qty,
	   'location_id'       =>   $request->location_id,	
	   'packing_id'	       =>   $request->packing_id,
	   'packing_qty'	   =>   $request->packing_qty,
	   'max_dosage'	       =>   $request->max_dosage,
	   'dosage_per_kg'     =>   $request->dosage_per_kg,
	   'food_interaction'  =>   $request->food_interaction, 
	   'sgst'              =>   $request->sgst,
	   'cgst'              =>   $request->cgst,
	   'hsn_code'          =>   $request->hsn_code,
	   'created_at'	       =>	date('Y-m-d H:i:s'),
	 ]);
					//Print_r($addproduct);die();

	  return redirect()->back(); 
	}


	public function editProduct(Request $request){

	  $editProduct = DB::table('ph_products')->where('id',$request->id)->update([

	   'product_code'	     =>   $request->product_code,
	   'product_name'	     =>   $request->product_name,
	   'category_id'	     =>   $request->category_id,
	   'generic_id'	         =>   $request->generic_id,
	   'company_id'          =>   $request->company_id,
	   'supplier_id'         =>   $request->supplier_id,
	   'mini_order_qty'      =>   $request->mini_order_qty,
	   'location_id'         =>   $request->location_id,	
	   'packing_id'	         =>   $request->packing_id,
	   'packing_qty'	     =>   $request->packing_qty,
	   'max_dosage'	         =>   $request->max_dosage,
	   'dosage_per_kg'	     =>   $request->dosage_per_kg,
	   'food_interaction'    =>   $request->food_interaction, 
	   'sgst'                =>   $request->sgst,
	   'cgst'                =>   $request->cgst,
	   'hsn_code'            =>   $request->hsn_code,
	   'created_at'	         =>	  date('Y-m-d H:i:s'),
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

	  $product = DB::table('products')->where('product_id',$request->product_id)->update([
		'quantity'                =>  $calculated,
	  ]);

	  return redirect()->back(); 
	}

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

	public function deleteUser(Request $request){
	  $deluser = DB::table('users')->where('id',$request->id)->delete();
	  return redirect()->back(); 
	}

	public function managePatients(){
	  $managepatients = DB::table('users')
	  ->Join('patient_disease', 'patient_disease.id', '=', 'users.disease_id')
	  ->where('users.role_id', '=','2')->get();
	  return view("patients.index")->with('managepatients', $managepatients);
	}

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



public function low_stock(){
    $user = Auth::user();
    $shop_id = $user->shop_id;
    $user_type = $user->user_type_id;

    $manageproduct = DB::table('stocks')->where('shop_id', $shop_id)->get();

    $filteredProducts = [];

    foreach ($manageproduct as $product) {
        $product_id = $product->product_id;

        $stock = DB::table('products')
            ->select('products.product_id', 'products.quantity', 'products.minimum', 'products.model', 'products.price', 'product_description.name', 'product_description.bar_code')
            ->Join( 'product_description', 'product_description.product_id', '=', 'products.product_id' )
            ->where('products.status', 1)
            ->where('products.product_id', $product_id)
            ->first();

        if ($stock) {
            if ($stock->quantity <= $stock->minimum) {
                $product->pending_purchase = 1;
                $product->minimum = $stock->minimum;
                $product->name = $stock->name;
                $product->model = $stock->model;
                $product->price = $stock->price;
                $product->bar_code = $stock->bar_code;
                $product->quantity = $stock->quantity;

                $filteredProducts[] = $product;
            }
        } else {
            // Optional: log unmatched item_id
            // Log::info("No product found for item_id: $product_id");
        }
    }

    return view("products.low_stock", [
        'manageproduct' => $filteredProducts,
        'shop_id' => $shop_id
    ]);
}



}