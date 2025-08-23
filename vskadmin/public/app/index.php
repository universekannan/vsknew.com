<?php
session_start();
?>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>VSK Brothers</title>
<base  />
  <link rel="manifest" href="/manifest.json">
  <link rel="stylesheet" href="css/style.css">
  <link rel="icon" href="favicon.ico" type="image/x-icon" />
  <link rel="apple-touch-icon" href="images/hello-icon-152.png">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta name="theme-color" content="white"/>
  <meta name="apple-mobile-web-app-capable" content="yes">
  <meta name="apple-mobile-web-app-status-bar-style" content="black">
  <meta name="apple-mobile-web-app-title" content="Buytiq">
  <meta name="msapplication-TileImage" content="images/hello-icon-144.png">
  <meta name="msapplication-TileColor" content="#FFFFFF">
<meta name="description" content="Buytiq" />
<script src="catalog/view/javascript/jquery/jquery-2.1.1.min.js" type="text/javascript"></script>
<link href="catalog/view/javascript/bootstrap/css/bootstrap.min.css" rel="stylesheet" media="screen" />
<script src="catalog/view/javascript/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
<script src="catalog/view/javascript/inspire/product-slider-zoom/jquery.elevatezoom.js" type="text/javascript"></script>
<link href="catalog/view/theme/default/stylesheet/font-awesome.min.css" rel="stylesheet" type="text/css" />
<link href="http://fonts.googleapis.com/css?family=Open+Sans:400,400i,300,700" rel="stylesheet" type="text/css" />
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

<link href="http://templateinspire.com/opencart/Grocery/" rel="canonical" />
<link href="image/catalog/cart.png" rel="icon" />
</head>
<body>

<div class="allmenu">
  <div class="container">
  <div class="ban-top">
		<div class="container">
				<nav class="navbar navbar-inverse navbar-fixed-top">  

<div class=" flex justify-content-between ">

 <a class="navbar-brand " href="category.php"><img src="images/icon/category.png" width="50" height="50" alt=""></a>
<h3 style="color:white">VSK Brothers</h3>

 <a class="navbar-brand " href="search.php"><img src="images/icon/search.png" width="50" height="50" alt=""></a>
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
</br>
<div id="page-preloader" class="visible">
      <div class="preloader">
          <div id="loading-center-absolute">
                <div class="object" id="object_one"></div>
          </div>
      </div>
</div>
<div id="common-home" class="container-fluid">
  <div class="row">
                <div id="content" class="col-sm-12">
<style>				

 /* slideshow  */
@keyframes slideshow {
	10% {left: 0;}
	20% {left: 0;}
	30% {left: -100%;}
	40% {left: -100%;}
	50% {left: -200%;}

}


#slider{overflow:hidden;width:50%;margin:5px auto; border: 5px solid transparent;border-radius: 10px;}
#slider figure img{width:20%;float:left;}
#slider figure{position:relative;width:500%;margin:0;left:0;text-align:left;animation:20s slideshow infinite}

@media screen and (max-width: 767px) {#slider {overflow: hidden; width: 100%; margin: 0 auto;}}
	</style>			

		
    <div id="slider">
        <figure>
		 <div id="banner_image"></div>
        </figure>
    </div>

</br>
<b>Combo offers</b>
    <div id="product-div"></div>

  </div>
  	<hr>

</div>
  <div class="row">
                <div id="content" class="col-sm-12">
				

</br>
 <b> Featured</b>
    <div id="featured"></div>

  </div>

</div>
  
                
              
         </div>
</div>
    
  </div>
</div>
</br>
</br>
<style type="text/css">
	
	.justify-content-start {
  -webkit-box-pack: start !important;
  -ms-flex-pack: start !important;
  justify-content: flex-start !important;
}

.flex
{
	display: flex;
	flex-wrap: wrap;
}

.justify-content-end {
  -webkit-box-pack: end !important;
  -ms-flex-pack: end !important;
  justify-content: flex-end !important;
}

.justify-content-center {
  -webkit-box-pack: center !important;
  -ms-flex-pack: center !important;
  justify-content: center !important;
}

.justify-content-between {
  -webkit-box-pack: justify !important;
  -ms-flex-pack: justify !important;
  justify-content: space-between !important;
}

.justify-content-around {
  -ms-flex-pack: distribute !important;
  justify-content: space-around !important;
}

.align-items-start {
  -webkit-box-align: start !important;
  -ms-flex-align: start !important;
  align-items: flex-start !important;
}

.align-items-end {
  -webkit-box-align: end !important;
  -ms-flex-align: end !important;
  align-items: flex-end !important;
}
</style>

<nav class="navbar navbar-inverse navbar-fixed-bottom">
	<div class=" flex justify-content-between ">
 <a class="navbar-brand " href="index.php"><img src="images/icon/home.png" width="50" height="50" alt=""></a>
 <!--<div class=" flex justify-content-between ">-->
 <a class="navbar-brand " href="cart.php"><img src="images/icon/cart.png" width="50" height="50" alt=""></a>
 <a class="navbar-brand " href="account.php"><img src="images/icon/account.png" width="50" height="50" alt=""></a>

 <a  class="navbar-brand" href="more.php"><img src="images/icon/more.png" width="50" height="50" alt=""></a>
</div>
</nav> 
  <script src="sw.js"></script>
  <script src="js/main.js"></script>
	<script>
function load_products(){
  var data = {
    category_id : 34
  }
    $.ajax({
      url: "https://vskbrothers.com/api/category-products.php",
      type: "POST",
      data: JSON.stringify(data),
      dataType: 'json',
      contentType: 'application/json',
      success: function (products) {
        //console.log(products);
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
        html += "<a onclick='add_order("+obj["product_id"]+",\""+obj["name"]+"\","+obj["price"]+",\""+obj["image"]+"\")' class='btn btn-danger btn-large cart-button' >Add to cart<a/>";
        html+='</div>';
        html+='</div>';
        html+='</div>';
        html+='</div>';
    }
    $("#product-div").append(html);
      },
      error : function(attrValue){
        //console.log(error);
      }
  });
  }
  $(document).ready(function () {
    load_products();  
  });
</script>
	<script>

function load_banner(){
  var data = {
    category_id : 34
  }
    $.ajax({
      url: "https://vskbrothers.com/api/homepage-banner.php",
      type: "POST",
      data: JSON.stringify(data),
      dataType: 'json',
      contentType: 'application/json',
      success: function (products) {
        //console.log(products);
        var html='';
    for (var i = 0; i < products.length; i++){
        var obj = products[i];
        html+='<img src="https://vskbrothers.com/image/'+obj["image"]+'"/>';
    }
    $("#banner_image").append(html);
      },
      error : function(attrValue){
        //console.log(error);
      }
  });
  }
  $(document).ready(function () {
    load_banner();  
  });
</script>
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

  $(document).ready(function () {
    load_featured();    
  });
  function load_featured(){
    $.ajax({
          url: "https://vskbrothers.com/api/featured.php",
          type: "get",
          success: function (products) {
            products=JSON.parse(products);
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
		$("#featured").append(html);
      },
      error : function(attrValue){
          console.log(error);
      }
      });
  }
</script>
</body>
</html>
