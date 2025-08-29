@extends('common.app')
@section('content')
<style>
   div.dataTables_filter {
  display: none;
}
</style>
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
         <a class="nav-link active text-center" id="custom-tabs-four-home-tab" data-toggle="pill" href="#custom-tabs-four-home" role="tab" aria-controls="custom-tabs-four-home" aria-selected="true">{{$text }}</a>
      </div>
      <div class="card-body">

         <form method="GET" action="{{ url('orderstatu/' . $id) }}" class="row row-cols-lg-auto g-2 align-items-center mb-3">

            {{-- <div class="col">
               <input type="text" name="nameall" value="{{ request('nameall') }}" class="form-control" placeholder="Search By Full name, Telephone">
           </div> --}}

            <div class="col">
                <input type="date" name="from_date" value="{{ request('from_date') }}" class="form-control" placeholder="From Date">
            </div>
        
            <div class="col">
                <input type="date" name="to_date" value="{{ request('to_date') }}" class="form-control" placeholder="To Date">
            </div>
        
            {{-- <div class="col">
                <select name="order_status" class="form-control">
                    <option value="">-- Order Status --</option>
                    <option value="1" {{ request('order_status') == 1 ? 'selected' : '' }}>Pending</option>
                    <option value="2" {{ request('order_status') == 2 ? 'selected' : '' }}>Completed</option>
                </select>
            </div> --}}
        
            <div class="col">
                <select name="payment_status" class="form-control">
                    <option value="">-- Payment Type --</option>
                    <option value="2" {{ request('payment_status') == '2' ? 'selected' : '' }}>Cash</option>
                    <option value="1" {{ request('payment_status') == '1' ? 'selected' : '' }}>Online</option>
                </select>
            </div>
        
            <div class="col">
                <button type="submit" class="btn btn-primary">Filter</button>
                <a href="{{ url('orderstatu/' . $id) }}" class="btn btn-secondary">Clear</a>
            </div>

            <div class="col">
               <input type="text" id="customSearch" class="form-control" placeholder="Search">
            </div>
        </form>

        

         <div class="tab-content" id="custom-tabs-four-tabContent">
            <div class="tab-pane fade show active" id="custom-tabs-four-home" role="tabpanel" aria-labelledby="custom-tabs-four-home-tab">
               <table id="example5" class="table table-bordered table-hover">
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
						<!--<a href="{{ url('followup') }}/{{ $orders->customer_id }}" class="btn btn-sm btn-info"><i class="fa fa-eye"></i> Followup</a>-->
						</td>

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
@push('page_scripts')

@endpush