@extends('common.app')
@section('content')
<section class="content">
   <div class="col-12">
      <section class="content">
         <div class="container-fluid">
            <div class="row">
			<div class="col-lg-3 col-6">
            <!-- small box -->
            <div class="small-box bg-info">
              <div class="inner">
                <h3>{{ $products }}</h3>
                <p>Total Products</p>
              </div>
              <div class="icon">
               <i class="fas fa-shopping-cart"></i>
              </div>
              <a href="{{ url('products') }}" class="small-box-footer">More info <i class="fas fa-arrow-circle-right"></i></a>
            </div>
          </div>
		  
               <div class="col-lg-3 col-6">
                  <div class="small-box bg-success">
                     <div class="inner">
                        <h3>{{ $bill }}</h3>
                        <p>Today No of Bills</p>
                     </div>
                     <div class="icon">
                        <i class="far fa-list-alt"></i>
                     </div>
              <a href="{{ url('products') }}" class="small-box-footer">More info <i class="fas fa-arrow-circle-right"></i></a>

                  </div>
               </div>
               <div class="col-lg-3 col-6">
                  <div class="small-box bg-warning">
                     <div class="inner">
                        <h3>{{ $purchase }}</h3>
                        <p>Purchase</p>
                     </div>
                     <div class="icon">
                        <i class="fas fa-money-bill"></i>
                     </div>
                     <a href="{{ url('products') }}" class="small-box-footer">More info <i class="fas fa-arrow-circle-right"></i></a>
                  </div>
               </div>
               <div class="col-lg-3 col-6">
                  <div class="small-box bg-danger">
                     <div class="inner">
                        <h3>{{ $stock }}</h3>
                        <p>Stock</p>
                     </div>
                     <div class="icon">
                        <i class="fas fa-check-circle"></i>
                     </div>
                     <a href="{{ url('products') }}" class="small-box-footer">More info <i class="fas fa-arrow-circle-right"></i></a>
                  </div>
               </div>
			   
			   
			    <div class="col-12 col-sm-6 col-md-3">
                            <div class="info-box">
                                 <span class="info-box-icon bg-primary  elevation-1"><i class="far fa-hand-point-right"></i></span>
                                <div class="info-box-content">
                                    <span class="info-box-text">Pending</span>
                                    <span class="info-box-number">
                                        {{ $PendingCount }}
                                        <small><a
                                                href="{{ url('orderstatu') }}/1"
                                                class="small-box-footer float-sm-right"><i
                                                    class="fas fa-arrow-circle-right"></i></a>
                                        </small>
                                    </span>
                                </div>
                            </div>
                        </div>
              @foreach ($order as $key => $ordertyps)
                        <div class="col-12 col-sm-6 col-md-3">
                            <div class="info-box">
                                <span class="info-box-icon {{ $ordertyps['color'] }} elevation-1"><i
                                        class="fas fa-heart"></i></span>
                                <div class="info-box-content">
                                    <span class="info-box-text">{{ $ordertyps['order_status_name'] }}</span>
                                    <span class="info-box-number">
                                        {{ $ordertyps['order_count'] }}
                                        <small><a
                                                href="{{ url('orderstatu') }}/{{ $ordertyps['order_status_id'] }}"
                                                class="small-box-footer float-sm-right"><i
                                                    class="fas fa-arrow-circle-right"></i></a>
                                        </small>
                                    </span>
                                </div>
                            </div>
                        </div>
                    @endforeach 
					
            </div>
         </div>
      </section>
   </div>
   </div>
   </div>
   </div>
   </div>
</section>
				 
<!-- /.content -->
</div>
@endsection
<script src="{!! asset('plugins/jquery/jquery.min.js') !!}"></script>