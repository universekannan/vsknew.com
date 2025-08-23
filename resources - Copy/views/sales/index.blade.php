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
               <a class="nav-link active" id="custom-tabs-four-home-tab" data-toggle="pill" href="#custom-tabs-four-home" role="tab" aria-controls="custom-tabs-four-home" aria-selected="true">{{$text }}</a>
            </li>
            <div class="col-sm-6">
            </div>
            <div class="col-sm-4" style="padding-top: calc(.5rem + 0px);">
            </div>
            <div class="col-sm-1" style="padding-top: calc(.5rem + 0px);">
               <td>
                  <!--
                     <button type="button" class="btn btn-block btn-outline-danger btn-xs" data-toggle="modal" data-target="#adduser"><i class="fa fa-plus"> </i> Add</button>-->
               </td>
            </div>
         </ul>
      </div>
      <div class="card-body">
         <div class="tab-content" id="custom-tabs-four-tabContent">
            <div class="tab-pane fade show active" id="custom-tabs-four-home" role="tabpanel" aria-labelledby="custom-tabs-four-home-tab">
               <table id="example2" class="table table-bordered table-hover">
                  <thead>
                     <tr>
                        <th>#ID</th>
                        <th>Order ID</th>
                        <th>Full Name</th>
                        <th>Tele Phone</th>
                        <th>Total</th>
                        <th>Action</th>
                     </tr>
                  </thead>
                  <tbody>
                     @foreach($order as $key=>$orders)
                     <tr>
                        <td>{{ $key + 1 }}</td>
                        <td>{{ $orders->order_id }}</td>
                        <td>{{ $orders->firstname }} {{ $orders->lastname }}</a></td>
                        <td>{{ $orders->telephone }}</a></td>
                        <td>{{ $orders->total }}</a></td>
                        <td><a href="{{ url('orderproducts') }}/{{ $orders->order_id }}" class="btn btn-sm btn-info"><i class="fa fa-eye"></i> View</a>
						<a href="{{ url('followup') }}/{{ $orders->customer_id }}" class="btn btn-sm btn-info"><i class="fa fa-eye"></i> Followup</a></td>

                     </tr>
                     @endforeach
                  </tbody>
               </table>
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