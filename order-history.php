<?php
session_start();
?>

<!DOCTYPE html>
<!--[if IE]><![endif]-->
<!--[if IE 8 ]><html dir="ltr" lang="en" class="ie8"><![endif]-->
<!--[if IE 9 ]><html dir="ltr" lang="en" class="ie9"><![endif]-->
<!--[if (gt IE 9)|!(IE)]><!-->
<html dir="ltr" lang="en">
<!--<![endif]-->
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



</head>
<body>

<div class="allmenu">
  <div class="container">
     <?php include("other_header.php"); ?>
  
</br>
</br></br>
   
<style>
table {
  font-family: arial, sans-serif;
  border-collapse: collapse;
  width: 100%;
}

td, th {
  border: 1px solid #dddddd;
  text-align: left;
  padding: 8px;
}

tr:nth-child(even) {
  background-color: #dddddd;
}
</style>
<table>

    <div id="accordion_category"></div>

</table>


  </div>

</div>
</br>
</br>


	  <?php include("footer.php"); ?>
<script type="text/javascript">
  $(document).ready(function () {
    load_category();    
  });
  function load_category(){
    $.ajax({
          url: "https://vskbrothers.com/api/order-history.php",
          type: "get",
          success: function (category) {
            category=JSON.parse(category);
            var html='';
			 html += '<tr>';
				html += '<th>ID</th>';
				html += '<th>Date Time</th>';
				html += '<th>Status</th>';
				html += '<th>Total</th>';
				html += '<th>View</th>';
				html += '</tr>';
            for (var i = 0; i < category.length; i++){
              var obj = category[i];
			   
			    html += '<tr>';
				html += '<td>'+obj["order_id"]+'</td>';
				html += '<td>'+obj["date_added"]+'</td>';
				html += '<td>'+obj["order_status"]+'</td>';
				html += '<td>'+obj["total"]+'</td>';
				html += '<td><a href="order-detals.php?id='+obj["order_history_id"]+'">Vew</a></h4>';
				html += '</td>';
				html += '</tr>';
            }
            $("#accordion_category").append(html);
          },
          error : function(attrValue){
              console.log(error);
          }
      });
  }
</script>

</body></html>

