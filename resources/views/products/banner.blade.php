
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

    @foreach($managebanner as $managebanners)
                
 <div class="col-md-12 text-center">
     
 </div>

 <div class="invoice p-3 mb-3">

<div class="row">
<div class="col-12 text-center" style="text-align: center;">
<div class="fontsize">
{{ $managebanners->name }}
</div>
 <img style="width:100%" src="https://vskbrothers.com/image/<?php echo $managebanners->image; ?>" />
<div class="fontprice">
Rs {{ $managebanners->price }}
</div>
</div>
</div>
</div>

  @endforeach

 

</div>
</div>
</section>
</div>

</body>
</html>



