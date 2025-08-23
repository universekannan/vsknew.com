@extends('common.app')
@section('content')
<?php
   $text="";
   if(Auth::user()->user_type_id == 1)
   $text="Shop List";
   elseif(Auth::user()->user_type_id == 2)
   $text="All Users";
   ?>
<section class="content">
   <div class="card card-primary card-outline card-outline-tabs">
      <div class="card-header p-0 border-bottom-0">
         <ul class="nav nav-tabs" id="custom-tabs-four-tab" role="tablist">

<li class="nav-item">
<a class="nav-link active" id="custom-tabs-four-home-tab" data-toggle="pill" href="#custom-tabs-four-home" role="tab" aria-controls="custom-tabs-four-home" aria-selected="true">Oder ID {{ $order_id }}</a>
</li>
<li class="nav-item">
<a class="nav-link" id="custom-tabs-four-profile-tab" data-toggle="pill" href="#custom-tabs-four-profile" role="tab" aria-controls="custom-tabs-four-profile" aria-selected="false">Oder History</a>
</li>
            <div class="col-sm-6">
            </div>
            <div class="col-sm-4" style="padding-top: calc(.5rem + 0px);">
            </div>
            <div class="col-sm-1" style="padding-top: calc(.5rem + 0px);">
               <td>
     
               </td>
            </div>
         </ul>
      </div>
      <div class="card-body">
         <div class="tab-content" id="custom-tabs-four-tabContent">
            <div class="tab-pane fade show active" id="custom-tabs-four-home" role="tabpanel" aria-labelledby="custom-tabs-four-home-tab">
               <table id="" class="table table-bordered table-hover">
                  <thead>
                     <tr>
                       <th width="100">S No</th>
                       <th width="100">Name</th>
					   <th width="50px">Qty</th>
					   <th width="50px">Amount</th>
					   <th width="50px">Total</th>
					   <th width="50px">&nbsp;</th>
                     </tr>
                  </thead>
                  <tbody>
                     @foreach($orderproducts as $key=>$orderproductslist)
                     <tr>
                        <td>{{ $key + 1 }}</td>
                        <td>{{ $orderproductslist->name }}</td>
                        <td>{{ $orderproductslist->quantity }}</td>
                        <td>{{ $orderproductslist->price }}</td>
                        <td>{{ $orderproductslist->total }}</td>
                        <td>
				 @if($orderproductslist->packaging == 0)
                     <a onclick="packaging(this,1,{{ $orderproductslist->order_product_id }})" class="btn btn-danger">Picked</a>
                @else
                     <a onclick="packaging(this,0,{{ $orderproductslist->order_product_id  }})" class="btn btn-success">X</a>
                @endif
						</td>
                     </tr>
                     @endforeach
					  <tr>
                        <td></td>
                        <td></td>
                        <td>Total Amount</td>
                        <td>{{ $ordertotal }}</td>
                     </tr>
                  </tbody>
               </table>
			   <div class="form-group row">
					 <div class="col-sm-6">
                    </div>
					 <div class="col-sm-6">
			
                       <form action="{{ url('saveorderstatus') }}" method="post">
                       {{ csrf_field() }}
                    <input type="hidden" value="{{ $orderid }}" name="order_id">
                    <input type="hidden" value="{{ $customer_id }}" name="customer_id">
					 <div class="form-group">
						<label>Order Status</label>
						<select class="form-control mb-3" name="order_status_id">
						   @foreach ($order_status as $orderstatus)
                              <option {{ $orderstatus->order_status_id == $orderstatusid ? 'selected' : '' }} value="{{ $orderstatus->order_status_id }}"> {{ $orderstatus->name }}</option>
						   @endforeach
					  </select>
					 </div>
					  <div class="form-group">
						<label>Users </label>
						<?php $use = $user ? $user->user_id : '1'; ?>
						<select class="form-control mb-3" name="user_id">
						<option>Select Users </option>
						   @foreach ($users as $userslist)
                              <option <?php if($userslist->id == $use) { ?> 'selected' <?php } ?> value="{{ $userslist->id }}"> {{ $userslist->full_name }}</option>
						   @endforeach
					  </select>
					 </div>
					 
                       <button type="submit" class="btn btn-primary">Submit</button>
					   
					 </div>
                     </div>
                  </div>
				  <div class="tab-pane fade" id="custom-tabs-four-profile" role="tabpanel" aria-labelledby="custom-tabs-four-profile-tab">
                                 <table id="" class="table table-bordered table-hover">
                                    <thead>
                                       <tr>
                                          <th>S No</th>
                                          <th>Order ID</th>
                                          <th> Name</th>
                                          <th> User Type</th>
                                          <th>Total</th>
                                          <th>Date & Time</th>
                                          <th>Login User</th>
                                       </tr>
                                    </thead>
                                    <tbody>
                                       <tr>
                                          <td>1</td>
                                          <td>VSK{{ $order_1->oc_orderID }}</td>
                                          <td>Customer</td>
                                          <td>{{ $order_1->firstname }} {{ $order_1->firstname }}</td>
                                          <td>{{ $ordertotal }}</td>
                                          <td>{{ $order_1->date_added }}</td>
                                          <td></td>
                                       </tr>
									   @if(!empty($order_2))
                                       <tr>
                                          <td>2</td>
                                          <td>VSK{{ $order_2->order_management_id }}</td>
                                          <td>Pick Staf</td>
                                          <td>{{ $order_2->assain_user }}</td>
                                          <td>{{ $ordertotal }}</td>
                                          <td>{{ $order_2->order_date }}</td>
                                          <td>{{ $order_2->login_user }}</td>
                                       </tr>
									   @endif
									   @if(!empty($order_3))
									    <tr>
                                          <td>3</td>
                                          <td>VSK{{ $order_3->order_management_id }}</td>
                                          <td>Bill Staf</td>
                                          <td>{{ $order_3->assain_user }}</td>
                                          <td>{{ $ordertotal }}</td>
                                          <td>{{ $order_3->order_date }}</td>
                                          <td>{{ $order_3->login_user }}</td>
                                       </tr>
									   @endif
                                       @if(!empty($order_4))
									    <tr>
                                          <td>4</td>
                                          <td>VSK{{ $order_4->order_management_id }}</td>
                                          <td>Deli Staf</td>
                                          <td>{{ $order_4->assain_user }}</td>
                                          <td>{{ $ordertotal }}</td>
                                          <td>{{ $order_4->order_date }}</td>
                                          <td>{{ $order_4->login_user }}</td>
                                       </tr>
									   @endif
									    @if(!empty($order_5))
									    <tr>
                                          <td>5</td>
                                          <td>VSK{{ $order_5->order_management_id }}</td>
                                          <td>Close Staf</td>
                                          <td>{{ $order_5->assain_user }}</td>
                                          <td>{{ $ordertotal }}</td>
                                          <td>{{ $order_5->order_date }}</td>
                                          <td>{{ $order_5->login_user }}</td>
                                       </tr>
									   @endif
                                    </tbody>
                                 </table>
                              </div>
            </div>
         </div>
      </div>
      <!-- /.card -->
   </div>
   </div>
</section>
<!-- /.content -->
</div>
@endsection

