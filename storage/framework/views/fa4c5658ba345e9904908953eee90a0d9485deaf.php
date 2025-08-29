
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
     <a href="<?php echo e(url('/dashboard')); ?>">
	 
      <label>Dashboard</label>
	  
    </a>
</li>

<?php if(Auth::user()->user_type_id == 1 || Auth::user()->user_type_id == 2): ?>
<li class="nav-item d-none d-sm-inline-block col-md-1">
<div class="dropdown">
<?php if(Auth::user()->user_type_id == 1): ?>
<a class="dropbtn"><label>Shop</label></a>
<?php elseif(Auth::user()->user_type_id == 2): ?>
<a class="dropbtn"><label>Users</label></a>
<?php endif; ?>
 <div class="dropdown-content">
     <a href="<?php echo e(url('/users')); ?>"><label>Users</label></a>
     <a href="<?php echo e(url('/users/permissions')); ?>"><label>User Type</label></a>
  </div>
  </div>
</li>
<?php endif; ?>
<?php if(Auth::user()->user_type_id == 1 || Auth::user()->user_type_id == 2): ?>
<li class="nav-item d-none d-sm-inline-block col-md-1">
     <a href="<?php echo e(url('/products')); ?>">
      <label>Products</label>
    </a>
</li>
<?php endif; ?>

<?php if(Auth::user()->user_type_id == 1): ?>
<li class="nav-item d-none d-sm-inline-block col-md-1">
<div class="dropdown">
<a class="dropbtn"><label>Bar Code</label></a>
 <div class="dropdown-content">
  <a href="<?php echo e(url('/barcodewith')); ?>">With BarCode</a>
  <a href="<?php echo e(url('/barcodewithout')); ?>">Without BarCode</a>
  </div>
  </div>
</li>
<?php endif; ?>

<li class="nav-item d-none d-sm-inline-block col-md-1">
  <div class="dropdown">
  <a class="dropbtn"><label>Purchase</label></a>
   <div class="dropdown-content">
       <a href="<?php echo e(url('/purchase')); ?>"><label>Purchase</label></a>
       <a href="<?php echo e(url('/low_stock')); ?>"><label>Low Stock</label></a>
    </div>
  </div>
</li>

<?php if(Auth::user()->user_type_id == 2): ?>
<li class="nav-item d-none d-sm-inline-block col-md-1">
     <a href="<?php echo e(url('/pending')); ?>">
      <label>Print</label>
    </a>
</li>

<?php endif; ?>
<li class="nav-item d-none d-sm-inline-block col-md-1">
      <div class="dropdown">
        <a class="dropbtn"><label>Orders</label></a>
        <div class="dropdown-content">
<?php $__currentLoopData = $orderstatus; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $status): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
        <a href="<?php echo e(url('orderstatu')); ?>/<?php echo e($status->order_status_id); ?>"><?php echo e($status->name); ?></a>
<?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>	
        </div>
      </div>
    </li>
	
<li class="nav-item d-none d-sm-inline-block col-md-1">
     <a href="<?php echo e(url('/approve')); ?>/<?php echo e(Auth::user()->shop_id); ?>">
      <label>Stock</label>
    </a>
</li>

<?php if(Auth::user()->user_type_id != 1): ?>
<li class="nav-item d-none d-sm-inline-block col-md-1">
     <a href="<?php echo e(url('/newbill')); ?>">
      <label>Billing</label>
    </a>
</li>
<?php endif; ?>

<?php if(Auth::user()->user_type_id != 1): ?>
<li class="nav-item d-none d-sm-inline-block col-md-1">
     <a href="<?php echo e(url('/billdetails')); ?>/<?php echo e(date('Y-m-d')); ?>/<?php echo e(date('Y-m-d')); ?>">
      <label>Bill Details</label>
    </a>
</li>
<?php endif; ?>

<li class="nav-item d-none d-sm-inline-block col-md-1">
      <div class="dropdown">
        <a class="dropbtn"><label>Log Out</label></a>
        <div class="dropdown-content">
        <a href=""> <?php echo e(Auth::user()->full_name); ?> - <?php echo e(Auth::user()->user_type_id); ?></a>
        <a href=""> User Details</a>
        <a href="<?php echo e(url('location')); ?>"> Location</a>
        <a href="<?php echo e(url('/backups')); ?>">Backup</a>
        <a href="<?php echo e(url('/changepassword')); ?>">Change Password</a>
        <?php if(Auth::user()->colour == 1): ?>
            <a style="cursor:pointer" onclick="bgfavorites(this,2)">Light Mode</a>
          <?php else: ?>
            <a style="cursor:pointer" onclick="bgfavorites(this,1)">Dark Mode</a>
          <?php endif; ?>
        <a href="<?php echo e(url('/logout')); ?>">Log Out</a>
        </div>
      </div>
    </li>
    </ul>
  </nav>

 </center>
<?php /**PATH C:\xampp\htdocs\vsknew.com\resources\views/common/header.blade.php ENDPATH**/ ?>