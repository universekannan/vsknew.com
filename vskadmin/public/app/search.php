<?php
session_start();
?>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>Hindustan Deal</title>
<base  />
  <link rel="manifest" href="/manifest.json">
  <link rel="stylesheet" href="css/style.css">
  <link rel="icon" href="favicon.ico" type="image/x-icon" />
  <link rel="apple-touch-icon" href="images/hello-icon-152.png">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta name="theme-color" content="white"/>
  <meta name="apple-mobile-web-app-capable" content="yes">
  <meta name="apple-mobile-web-app-status-bar-style" content="black">
  <meta name="apple-mobile-web-app-title" content="Hindustan Deal">
  <meta name="msapplication-TileImage" content="images/hello-icon-144.png">
  <meta name="msapplication-TileColor" content="#FFFFFF">
<meta name="description" content="Hindustan Deal" />
<script src="catalog/view/javascript/jquery/jquery-2.1.1.min.js" type="text/javascript"></script>
<link href="catalog/view/javascript/bootstrap/css/bootstrap.min.css" rel="stylesheet" media="screen" />
<script src="catalog/view/javascript/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
<script src="catalog/view/javascript/inspire/product-slider-zoom/jquery.elevatezoom.js" type="text/javascript"></script>
<link href="catalog/view/theme/default/stylesheet/font-awesome.min.css" rel="stylesheet" type="text/css" />
<link href="https://fonts.googleapis.com/css?family=Open+Sans:400,400i,300,700" rel="stylesheet" type="text/css" />
<link href="catalog/view/theme/default/stylesheet/stylesheet.css" rel="stylesheet">
<script src="catalog/view/javascript/countdown/jquery.plugin.min.js" type="text/javascript"></script>
<script src="catalog/view/javascript/countdown/jquery.countdown.min.js" type="text/javascript"></script>
<link href="catalog/view/javascript/jquery/swiper/css/owl.carousel.css" type="text/css" rel="stylesheet" media="screen" />
<link href="catalog/view/javascript/jquery/swiper/css/owl.theme.css" type="text/css" rel="stylesheet" media="screen" />
<link href="catalog/view/javascript/jquery/swiper/css/swiper.min.css" type="text/css" rel="stylesheet" media="screen" />
<link href="catalog/view/javascript/jquery/swiper/css/opencart.css" type="text/css" rel="stylesheet" media="screen" />
<link href="catalog/view/javascript/jquery/swiper/css/css/owl.carousel.css" type="text/css" rel="stylesheet" media="screen" />
<link href="catalog/view/javascript/jquery/swiper/css/css/owl.theme.css" type="text/css" rel="stylesheet" media="screen" />
<link href="catalog/view/javascript/jquery/magnific/magnific-popup.css" type="text/css" rel="stylesheet" media="screen" />
<link href="catalog/view/theme/default/stylesheet/inspirenewsletter.css" type="text/css" rel="stylesheet" media="screen" />
<script src="catalog/view/javascript/blog/lightbox-2.6.min.js" type="text/javascript"></script>
<link href="catalog/view/javascript/blog/lightbox.css" rel="stylesheet" type="text/css" />

<script src="catalog/view/javascript/inspire/custom.js" type="text/javascript"></script>

<script src="catalog/view/javascript/jquery/swiper/js/owl.carousel.min.js" type="text/javascript"></script>
<script src="catalog/view/javascript/jquery/swiper/js/swiper.jquery.js" type="text/javascript"></script>
<script src="catalog/view/javascript/jquery/magnific/jquery.magnific-popup.min.js" type="text/javascript"></script>
<script src="catalog/view/javascript/jquery/inspirequickview.js" type="text/javascript"></script>
<script src="catalog/view/javascript/jquery/inspirenewsletter.js" type="text/javascript"></script>
<script src="catalog/view/javascript/common.js" type="text/javascript"></script>

