
<?php $__env->startSection('content'); ?>
<section class="content">
   <div class="col-12">
      <section class="content">
         <div class="container-fluid">
            <div class="row">
			<div class="col-lg-3 col-6">
            <!-- small box -->
            <div class="small-box bg-info">
              <div class="inner">
                <h3><?php echo e($Users); ?></h3>
                <p>Total Users</p>
              </div>
              <div class="icon">
               <i class="fas fa-shopping-cart"></i>
              </div>
              <a href="<?php echo e(url('users')); ?>" class="small-box-footer">More info <i class="fas fa-arrow-circle-right"></i></a>
            </div>
          </div>
			<div class="col-lg-3 col-6">
            <!-- small box -->
            <div class="small-box bg-info">
              <div class="inner">
                <h3><?php echo e($products); ?></h3>
                <p>Total Products</p>
              </div>
              <div class="icon">
               <i class="fas fa-shopping-cart"></i>
              </div>
              <a href="<?php echo e(url('products')); ?>" class="small-box-footer">More info <i class="fas fa-arrow-circle-right"></i></a>
            </div>
          </div>
		  
               <div class="col-lg-3 col-6">
                  <div class="small-box bg-warning">
                     <div class="inner">
                        <h3><?php echo e($purchase); ?></h3>
                        <p>Purchase</p>
                     </div>
                     <div class="icon">
                        <i class="fas fa-money-bill"></i>
                     </div>
                     <a href="<?php echo e(url('purchase')); ?>" class="small-box-footer">More info <i class="fas fa-arrow-circle-right"></i></a>
                  </div>
               </div>
               
			    <div class="col-lg-3 col-6">
                  <div class="small-box bg-success">
                     <div class="inner">
                        <h3><?php echo e($bill); ?></h3>
                        <p>Today No of Bills</p>
                     </div>
                     <div class="icon">
                        <i class="far fa-list-alt"></i>
                     </div>
              <a href="<?php echo e(url('products')); ?>" class="small-box-footer">More info <i class="fas fa-arrow-circle-right"></i></a>

                  </div>
               </div>
    	<?php if(Auth::user()->user_type_id == '2'): ?>
			    <div class="col-12 col-sm-6 col-md-3">
                            <div class="info-box">
                                 <span class="info-box-icon bg-primary  elevation-1"><i class="far fa-hand-point-right"></i></span>
                                <div class="info-box-content">
                                    <span class="info-box-text">Pending</span>
                                    <span class="info-box-number">
                                        <?php echo e($PendingCount); ?>

                                        <small><a
                                                href="<?php echo e(url('orderstatu')); ?>/1"
                                                class="small-box-footer float-sm-right"><i
                                                    class="fas fa-arrow-circle-right"></i></a>
                                        </small>
                                    </span>
                                </div>
                            </div>
                        </div>
				<?php endif; ?>		
              <?php $__currentLoopData = $order; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key => $ordertyps): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                        <div class="col-12 col-sm-6 col-md-3">
                            <div class="info-box">
                                <span class="info-box-icon <?php echo e($ordertyps['color']); ?> elevation-1"><i
                                        class="fas fa-heart"></i></span>
                                <div class="info-box-content">
                                    <span class="info-box-text"><?php echo e($ordertyps['order_status_name']); ?></span>
                                    <span class="info-box-number">
                                        <?php echo e($ordertyps['order_count']); ?>

									<?php if($ordertyps['order_count'] == 0): ?>
									<?php else: ?> 
                                        <small><a href="<?php echo e(url('orderstatu')); ?>/<?php echo e($ordertyps['order_status_id']); ?>" class="small-box-footer float-sm-right"><i class="fas fa-arrow-circle-right"></i></a></small>

								    <?php endif; ?>
                                    </span>
                                </div>
                            </div>
                        </div>
                    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?> 
					
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
<?php $__env->stopSection(); ?>
<script src="<?php echo asset('plugins/jquery/jquery.min.js'); ?>"></script>
<?php echo $__env->make('common.app', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\xampp\htdocs\vsknew.com\resources\views/dashboard.blade.php ENDPATH**/ ?>