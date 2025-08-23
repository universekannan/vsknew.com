<?php
session_start();
?>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>Shopping Cart</title>
<script src="catalog/view/javascript/jquery/jquery-2.1.1.min.js" type="text/javascript"></script>
<link href="catalog/view/javascript/bootstrap/css/bootstrap.min.css" rel="stylesheet" media="screen" />
<script src="catalog/view/javascript/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
<script src="catalog/view/javascript/inspire/product-slider-zoom/jquery.elevatezoom.js" type="text/javascript"></script>
<link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
<link href="//fonts.googleapis.com/css?family=Open+Sans:400,400i,300,700" rel="stylesheet" type="text/css" />
<link href="catalog/view/theme/default/stylesheet/stylesheet.css" rel="stylesheet">
<script src="catalog/view/javascript/countdown/jquery.plugin.min.js" type="text/javascript"></script>
<script src="catalog/view/javascript/countdown/jquery.countdown.min.js" type="text/javascript"></script>
<link href="catalog/view/javascript/jquery/magnific/magnific-popup.css" type="text/css" rel="stylesheet" media="screen" />
<link href="catalog/view/theme/default/stylesheet/inspirenewsletter.css" type="text/css" rel="stylesheet" media="screen" />
<script src="catalog/view/javascript/blog/lightbox-2.6.min.js" type="text/javascript"></script>
<link href="catalog/view/javascript/blog/lightbox.css" rel="stylesheet" type="text/css" />

<script src="catalog/view/javascript/inspire/custom.js" type="text/javascript"></script>

<script src="catalog/view/javascript/jquery/magnific/jquery.magnific-popup.min.js" type="text/javascript"></script>
<script src="catalog/view/javascript/jquery/inspirequickview.js" type="text/javascript"></script>
<script src="catalog/view/javascript/jquery/inspirenewsletter.js" type="text/javascript"></script>
<script src="catalog/view/javascript/common.js" type="text/javascript"></script>

<link href="http://templateinspire.com/opencart/Grocery/image/catalog/cart.png" rel="icon" />

<style>
.hscroll {
  overflow-x: auto; /* Horizontal */
}
</style>
</head>
<body>
<div class="allmenu">
  <div class="container"> 
     <?php include("other_header.php"); ?>

</br>
</br></br>
<div class="container">
<div class="row">  
<div class="table-responsive">
  <table class="table">
    <thead>
      <tr>
        <th width="100">Name</th>
         <th width="50px">Qty</th>
        <th width="50px">Price</th>
        <th width="50px">Amount</th>
        <th width="50px">&nbsp;</th>
      </tr>
    </thead>
    <tbody id="orderHistory"></tbody>
  </table>
</div>
</div>
</div>
    <?php include("footer.php"); ?>
</div>
</div>
<script type="text/javascript">
  $(document).ready(function () {
    load_category();    
  });
  function load_category(){
		const queryString = window.location.search;
		const urlParams = new URLSearchParams(queryString);
		const order_id = urlParams.get('id');
    $.ajax({
          url: "https://vskbrothers.com/api/order-history-details.php",
          type: "get",
		  data: { order_id: order_id },
          success: function (category) {
            category=JSON.parse(category);
            var html='';
			 var total = 0;
            for (var i = 0; i < category.length; i++){
              var obj = category[i];
			   total += parseFloat(obj["price"]) * obj["quantity"];

			    html += '<tr>';
				html += '<td>'+obj["proname"]+'</td>';
				html += '<td>'+obj["quantity"]+'</td>';
				html += '<td>'+obj["price"]+'</td>';
				html += '<td>'+obj["total"]+'</td>';
				html += '</tr>';
            }
				html += '<tr>';
				html += '<td colspan="3">Total</td>';
				html += '<td>'+total+'</td>';
				html += '</tr>';
            $("#orderHistory").append(html);
          },
          error : function(attrValue){
              console.log(error);
          }
      });
  }
</script>



</body></html>
 