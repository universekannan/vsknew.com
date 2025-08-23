 <aside class="main-sidebar sidebar-dark-primary elevation-4">
    <!-- Brand Logo -->
    <a href="#" class="brand-link">
<img src="<?php echo asset('dist/img/AdminLTELogo.png'); ?>" alt="Health Care Logo" class="brand-image img-circle elevation-3" style="opacity: .8">
  <span class="brand-text font-weight-light">Purchase</span>
    </a>
  
    <div class="sidebar">
<div class="user-panel mt-3 pb-3 mb-3 d-flex">
<div class="image">
<img src="<?php echo asset('dist/img/user2-160x160.jpg'); ?>" class="img-circle elevation-2" alt="User Image">
</div>
<div class="info">
<a href="#" class="d-block">Alexander Pierce</a>
</div>
</div>
      <nav class="mt-2">
        <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">

          <li class="nav-item">
            <a href="<?php echo e(url('/dashboard')); ?>" class="nav-link <?php echo e(Request::is('dashboard') ? 'active' : ''); ?>">
              <i class="nav-icon fas fa-tachometer-alt"></i>
              <p> Dashboard </p>
            </a>
          </li>

          <li class="nav-item">
<?php if(Auth::user()->user_type_id == 1): ?>
            <a href="<?php echo e(url('/users')); ?>" class="nav-link <?php echo e(Request::is('users') ? 'active' : ''); ?>">
              <i class="nav-icon fas fa-tachometer-alt"></i>
              <p> Shop </p>
            </a>
<?php else: ?>
            <a href="<?php echo e(url('/users')); ?>" class="nav-link <?php echo e(Request::is('users') ? 'active' : ''); ?>">
              <i class="nav-icon fas fa-users"></i>
              <p> Users </p>
            </a>
<?php endif; ?>
          </li>
		  
		  
<?php if(Auth::user()->user_type_id == 1 || Auth::user()->user_type_id == 2): ?>
          <li class="nav-item">
            <a href="<?php echo e(url('/products')); ?>" class="nav-link <?php echo e(Request::is('products') ? 'active' : ''); ?>">
              <i class="nav-icon fas fa-tachometer-alt"></i>
              <p> Products </p>
            </a>
          </li>
<?php endif; ?>

<?php if(Auth::user()->user_type_id == 1): ?>

          <li class="nav-item has-treeview <?php echo e(Request::is('barcodewith') || Request::is('barcodewithout') ? 'menu-open' : ''); ?>">
            <a href="#" class="nav-link">
              <i class="nav-icon fas fa-users"></i>
              <p>
                Bar Code
                <i class="right fas fa-angle-left"></i>
              </p>
            </a>
            <ul class="nav nav-treeview">
              <li class="nav-item">
            <a href="<?php echo e(url('/barcodewith')); ?>" class="nav-link <?php echo e(Request::is('users') ? 'active' : ''); ?>">
                  <i class="far fa-circle nav-icon"></i>
                  <p>With BarCode</p>
                </a>
              </li>
			    <li class="nav-item">
            <a href="<?php echo e(url('/barcodewithout')); ?>" class="nav-link <?php echo e(Request::is('users') ? 'active' : ''); ?>">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Without BarCode</p>
                </a>
              </li>
            </ul>
          </li>
<?php endif; ?>

<?php if(Auth::user()->user_type_id == 1): ?>
          <li class="nav-item">
            <a href="<?php echo e(url('/purchase')); ?>" class="nav-link <?php echo e(Request::is('purchase') ? 'active' : ''); ?>">
              <i class="nav-icon fas fa-tachometer-alt"></i>
              <p> Purchase </p>
            </a>
          </li>
<?php endif; ?>


<?php if(Auth::user()->user_type_id == 1): ?>
          <li class="nav-item">
            <a href="<?php echo e(url('/pending')); ?>" class="nav-link <?php echo e(Request::is('pending') ? 'active' : ''); ?>">
              <i class="nav-icon fas fa-tachometer-alt"></i>
              <p> Pending </p>
            </a>
          </li>
<?php endif; ?>

<?php if(Auth::user()->user_type_id == 1 || Auth::user()->user_type_id == 2): ?>
          <li class="nav-item">
            <a href="<?php echo e(url('/purchase')); ?> /<?php echo e(Auth::user()->shop_id); ?>" class="nav-link <?php echo e(Request::is('newbill') ? 'active' : ''); ?>">
              <i class="nav-icon fas fa-tachometer-alt"></i>
              <p> Purchase </p>
            </a>
          </li>
<?php endif; ?>

