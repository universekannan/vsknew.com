
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
     <a href="{{url('/user_type')}}"><label>User Type</label></a>
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
     <a href="{{ url('/purchase') }}/{{ Auth::user()->shop_id }}">
      <label>Purchase</label>
    </a>
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
        <a href="{{ url('orderstatu') }}/1">Pending</a>
        <a href="{{ url('orderstatu') }}/2">Processing</a>
        <a href="{{ url('orderstatu') }}/3">Shipped</a>
        <a href="{{ url('orderstatu') }}/4">Complete</a>
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
        <a href=""> User Details</a>
        <a href="{{ url('/backups')}}">Backup</a>
        <a href="">Change Password</a>
        <a href="{{url('/logout')}}">Log Out</a>
        </div>
      </div>
    </li>
    </ul>
  </nav>

 </center>
