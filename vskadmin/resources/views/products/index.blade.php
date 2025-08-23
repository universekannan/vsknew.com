@extends('common.app')
@section('content')
                   <section class="content">
                   <div class="card card-primary card-outline card-outline-tabs">
                   <div class="card-body">
  
                            <div class="row">
                                <div style="padding-top: 3px">
                                    <P>Per Page</P>
                                </div>
                                <div class="col-md-1">
                                    <select class="form-control" id="pageper">
                                        <option value="1">1</option>
                                        <option value="5">5</option>
                                        <option value="10" selected>10</option>
                                        <option value="25">25</option>
                                        <option value="50">50</option>
                                        <option value="100">100</option>
                                    </select>
                                </div>
                                {{-- <div style="padding-top: 3px">
                                    <P>Go To Page</P>
                                </div>
                                <div class="col-md-1">
                                    <select class="form-control" id="gotopage">
                                        @for($i=1;$i<=$manageproduct->lastPage();$i++)
                                        <option value="{{ $i }}">{{ $i }}</option>
                                        @endfor
                                    </select>
                                </div> --}}
                                <div class="col-md-1"></div>
                                <div style="padding-top: 3px">
                                    <P>Sort By</P>
                                </div>
                                <div class="col-md-2">
                                    <select class="form-control" id="sortby">
                                        <option value="product_id-ASC">date(Oldest First)</option>
                                        <option value="product_id-desc">date(Latest First)</option>
                                        
                                    </select>
                                </div>
                                <div class="col-md-1">&nbsp;</div>
                                <div style="padding-top: 3px">
                                    <P>Search</P>
                                </div>
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <input type="text" name="serach" id="serach" class="form-control" />
                                    </div>
                                </div>
								<button type="button"  class="col-sm-1 btn btn-block"><i class="fa fa-plus"> </i> Add</button>

                            </div>
                        </div>
                        <div class="table-responsive" style="min-height :520px">
         <table class="table table-bordered table-hover">
            <thead>
               <tr>
                  <th>#</th>
                  <th>Code</th>
                  <th>Product Name</th>
                  <th>Minimum </th>
                  <th>Price</th>
                  <th>Barcode</th>
                  <th>Action</th>
               </tr>
            </thead>
            <tbody>
 @foreach($manageproduct as $key=>$prod)
               <tr>
                  <td>{{ $key + 1 }}</td>
                  <td>{{ $prod->product_id }}</td>
                  <td>{{ $prod->name }}</td>
                  <td>{{ $prod->minimum }}</td>
                  <td>{{ round($prod->price,0) }}</td>
                  <td>{{ $prod->bar_code }}</td>
                 
				  <td>
				  <div class="btn-group dropdown">
					   <button type="button" class="btn btn-default btn-outline-danger btn-xs fa fa-eye" data-toggle="dropdown">
					   </button>
					   <button type="button" class="btn btn-default btn-outline-danger btn-xs">Action</button>
					   <div class="dropdown-content">
             
			 
			 
                   <a onclick="show_discountprice_modal('{{ $prod->product_id }}','{{ $prod->name }}','{{ $prod->price }}','{{ $prod->buying_price }}','{{ $prod->discount_price }}','{{ $prod->discount_price_min_weight }}','{{ $prod->mrp }}')">Price</a>
				   
                   <a href="{{url('/products/banner/'.$prod->product_id)}}" > Banner</a>
				   
                    <a @if($prod->bar_code != "") onclick="return confirm('Existing Barcode will be change.Do you want to create New Barcode?')" @endif href="{{url('/products/generatebarcode/'.$prod->product_id)}}" > Generate Barcode</a>
					
                    @if($prod->bar_code != "")
                     <a onclick="printbarcode('{{ $prod->product_id }}','{{ $prod->name }}')">Print Barcode</a>
                     @endif
				   </div>
				</div>
				 </td>
				 
               </tr>
               @endforeach 
             
               <tr>
				<td colspan="8" >
				 {!! $manageproduct->links('pagination::bootstrap-4') !!}
				</td>
			   </tr>
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
   <input type="hidden" class="form-control" id="product_id"  />
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
   <button onclick="save_purchase()" class="btn btn-primary">Save</button>
   <button type="button" class="btn btn-primary" data-dismiss="modal">Close</button>
</div>
</div>
</div>
</div>

<div class="modal fade" id="purchasediscountmodal">
<div class="modal-dialog modal-lg">
<div class="modal-content">
<div class="modal-header">
   <h4  class="modal-title" id="product_name2"></h4>
   <button type="button" class="close" data-dismiss="modal"
   aria-label="Close">
   <span aria-hidden="true">&times;</span>