<?php if(Auth::user()->user_type_id == 1 || Auth::user()->user_type_id == 2): ?>
          <li class="nav-item">
            <a href="<?php echo e(url('/pending')); ?>" class="nav-link <?php echo e(Request::is('newbill') ? 'active' : ''); ?>">
              <i class="nav-icon fas fa-tachometer-alt"></i>
              <p> Print </p>
            </a>
          </li>
<?php endif; ?>

<?php if(Auth::user()->user_type_id == 1 || Auth::user()->user_type_id == 2 || Auth::user()->user_type_id == 3): ?>
<li class="nav-item has-treeview <?php echo e(Request::is('Orders') || Request::is('Pending') || Request::is('Processing') || Request::is('Complete') || Request::is('Shipped') ? 'menu-open' : ''); ?>">
            <a href="#" class="nav-link">
              <i class="nav-icon fas fa-users"></i>
              <p>
                Orders
                <i class="right fas fa-angle-left"></i>
              </p>
            </a>
            <ul class="nav nav-treeview">
			
              <li class="nav-item">
                <a href="<?php echo e(url('/orderstatu')); ?>/1" class="nav-link <?php echo e(Request::is('Pending') ? 'active' : ''); ?>">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Pending</p>
                </a>
              </li> 
              <li class="nav-item">
                <a href="<?php echo e(url('/orderstatu')); ?>/2" class="nav-link <?php echo e(Request::is('Processing') ? 'active' : ''); ?>">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Processing</p>
                </a>
              </li> 
              <li class="nav-item">
                <a href="<?php echo e(url('/orderstatu')); ?>/3" class="nav-link <?php echo e(Request::is('Shipped') ? 'active' : ''); ?>">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Shipped</p>
                </a>
              </li> 
              <li class="nav-item">
                <a href="<?php echo e(url('/orderstatu')); ?>/4" class="nav-link <?php echo e(Request::is('Complete') ? 'active' : ''); ?>">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Complete</p>
                </a>
              </li> 
			  
            </ul>
          </li>
		  
<?php endif; ?>

<?php if(Auth::user()->user_type_id == 1): ?>
          <li class="nav-item">
            <a href="<?php echo e(url('/approve')); ?>" class="nav-link <?php echo e(Request::is('approve') ? 'active' : ''); ?>">
              <i class="nav-icon fas fa-tachometer-alt"></i>
              <p> Stock </p>
            </a>
          </li>
<?php endif; ?>

<?php if(Auth::user()->user_type_id == 1 || Auth::user()->user_type_id == 2): ?>
          <li class="nav-item">
            <a href="<?php echo e(url('/newbill')); ?>" class="nav-link <?php echo e(Request::is('newbill') ? 'active' : ''); ?>">
              <i class="nav-icon fas fa-tachometer-alt"></i>
              <p> Billing </p>
            </a>
          </li>
<?php endif; ?>


<?php if(Auth::user()->user_type_id == 1 || Auth::user()->user_type_id == 2): ?>
          <li class="nav-item">
            <a href="<?php echo e(url('/billdetails')); ?>" class="nav-link <?php echo e(Request::is('billdetails') ? 'active' : ''); ?>">
              <i class="nav-icon fas fa-tachometer-alt"></i>
              <p> Bill Details </p>
            </a>
          </li>
<?php endif; ?>


          <li class="nav-item has-treeview <?php echo e(Request::is('users') || Request::is('users') || Request::is('users') || Request::is('users') ? 'menu-open' : ''); ?>">
            <a href="#" class="nav-link">
              <i class="nav-icon fas fa-users"></i>
              <p>
                VSK
                <i class="right fas fa-angle-left"></i>
              </p>
            </a>
            <ul class="nav nav-treeview">
              <li class="nav-item">
            <a href="<?php echo e(url('/users')); ?>" class="nav-link <?php echo e(Request::is('users') ? 'active' : ''); ?>">
                  <i class="far fa-circle nav-icon"></i>
                  <p>User Details</p>
                </a>
              </li>              <li class="nav-item">
            <a href="<?php echo e(url('/users')); ?>" class="nav-link <?php echo e(Request::is('users') ? 'active' : ''); ?>">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Backup</p>
                </a>
              </li>              <li class="nav-item">
            <a href="<?php echo e(url('/changepassword')); ?>" class="nav-link <?php echo e(Request::is('/changepassword') ? 'active' : ''); ?>">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Change Password</p>
                </a>
              </li>              <li class="nav-item">
            <a href="<?php echo e(url('/logout')); ?>" class="nav-link <?php echo e(Request::is('users') ? 'active' : ''); ?>">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Log Out</p>
                </a>
              </li>

            </ul>
          </li>



        </ul>
      </nav>
    </div>
  </aside>

<?php /**PATH C:\xampp\htdocs\vsknew.com\resources\views/common/sidebar.blade.php ENDPATH**/ ?>