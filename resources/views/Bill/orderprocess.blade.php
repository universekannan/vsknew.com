@extends('common.app')
@section('content')
<style>
  .tt-hint, 
    .product_id2 {
        border: 1px solid blue !important;
        font-size: 18px;
        height: 35px;
        line-height: 30px;
        outline: medium none;
        padding: 8px 12px;
        width: 255px !important;
    }
    .tt-dropdown-menu {
        width: 300px;
        margin-top: 1px;
        padding: 1px 1px;
        background-color: #fff;
        border: 1px solid #ccc;
        border: 1px solid rgba(0, 0, 0, 0.2);
        font-size: 18px;
        color: #111;
        background-color: #F1F1F1;
        text-align: left;
    }
    .tt-is-under-cursor {
        background-color: #2caab3;
        color: white !important;
}

</style>
  <section class="content">
    <div class="container-fluid">
	<center>
	Oder ID {{ $order_1->ocorderid }}, Full Name - {{ $order_1->firstname }} {{ $order_1->firstname }}, Mobile - {{ $order_1->telephone }}
	</center>
     <div class="row">
      <div class="col-md-3">
	
        <div class="card card-info">
          <div class="card-body">
@if($orderstatusid < 3 )	 
		  <input type="hidden" id="order_id" name="order_id" value="{{ request()->segment(2) }}"
		     <input maxlength="15" type="hidden" class="form-control" name="customer_id" id="customer_id" placeholder="id">

           <div class="form-group row" id="product_div">
		   
            <input onkeypress="return runScript1(event)" placeholder="Enter Item Name" autocomplete="off" maxlength="200" class="form-control product_id2" id="product_id2" name="product_id2" />
          </div>
          <div class="form-group row">
           <input  required="required" type="text" class="form-control rate"
           name="product_code" id="rate" disabled  maxlength="50" 
           placeholder="Price">
            <input type="hidden" name="PID" id="PID" value="">
            <input type="hidden" name="GST" id="GST" value="0">
            <input type="hidden" name="discount_price" id="discount_price" value="0">
            <input type="hidden" name="discount_price_min_weight" id="discount_price_min_weight" value="0">
            <input type="hidden" name="tax_name" id="tax_name" value="">
            <input type="hidden" name="product_id3" id="product_id3" value="">
         </div>
         <div class="form-group row">
           <input maxlength="5" onkeypress="return runScript2edit(event)" onkeyup="calculate_amount()"  required="required" type="text" class="form-control decimal"  name="product_qty" id="quantity" placeholder="Quantity">
         </div>

         <div class="form-group row">
           <input  required="required" disabled type="text" class="form-control"
           name="total" id="total" 
           placeholder="Total">
           <input type="hidden" name="gst_amount" id="gst_amount" value="0">
         </div>
         <div class="form-group row">
          <div class="col-md-12 text-center">

            <a onclick="return add_row_update()" required="required" class="btn btn-success"
            type="button"
            name="add">ADD</a>
          </div>
        </div>
		@else
           <img style="width:100%" src="{{ url('') }}/logo.png" >
        @endif	
      </div>
    </div>
</div>

  <div class="col-md-9">
    <div class="card card-info">
      <div class="card-body">
        <div class="login-panel panel panel-default">
          <div class="row">
            <div class="col-md-12">
              <div class="table-responsive">
                <table class="table table-bordered" id="tab_logic">
    <thead>
        <tr>
            <th class="text-center">#</th>
            <th class="text-center col-sm-7">Product Name</th>
            <th class="text-center">Quantity</th>
            <th class="text-center">Rate</th>
            <th class="text-center">Amount</th>
            <th class="text-center">
                <a class="btn btn-danger btn-sm" href="#"><i class="fa fa-times"></i></a>
            </th>
        </tr>
    </thead>
    <tbody id="product_list">
    @php
        $total_amount = 0;
        $gst_total = 0;
        $rowIndex = 0;
    @endphp

    @foreach($orderproducts as $key => $resPro)
        @php 
            $total_amount += $resPro->total; 
            $gst_total = 0; 
            $net_total = $total_amount + $gst_total; 
        @endphp
        <tr id="addrupdate{{ $rowIndex }}">
            <td>{{ $key + 1 }}</td>
            <td>
                <input readonly value="{{ $resPro->name }}" name="item_name[]" type="text" class="form-control">
                <input readonly class="pd_id" value="{{ $resPro->product_id }}" name="product_id[]" type="hidden">
                <input readonly value="0" name="gst_amount2[]" type="hidden">
            </td>
            <td>
                <input readonly value="{{ $resPro->quantity }}" class="form-control prd_qty_{{ $resPro->order_product_id }}" name="item_quantity[]" type="text">
            </td>
            <td>
                <input readonly value="{{ $resPro->price }}" class="form-control prd_rat_{{ $resPro->order_product_id }}" name="item_rate[]" type="text">
            </td>
            <td class="amount_td">
                <input readonly value="{{ $resPro->total }}" class="form-control prd_tot_{{ $resPro->order_product_id }}" name="total[]" type="text">
                <input class="form-control prd_totamt_{{ $resPro->order_product_id }}" readonly value="{{ $resPro->total }}" name="total_amount[]" type="hidden">
            </td>
            <td>
                <button class="btn btn-danger btn-sm text-center delete-order" data-id="{{ $resPro->order_product_id }}">
                    <i class="fa fa-trash"></i>
                </button>
            </td>
        </tr>
        @php 
            $rowIndex++; 
        @endphp
    @endforeach
