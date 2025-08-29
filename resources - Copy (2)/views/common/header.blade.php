
<div class="preloader flex-column justify-content-center align-items-center">
</div>
 <center>
<nav class="main-header navbar navbar-expand-md navbar-light navbar-white">
    <!-- Left navbar links -->
<legend class="scheduler-border">
    <ul class="navbar-nav">
 <div>  <div class="row">
<a href="#" class="navbar-toggler order-1">
</a>
   <li class="navbar-toggler order-1">
        <a class="nav-link" data-widget="pushmenu" href="#" role="button"><i class="fas fa-bars"></i></a>
   </li>
</div>
  </div>
 <li class="nav-item d-none d-sm-inline-block col-md-1">
     <a href="{{url('/dashboard')}}">
	 
      <label>Dashboard</label>
	  
    </a>
</li>

@if(Auth::user()->user_type_id == 1 || Auth::user()->user_type_id == 2)
<li class="nav-item d-none d-sm-inline-block col-md-1">
<div class="dropdown">
@if(Auth::user()->user_type_id == 1)
<a class="dropbtn"><label>Shop</label></a>
@elseif(Auth::user()->user_type_id == 2)
<a class="dropbtn"><label>Users</label></a>
@endif
 <div class="dropdown-content">
     <a href="{{url('/users')}}"><label>Users</label></a>
     <a href="{{url('/users/permissions')}}"><label>User Type</label></a>
  </div>
  </div>
</li>
@endif
@if(Auth::user()->user_type_id == 1 || Auth::user()->user_type_id == 2)
<li class="nav-item d-none d-sm-inline-block col-md-1">
     <a href="{{url('/products')}}">
      <label>Products</label>
    </a>
</li>
@endif

@if(Auth::user()->user_type_id == 1)
<li class="nav-item d-none d-sm-inline-block col-md-1">
<div class="dropdown">
<a class="dropbtn"><label>Bar Code</label></a>
 <div class="dropdown-content">
  <a href="{{url('/barcodewith')}}">With BarCode</a>
  <a href="{{url('/barcodewithout')}}">Without BarCode</a>
  </div>
  </div>
</li>
@endif

<li class="nav-item d-none d-sm-inline-block col-md-1">
  <div class="dropdown">
  <a class="dropbtn"><label>Purchase</label></a>
   <div class="dropdown-content">
       <a href="{{url('/purchase')}}"><label>Purchase</label></a>
       <a href="{{url('/low_stock')}}"><label>Low Stock</label></a>
    </div>
  </div>
</li>

@if(Auth::user()->user_type_id == 2)
<li class="nav-item d-none d-sm-inline-block col-md-1">
     <a href="{{url('/pending')}}">
      <label>Print</label>
    </a>
</li>

@endif
<li class="nav-item d-none d-sm-inline-block col-md-1">
      <div class="dropdown">
        <a class="dropbtn"><label>Orders</label></a>
        <div class="dropdown-content">
@foreach ($orderstatus as $status)
        <a href="{{ url('orderstatu') }}/{{ $status->order_status_id }}">{{ $status->name }}</a>
@endforeach	
        </div>
      </div>
    </li>
	
<li class="nav-item d-none d-sm-inline-block col-md-1">
     <a href="{{url('/approve')}}/{{ Auth::user()->shop_id }}">
      <label>Stock</label>
    </a>
</li>

@if(Auth::user()->user_type_id != 1)
<li class="nav-item d-none d-sm-inline-block col-md-1">
     <a href="{{url('/newbill')}}">
      <label>Billing</label>
    </a>
</li>
@endif

@if(Auth::user()->user_type_id != 1)
<li class="nav-item d-none d-sm-inline-block col-md-1">
     <a href="{{url('/billdetails')}}/{{ date('Y-m-d') }}/{{date('Y-m-d')}}">
      <label>Bill Details</label>
    </a>
</li>
@endif

<li class="nav-item d-none d-sm-inline-block col-md-1">
      <div class="dropdown">
        <a class="dropbtn"><label>Log Out</label></a>
        <div class="dropdown-content">
        <a href=""> {{ Auth::user()->full_name }} - {{ Auth::user()->user_type_id }}</a>
        <a href=""> User Details</a>
        <a href="{{ url('location') }}"> Location</a>
        <a href="{{ url('/backups')}}">Backup</a>
        <a href="{{ url('/changepassword')}}">Change Password</a>
        @if (Auth::user()->colour == 1)
            <a style="cursor:pointer" onclick="bgfavorites(this,2)">Light Mode</a>
          @else
            <a style="cursor:pointer" onclick="bgfavorites(this,1)">Dark Mode</a>
          @endif
        <a href="{{url('/logout')}}">Log Out</a>
        </div>
      </div>
    </li>
    </ul>
  </nav>

 </center>
