<?php
$curl = curl_init();
curl_setopt($curl, CURLOPT_URL, "https://vskbrothers.com/api/shipping.php");
curl_setopt($curl, CURLOPT_RETURNTRANSFER, 1);
$output = curl_exec($curl);
curl_close($curl);
$charge = json_decode($output);
//$charge = $charge->charge;
$charge = '0';

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
        <th width="50px">Amount</th>
        <th width="50px">&nbsp;</th>
      </tr>
    </thead>
    <tbody id="shopping_cart"></tbody>
  </table>
</div>
</div>
</div>
    <?php include("footer.php"); ?>
</div>
</div>
<script>

var customer_id = localStorage.getItem('customer_id');
    var charges=0;
  charges = <?php echo $charge; ?>;
  function remove_item(row,id){
    var total = 0.0;
    $("#addr" + row).remove();
    let storageProducts = JSON.parse(localStorage.getItem('products'));
    var row_count = 0;
    for (i = 0; i < storageProducts.length; i++) {
      if(storageProducts[i]["id"]==id){
        storageProducts[i]["qty"] = 0;
        storageProducts[i]["amount"] = 0;
      }else{
        if(storageProducts[i]["qty"]>0){
          row_count++;
        }
        total = total + storageProducts[i]["amount"];
      }
    }
    $(".total").html("&#2352;&nbsp;"+total);
    $(".net_total").html("&#2352;&nbsp;"+(total+charges));    
    localStorage.setItem('products', JSON.stringify(storageProducts));
    if(row_count==0){
      var html = '<tr><td class="invert" style="text-align:center;font-weight:bold !important" align="center" colspan="5">Your cart is empty</td></tr>';
        $("#shopping_cart").html(html);
    }
  }

  function plus_item(row,id,self){
    var total = 0.0;
    var divUpd = $(self).parent().find('.value');
    var divAmt = $(self).parent().parent().find('.amount');
    newVal = parseInt(divUpd.text(), 10) + 1;
    divUpd.text(newVal);
    let storageProducts = JSON.parse(localStorage.getItem('products'));
    for (i = 0; i < storageProducts.length; i++) {
      if(storageProducts[i]["id"]==id){
        storageProducts[i]["qty"] = newVal;
        storageProducts[i]["amount"] = storageProducts[i]["qty"] * storageProducts[i]["price"];
        divAmt.html("&#2352;&nbsp;"+storageProducts[i]["amount"]);
      }
      total = total + storageProducts[i]["amount"];
    }
    localStorage.setItem('products', JSON.stringify(storageProducts));
    $(".total").html("&#2352;&nbsp;"+total);
    $(".net_total").html("&#2352;&nbsp;"+(total+charges));
  }

  function minus_item(row,id,self){
    var total = 0.0;
    var divUpd = $(self).parent().find('.value');
    var divAmt = $(self).parent().parent().find('.amount');
    newVal = parseInt(divUpd.text(), 10) - 1;
    if (newVal >= 1) {
      divUpd.text(newVal);
      let storageProducts = JSON.parse(localStorage.getItem('products'));
      for (i = 0; i < storageProducts.length; i++) {
        if(storageProducts[i]["id"]==id){
          storageProducts[i]["qty"] = newVal;
          storageProducts[i]["amount"] = storageProducts[i]["qty"] * storageProducts[i]["price"];
          divAmt.html("&#2352;&nbsp;"+storageProducts[i]["amount"]);
        }
        total = total + storageProducts[i]["amount"];
      }
      localStorage.setItem('products', JSON.stringify(storageProducts));
      $(".total").html("&#2352;&nbsp;"+total);
      $(".net_total").html("&#2352;&nbsp;"+(total+charges));
    }
  }


  $(document).ready(function () {
    let products = [];
    if(localStorage.getItem('products')){
      products = JSON.parse(localStorage.getItem('products'));
    } 
    var total = 0.0;
    var html = '';
    var cart = false;
    for (i = 0; i < products.length; i++) {
      if(products[i]["qty"]>0){
        cart=true;
        html += '<tr id="addr'+i+'" class="rem1">';
        //html += '<td class="invert-image">';
        //html += '<img src="https://vskbrothers.com/image/'+products[i]["image"]+'" alt=" " class="img-responsive">';
        //html += '</td>';
        products[i]["name"] = products[i]["name"].substr(0,20);
        html += '<td class="hscroll">'+products[i]["name"]+'</td>';
                html += '<td class="invert">';
        html += "<a onclick='minus_item("+i+","+products[i]["id"]+",this)' class='btn btn-danger btn-xs'>-</a>";
        html += '<span class="value">'+products[i]["qty"]+'</span>';
        html += "<a onclick='plus_item("+i+","+products[i]["id"]+",this)' class='btn btn-danger btn-xs'>+</a>";
        html += '</td>';

        html += '<td style="text-align:right" class="invert amount">&#2352;&nbsp;'+products[i]["amount"]+'</td>';
        html += '<td style="text-align: right">';
        html += '<div class="rem">';
        html += "<a onclick='remove_item("+i+","+products[i]["id"]+")' class='btn btn-danger btn-xs'>X</a>";
        html += '</div>';
        html += '</td>';
        html += '</tr>';
        total = total + products[i]["amount"]; 
      }
    }
    if(cart==true){
    html += '<tr><td class="invert" style="text-align:right !important" align="right" colspan="2">Sub Total</td>';
    html += '<td style="text-align: right" class="total invert font-weight-bold" >&#2352;&nbsp;'+total+'</td>';
    html += '<td class="invert" ></td></tr>';
    html += '<tr><td class="invert" style="text-align:right !important" align="right" colspan="2">Delivery Charges</td>';
    html += '<td style="text-align: right" class="charges invert font-weight-bold" >&#2352;&nbsp;'+(charges)+'</td>';
    html += '<td class="invert" ></td></tr>';
    html += '<tr><td class="invert" style="text-align:right;font-weight:bold !important" align="right" colspan="2">Total</td>';
    html += '<td style="font-weight:bold !important;text-align:right" class="net_total invert font-weight-bold" >&#2352;&nbsp;'+(total+charges)+'</td>';
    html += '<td class="invert" ></td></tr>';
  if(customer_id=='0' || customer_id == null){
    html += '<tr><td style="text-align:center;" colspan="4"><a href="account.php" class="btn btn-success">Login</a></td></tr>';
    }else{
    html += '<tr><td style="text-align:center;" colspan="4"><a href="order.php" class="btn btn-success">Checkout</a></td></tr>';
    }
    }else{
      html += '<tr><td class="invert" style="text-align:center;font-weight:bold !important" align="center" colspan="5">Your cart is empty</td></tr>';
    }
    
      $("#shopping_cart").html(html);
    });
    </script>
  

</body></html>
 
 