@extends('common.app')
@section('content')
<section class="content">
<div class="card card-primary card-outline card-outline-tabs">
<div class="card-header p-0 border-bottom-0">
   <ul  class="nav nav-tabs" id="custom-tabs-four-tab" role="tablist">
      <li class="nav-item">
         <a class="nav-link active" id="custom-tabs-four-home-tab" data-toggle="pill" href="#custom-tabs-four-home" role="tab" aria-controls="custom-tabs-four-home" 
         aria-selected="true">Approve Purchase</a>
      </li>

      <div class="col-sm-10">
         {{ csrf_field() }}
         <div class="row">
         <div class="col-md-4">
         <select id="shopid" name="shop_id" class="form-control">
            @foreach($shops as $s)
            <option @if($shop_id == $s->shop_id) selected @endif value="{{ $s->shop_id }}">{{ $s->shop_name }}</option>
            @endforeach
         </select>
         </div>
         <div class="col-md-2">
           <button onclick="loadshop()" class="btn btn-block btn-outline-danger btn-xs mt-1"><i class="fa fa-plus"> </i> Load</button>
         </div>
         </div>
      </div>

   </ul>
</divx>
<div class="card-body">
   <div class="tab-content" id="custom-tabs-four-tabContent">
      <div class="tab-pane fade show active" id="custom-tabs-four-home" role="tabpanel" aria-labelledby="custom-tabs-four-home-tab">
         <table id="example2" class="table table-bordered table-hover">
            <thead>
               <tr>
                  <th>#</th>
                  <th>Code</th>
                  <th>Model Name</th>
                  <th>Product Name</th>
                  <th>Available Stock</th>
                  <th>Minimum Stock</th>
                  <th>Purchase Quantity</th>
                  <th>Price</th>
                  <th>Action</th>
               </tr>
            </thead>
            <tbody>
               @foreach($manageproduct as $key=>$prod)
               <tr>
                  <td>{{ $key + 1 }}</td>
                  <td>{{ $prod->product_id }}</td>
                  <td>{{ $prod->model }}</td>
                  <td>{{ $prod->name }}</td>
                  <td>{{ $prod->stock }}</td>
                  <td>{{ $prod->minimum }}</td>
                  <td>{{ $prod->pqty }}</td>
                  <td>{{ $prod->price }}</td>
                  <td style="color:red" id="purchasetd_{{ $prod->product_id }}"><a onclick="show_approve_modal('{{ $prod->product_id }}','{{ $prod->name }}','{{ $prod->minimum }}','{{ $prod->stock }}','{{ $prod->pqty }}','{{ $prod->pur_id }}')" href="#" class="btn btn-xs btn-success">Approve</a>
                     <a onclick="return confirm('Do you want to confirm delete trafic?')"  onclick="cancel_purchase('{{ $prod->product_id }}','{{ $prod->pur_id }}')" class="btn btn-xs btn-danger">Cancel</a>
                     </td>
               </tr>
               @endforeach 
            </tbody>
         </table>
      </div>
   </div>
</div>
</div>
</section>
</div>
<div class="modal fade" id="purchasemodal">
<div class="modal-dialog">
<div class="modal-content">
<div class="modal-header">
   <h4  class="modal-title" id="product_name">Purchase</h4>
   <button type="button" class="close" data-dismiss="modal"
   aria-label="Close">
   <span aria-hidden="true">&times;</span>
</button>
</div>
<div class="modal-body">
<form method="post">
   {{ csrf_field() }}
   <input type="hidden" id="product_id"  />
   <input type="hidden" id="purchase_id"  />
   <div class="row">
      <div class="col-md-4">Minimum Stock</div>
      <div class="col-md-8"><p id="min_stock"></p></div>
   </div>  
   <div class="row">
      <div class="col-md-4">Available Stock</div>
      <div class="col-md-8"><p id="avl_stock"></p></div>
   </div> 
   <div class="row">
      <div class="col-md-4">Purchase Quantity</div>
      <div class="col-md-2"><input class="form-control number" type="text" size="4" id="pqty" maxlength="4"></div>
   </div>      
   </form>
</div>
<div class="modal-footer" >
   <button onclick="approve_purchase()" class="btn btn-primary">Save</button>
   <button type="button" class="btn btn-primary" data-dismiss="modal">Close</button>
</div>
</div>
</div>
</div>
@endsection
@push('page_scripts')
<script>
   var purchase = "{{ url('purchase') }}";
   function loadshop() {
      var shopid = $("#shopid").val();
      var url = purchase + "/" + shopid ;
      window.location.href = url;
   }
</script>
@endpush
