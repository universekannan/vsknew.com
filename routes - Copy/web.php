<?php

use Illuminate\Support\Facades\Route;

//Route::any('{query}', function() { return view('404'); })->where('query', '.*');
Route::fallback(function () {
   return redirect('dashboard');
});
Route::get('/', function () {
    return view('welcome');
});


Route::get('/login', 'App\Http\Controllers\AdminController@login');
Route::post('/checkLogin', 'App\Http\Controllers\AdminController@checkLogin');
Route::get('/logout', 'App\Http\Controllers\AdminController@logout');

Route::get('/not_allowed', 'App\Http\Controllers\CommonController@notAllowed');

Route::group(['middleware' => ['auth']], function() {
    Route::get('/dashboard', 'App\Http\Controllers\DashboardController@dashboard');
    Route::post('/add_roles', 'App\Http\Controllers\RolesController@addManageRolesAction');
    Route::get('/permissions/{id}', 'App\Http\Controllers\RolesController@managePermissions');

    Route::get('/users', 'App\Http\Controllers\UsersController@manageUsers');
    Route::post('/add_user', 'App\Http\Controllers\UsersController@addUser');
    Route::post('/edit_user', 'App\Http\Controllers\UsersController@editUser');
    Route::post('/delete_user', 'App\Http\Controllers\UsersController@deleteUser');
    Route::get('/users/attendance/{id}', 'App\Http\Controllers\UsersController@usersAttendance');

    Route::get('/users/permissions', 'App\Http\Controllers\PermissionsController@manageusers');
    Route::get('/userrole', 'App\Http\Controllers\PermissionsController@userrole');
    Route::post('/roles', 'App\Http\Controllers\PermissionsController@roles');
    Route::post('/addroles', 'App\Http\Controllers\PermissionsController@addRoles');
    Route::get('usertype', 'App\Http\Controllers\UsersController@usertype');



    Route::get('/getitembybarcode/{barcode}', 'App\Http\Controllers\BillController@getitembybarcode');
    Route::get('/barcodewith', 'App\Http\Controllers\ProductsController@barcodewith');
    Route::get('/barcodewithout', 'App\Http\Controllers\ProductsController@barcodewithout');
    Route::post('/save_barcode', 'App\Http\Controllers\ProductsController@save_barcode');
    Route::get('/products', 'App\Http\Controllers\ProductsController@manageProducts');
    Route::get('/productpagination/fetch_data',  'App\Http\Controllers\ProductsController@fetch_data');
    Route::get('/products/banner/{id}', 'App\Http\Controllers\ProductsController@manageBanner');

 Route::post('/loadshop', 'App\Http\Controllers\ProductsController@loadshop');

    Route::get('/products/generatebarcode/{id}', 'App\Http\Controllers\ProductsController@generateBarcode');
     Route::get('/products/printbarcode/{id}/{count}', 'App\Http\Controllers\ProductsController@printBarcode');


    Route::get('/purchase/{id}', 'App\Http\Controllers\ProductsController@purchase');
    Route::get('/pending', 'App\Http\Controllers\ProductsController@pending');
    Route::get('/approve/{id}', 'App\Http\Controllers\ProductsController@approve');
    Route::post('/save_purchase', 'App\Http\Controllers\ProductsController@save_purchase');
    Route::post('/approve_purchase', 'App\Http\Controllers\ProductsController@approve_purchase');
    Route::post('/cancel_purchase', 'App\Http\Controllers\ProductsController@cancel_purchase');
    Route::post('/order', 'App\Http\Controllers\ProductsController@Order');
    Route::post('/stock', 'App\Http\Controllers\ProductsController@Stock');
    Route::post('/updatemoreinfo', 'App\Http\Controllers\ProductsController@updatemoreinfo');
     Route::get('/newbill', 'App\Http\Controllers\BillController@manageBill');
     Route::get('/billdetails/{from}/{to}', 'App\Http\Controllers\BillController@billdetails');
     Route::get('/viewbill/{id}', 'App\Http\Controllers\BillController@viewbill');
     Route::get('/itemsearch/{query}', 'App\Http\Controllers\BillController@itemsearch');
     Route::Post('/savebill', 'App\Http\Controllers\BillController@savebill');
     Route::get('orders-1', 'App\Http\Controllers\BillController@savebill');
     Route::get('/itemsearchmobile/{query}', 'App\Http\Controllers\BillController@itemsearchmobile');
     Route::Post('/add_customer', 'App\Http\Controllers\BillController@add_customer');




     Route::get('orders', [App\Http\Controllers\SalesController::class, 'orders'])->name('orders');
     Route::get('orderstatu/{id}', [App\Http\Controllers\SalesController::class, 'orderstatu'])->name('orderstatu');
     Route::get('orderproducts/{id}', [App\Http\Controllers\SalesController::class, 'orderproducts'])->name('orderproducts');
     Route::post('saveorderstatus', [App\Http\Controllers\SalesController::class, 'saveorderstatus'])->name('saveorderstatus');
     Route::post('updateorderstatus', [App\Http\Controllers\SalesController::class, 'updateorderstatus'])->name('updateorderstatus');
     Route::get('followup/{id}', [App\Http\Controllers\UsersController::class, 'followup'])->name('followup');


     Route::get('/packaging/{user_id}/{order_product_id}', [App\Http\Controllers\SalesController::class, 'packaging'])->name('packaging');

     ROUTE::get('backups', [App\Http\Controllers\BackupController::class, 'index'])->name('backups');
     ROUTE::get('backup/create', [App\Http\Controllers\BackupController::class, 'create'])->name('create');
     ROUTE::get('backup/download/{file_name}', [App\Http\Controllers\BackupController::class, 'download'])->name('download');
     ROUTE::get('backup/delete/{file_name}', [App\Http\Controllers\BackupController::class, 'delete'])->name('delete');
     ROUTE::get('backup/delete/{file_name}', [App\Http\Controllers\BackupController::class, 'delete'])->name('delete');


	Route::get('/check_email', [App\Http\Controllers\UsersController::class, 'check_email'])->name('check_email');


});