</head>
<body>
<div class="allmenu">
  <div class="container">
    <div class="ban-top">
	   	<div class="container">
				<nav class="navbar navbar-inverse navbar-fixed-top">  
          <div class=" flex justify-content-between ">
           
 <a class="navbar-brand " href="category.php"><img src="images/icon/category.png" width="50" height="50" alt=""></a>

   <form action="" method="post">
	            <input autofocus="autofocus" type="text" name="search" id="search" class="form-control" placeholder="Search">                                     
      </form>
	  
   <a class="navbar-brand " href="search.php"><img src="images/icon/back.png" width="50" height="50" alt=""></a>
</div>
<span id="add_alert" class="btn btn-block btn-success font-weight-bold" style="display: none">ITEM ADDED TO CART</span>
				</nav>
	    </div>
	 </div>
<script>
	function goBack() {
  window.history.back();
}
function goForward() {
  window.history.forward();
}
</script>
</br>
</br></br>

<div id="common-hom"">
  <div class="row">
    <div id="product-display">
    </div>
  </div>
</div>
</div>
</div>
</br>
<?php include("footer.php"); ?>
<script type="text/javascript">
  function add_order(id,name,price,image,admin_margin){
  	let products = [];
	if(localStorage.getItem('products')){
		products = JSON.parse(localStorage.getItem('products'));
	}	

	var exists =false;
	var qty = 0;
	var rate = 0;
  var amount = 0;
  var admin_amount = 0;
	for (i = 0; i < products.length; i++) {
		if(products[i]["id"]==id){
			exists = true;
			qty = products[i]["qty"];
			rate = products[i]["price"];
			qty++;
			products[i]["qty"] = qty;
      amount = rate * qty;
      admin_amount = admin_margin * qty;
      products[i]["amount"] = amount;
      products[i]["admin_amount"] = admin_amount;
		}
	}

	if(!exists){
		products.push({'id' : id, 'name' : name, 'image' : image, 'price' : price, 'qty' : 1 , "amount" : price });
  	}

  	localStorage.setItem('products', JSON.stringify(products));

	let storageProducts = JSON.parse(localStorage.getItem('products'));
	$("#add_alert").slideDown(2000);
	$("#add_alert").slideUp(2000);
  }	

  function load_products(){
	var search_string = "";
	search_string=$("#search").val();
	
	var data = {
	  search : search_string
	}
    $.ajax({
      url: "https://vskbrothers.com/api/search.php",
      type: "POST",
      data: JSON.stringify(data),
      dataType: 'json',
      contentType: 'application/json',
      success: function (products) {
        //console.log(products);
        $("#product-display").html("");
        var html='';
        for (var i = 0; i < products.length; i++){
        var obj = products[i];
		 html+='<div class="product-layout product-list col-xs-12">';
        html+='<div class="product-thumb transition">';
        html+='<div class="image"><a href="product.php?id='+obj["product_id"]+'"><img width="100" height=100" src="https://vskbrothers.com/image/'+obj["image"]+'" alt="'+obj["name"]+'" title="'+obj["name"]+'" class="img-responsive center-block" /></a></div>';
        html+='<div class="caption text-center">';
        html+='<h4><a href="product.php?id='+obj["product_id"]+'">'+obj["name"]+'</a></h4>';
        var price = parseFloat(obj["price"]);
        price = price.toFixed(2);
        html+='<p class="price">&#2352;&nbsp;'+price+'</p>';
        html+='<div>';
        html += "<a onclick='add_order("+obj["product_id"]+",\""+obj["name"]+"\","+obj["price"]+",\""+obj["image"]+"\",\""+obj["admin_margin"]+"\")' class='btn btn-danger btn-large cart-button' >Add to cart<a/>";
        html+='</div>';
        html+='</div>';
        html+='</div>';
        html+='</div>';
		}
		$("#product-display").append(html);
      },
      error : function(attrValue){
        //console.log(error);
      }
	});
  }
  $(document).ready(function () {
  	$("#search").keyup(function(){
	    load_products();  
  	});
  });
</script>


</body>

</html>