</button>
</div>
<div class="modal-body">
<form method="post" action="{{ url('/updatemoreinfo') }}">
   {{ csrf_field() }}
   <input type="hidden" class="form-control" id="productid" name="product_id" />
   <div class="row mt-2">
      <div class="col-md-3">Buying Price</div>
      <div class="col-md-8"><input name="buying_price" class="form-control decimal" type="text"  id="buying_price" maxlength="10"></div>
   </div>  
   <div class="row mt-2">
      <div class="col-md-3">Discount Price</div>
      <div class="col-md-3"><input name="discount_price" class="form-control decimal" type="text"  id="discount_price" maxlength="10"></div>
       <div class="col-md-3">Discount Minimum</div>
      <div class="col-md-2"><input name="discount_weight" class="form-control decimal" type="text"  id="discount_weight" maxlength="10"></div>
   </div> 
   <div class="row mt-2">
      <div class="col-md-3">Selling Price</div>
      <div class="col-md-8"><input name="price" class="form-control decimal" type="text" id="price" maxlength="10"></div>
   </div> 
    <div class="row mt-2">
      <div class="col-md-3">MRP</div>
      <div class="col-md-8"><input name="mrp" class="form-control decimal" type="text"  id="mrp" maxlength="10"></div>
   </div>      
 
</div>
<div class="modal-footer" >
   <button type="submit" class="btn btn-primary">Save</button>
   <button type="button" class="btn btn-primary" data-dismiss="modal">Close</button>
</div>
  </form>
</div>
</div>
</div>

<div class="modal fade" id="barcodeprint">
<div class="modal-dialog modal-md">
<div class="modal-content">
<div class="modal-header">
   <h4  class="modal-title" id="prod_name"></h4>
   <button type="button" class="close" data-dismiss="modal"
   aria-label="Close">
   <span aria-hidden="true">&times;</span>
</button>
</div>
<div class="modal-body">

   <input type="hidden" class="form-control" id="printid" name="product_id" />
   <div class="row mt-2">
      <div class="col-md-3">Barcode Count</div>
      <div class="col-md-8"><input name="buying_price" class="form-control number" type="text"  id="count" maxlength="2"></div>
   </div>  
       
 
</div>
<div class="modal-footer" >
   <button onclick="confirmprint();" class="btn btn-primary">confirm</button>
   <button type="button" class="btn btn-primary" data-dismiss="modal">Close</button>
</div>
</div>
</div>
</div>
@endsection
@push('page_scripts')
<script>

    function show_discountprice_modal(product_id,name,price,buying_price,discount_price,discount_weight,mrp){
      $("#productid").val(product_id);
      $("#product_name2").html(name);
      $("#price").val(price);
      $("#buying_price").val(buying_price);
      $("#discount_price").val(discount_price);
      $("#discount_weight").val(discount_weight);
      $("#mrp").val(mrp);
      $('#purchasediscountmodal').modal('show');
    }  

    function printbarcode(product_id,name){
      $("#printid").val(product_id);
      $("#prod_name").html(name);
      $('#barcodeprint').modal('show');
    }  

    function confirmprint(){
        var printurl = "{{ url('products/printbarcode') }}";
        var count = $("#count").val();
        if(count == ""){
            alert("Please enter count");
            $("#count").focus();
            return false;
        }
        var id = $("#printid").val();
        var url =  printurl + "/" + id + "/" +count; 
         window.open(url, '_blank');
         $('#barcodeprint').modal('hide');

        //swindow.location.href = url;
    } 

$(document).ready(function() {


            function fetch_data(page, query, limit, sortby, sortorder) {
               var cururl = "{{ url('/') }}";
                $.ajax({
                    url: cururl + "/productpagination/fetch_data?page=" + page + "&query=" + query + "&perpage=" +
                        limit + "&sortby=" + sortby + "&sortorder=" + sortorder,
                    success: function(data) {
                        $('tbody').html('');
                        $('tbody').html(data);
                    }
                })
            }

            $(document).on('change', '#pageper', function() {
                var query = $('#serach').val();
                var page = $('#hidden_page').val();
                var limit = $("#pageper").val();
                var sortby = $("#sortby").val().split("-")[0];
                var sortorder = $("#sortby").val().split("-")[1];
                fetch_data(page, query, limit, sortby, sortorder);
            });

            $(document).on('change', '#gotopage', function() {
                var query = $('#serach').val();
                var page = $('#gotopage').val();
                var limit = $("#pageper").val();
                var sortby = $("#sortby").val().split("-")[0];
                var sortorder = $("#sortby").val().split("-")[1];
                fetch_data(page, query, limit, sortby, sortorder);
            });

            $(document).on('change', '#sortby', function() {
                var query = $('#serach').val();
                var page = $('#hidden_page').val();
                var limit = $("#pageper").val();
                var sortby = $("#sortby").val().split("-")[0];
                var sortorder = $("#sortby").val().split("-")[1];
                fetch_data(page, query, limit, sortby, sortorder);
            });


            $(document).on('keyup', '#serach', function() {
                var query = $('#serach').val();
                var page = $('#hidden_page').val();
                var limit = $("#pageper").val();
                var sortby = $("#sortby").val().split("-")[0];
                var sortorder = $("#sortby").val().split("-")[1];
                fetch_data(page, query, limit, sortby, sortorder);
            });


            $(document).on('click', '.pagination a', function(event) {
                event.preventDefault();
                var page = $(this).attr('href').split('page=')[1];
                $('#hidden_page').val(page);

                var query = $('#serach').val();
                var limit = $("#pageper").val();
                var sortby = $("#sortby").val().split("-")[0];
                var sortorder = $("#sortby").val().split("-")[1];

                $('li').removeClass('active');
                $(this).parent().addClass('active');
                fetch_data(page, query, limit, sortby, sortorder);
            });

        });
</script>


@endpush
