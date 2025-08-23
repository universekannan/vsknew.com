@extends('common.app')
@section('content')
<section class="content">
<div class="card card-primary card-outline card-outline-tabs">
<div class="card-header p-0 border-bottom-0">
   <ul  class="nav nav-tabs" id="custom-tabs-four-tab" role="tablist">
      <li class="nav-item">
         <a class="nav-link active" id="custom-tabs-four-home-tab" data-toggle="pill" href="#custom-tabs-four-home" role="tab" aria-controls="custom-tabs-four-home" 
         aria-selected="true">Low Stock</a>
      </li>
   </ul>
</div>
<div class="card-body">
   <div class="tab-content" id="custom-tabs-four-tabContent">
      <div class="tab-pane fade show active" id="custom-tabs-four-home" role="tabpanel" aria-labelledby="custom-tabs-four-home-tab">
         
         <table id="example2" class="table table-bordered table-hover">
            <thead>
               <tr>
                  <th>#</th>
                  <th>Product Name</th>
                  <th>Available Stock</th>
                  <th>Minimum Stock</th>
                  <th>Price</th>
               </tr>
            </thead>
            <tbody>
               @foreach($manageproduct as $key=>$prod)
               <tr>
                  <td>{{ $key + 1 }}</td>
                  <td>{{ $prod->name }}</td>
                  <td>{{ $prod->quantity }}</td>
                  <td>{{ $prod->minimum }} </td>
                  <td>{{ $prod->price }}</td>

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

@endsection
@push('page_scripts')
<script>
        var purchase = "{{ url('low_stock') }}";
        function loadshop() {
            var shopid = $("#shopid").val();
            var url = purchase + "/" + shopid ;
            window.location.href = url;
        }
</script>
@endpush