</tbody>

</table>


              </div>
            </div>
          </div>

          <div class="form-group row">
            <div class="col-sm-12 col-md-6">
			<form action="{{ url('saveorderstatus') }}" method="post">
                       {{ csrf_field() }}
                    <input type="hidden" value="{{ $orderid }}" name="order_id">
                    <input type="hidden" value="{{ $customer_id }}" name="customer_id">
					 <div class="form-group row">
                        <label class="control-label col-md-6">Order Status</label>
						<select class="form-control col-md-6" name="order_status_id">
						   @foreach ($order_status as $orderstatus)
                              <option {{ $orderstatus->order_status_id == $orderstatusid ? 'selected' : '' }} value="{{ $orderstatus->order_status_id }}"> {{ $orderstatus->name }}</option>
						   @endforeach
					  </select>
					 </div>
					  <div class="form-group row">
						<label class="control-label col-md-6">Users </label>
						<?php $use = $user ? $user->user_id : '1'; ?>
						<select class="form-control col-md-6" name="user_id">
						<option>Select Users </option>
						   @foreach ($users as $userslist)
                              <option <?php if($userslist->id == $use) { ?> 'selected' <?php } ?> value="{{ $userslist->id }}"> {{ $userslist->full_name }}</option>
						   @endforeach
					  </select>
					 </div> 
					 
                       <button type="submit" class="btn btn-primary">Submit</button>
					    </form>
					@if($orderstatusid == 3 )	       
						<form class="form-inline" name="cust_form" role="form" method="post">
							{{ csrf_field() }}

							<div class="form-group">
							  <div class="b"> 
								<div  style="float:right">
								  <a href="javascript:history.back()" class="btn btn-secondary">Back</a>
								  <a onclick="submit_data_update({{ request()->segment(2) }})" required="required" class="btn btn-success"
								  type="button"
								  name="save"/>SAVE & Bill</a>
								</div>
							  </div>
							</div>
						</form>
			        @endif
			</div>
            <div class="col-sm-12 col-md-6">
          <div class="form-group row">
            <label class="control-label col-md-6">Total</label>

            <div class="col-md-6 pull-right form-inline">

              <input readonly type="text" name="total_amount" id="total_amount" class="form-control Number" value="{{ $total_amount}}">
            </div>
            </div>
         
          <div class="form-group row">
            <label class="control-label col-md-6">GST</label>

            <div class="col-md-6 pull-right form-inline">

              <input readonly type="text" name="gat_amount5" id="gat_amount5" class="form-control Number" value="{{ $gst_total }}">

            </div>
          </div>

          <div class="form-group row">
            <label class="control-label col-md-6">Net Total</label>

            <div class="col-md-6pull-right form-inline">

              <input readonly type="text" name="net_amount" id="net_amount" class="form-control Number" value="{{ $net_total }}">

            </div>
          </div>

        </div>
      </div>
    </div>
  </div>

</div>







</section>



</div>
</div>
</div>
</div>
</section>
<!-- /.content -->
</div>



<div class="modal fade" id="addCustomer" tabindex="-1" role="dialog" aria-labelledby="basicModal" aria-hidden="true">
<form method="post" action="{{url('/add_customer')}}">
{{ csrf_field() }}
  <div class="modal-dialog modal-md">
    <div class="modal-content">
      <div class="modal-header">
        <h4 class="modal-title" id="myModalLabel">Add Customer</h4>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
         <div class="form-group row">
			<label>First Name</label>
            <input maxlength="30" type="text" class="form-control" name="firstname" id="firstname" placeholder="First Name">
          </div>
		  <div class="form-group row">
			<label>Last Name</label>
            <input maxlength="30" type="text" class="form-control" name="lastname" id="lastname" placeholder="Last Name">
          </div>
		  <div class="form-group row">
			<label>Customer Phone</label>
            <input maxlength="30" type="text" class="form-control" name="telephone" id="telephone" placeholder="Customer Phone">
          </div>
		  <div class="form-group row">
			<label>Customer Email</label>
            <input maxlength="30" type="text" class="form-control" name="email" id="email" placeholder="Customer Email">
          </div>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        <button type="submit" class="btn btn-primary">Save changes</button>
      </div>
    </div>
  </div>
  </form>
</div>
<script src="{!! asset('plugins/jquery/jquery.min.js') !!}"></script>

<script>
$(".delete-order").click(function() {
        var orderId = $(this).data("id");
        var row = $("#row-" + orderId);

        if (confirm("Are you sure you want to delete this order?")) {
            $.ajax({
                url: "{{ url('order/delete') }}/" + orderId, // Laravel route
                type: "DELETE",
                data: {
                    _token: "{{ csrf_token() }}" // Include CSRF token
                },
                success: function(response) {
                    if (response.success) {
                        row.remove(); 
						location.reload();
                    } else {
                        alert("Error deleting order.");
                    }
                },
                error: function(xhr) {
                    alert("Something went wrong.");
                }
            });
        }
    });
	</script>

@endsection
