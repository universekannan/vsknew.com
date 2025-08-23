
<!DOCTYPE html>
<html>
<head>
<title>Page Title</title>
</head>
<body>

<section class="content">
<div class="card card-primary card-outline card-outline-tabs">
<div class="card-header p-0 border-bottom-0">
   
     
<div class="card-body">
<style>
div.fontsize {
  font-size: 60px;
}

div.fontprice {
  font-size: 75px;
}
</style>

    <?php $__currentLoopData = $managebanner; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $managebanners): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                
 <div class="col-md-12 text-center">
     
 </div>

 <div class="invoice p-3 mb-3">

<div class="row">
<div class="col-12 text-center" style="text-align: center;">
<div class="fontsize">
<?php echo e($managebanners->name); ?>

</div>
 <img style="width:100%" src="https://vskbrothers.com/image/<?php echo $managebanners->image; ?>" />
<div class="fontprice">
Rs <?php echo e($managebanners->price); ?>

</div>
</div>
</div>
</div>

  <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>

 

</div>
</div>
</section>
</div>

</body>
</html>



<?php /**PATH C:\xampp\htdocs\vsknew.com\resources\views/products/banner.blade.php ENDPATH**/ ?>