<?php
$charge=0;
$curl = curl_init();
curl_setopt($curl, CURLOPT_URL, "http://localhost/vskbrothers.com/api/shipping.php");
curl_setopt($curl, CURLOPT_RETURNTRANSFER, 1);
$output = curl_exec($curl);
curl_close($curl);
$charge = json_decode($output);
$charge = $charge->charge;
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
    <div class="ban-top">
      <div class="container">
        <nav class="navbar navbar-inverse navbar-fixed-top">  
          <div class=" flex justify-content-between ">
             <a class="navbar-brand " href="category.php"><img src="images/icon/category.png" width="50" height="50" alt=""></a>

             <a class="navbar-brand " href="search.php"><img src="images/icon/search.png" width="50" height="50" alt=""></a>

               <a class="navbar-brand " href="search.php"><img src="images/icon/back.png" width="50" height="50" alt=""></a>
          </div>
          <span id="add_alert" class="text-center btn btn-block btn-success font-weight-bold" style="display:none;text-align:center">ITEM ADDED TO CART</span>
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
<div class="container">
<div class="container">
			<div class="form-group">
              <label for="firstname"><span style="color:red;font-weight: bold"></span>Select Addrress</label>
              <select class="form-control" id="selectAddress" >
				<option>Select</option>
				<option value="1">New</option>
			  </select>
          </div>
      <form>
      <div class="form-group">
              <label for="firstname"><span style="color:red;font-weight: bold">*</span>Firstname</label>
              <input autofocus type="text" class="form-control" id="firstname" placeholder="Firstname" maxlength="30" required>
          </div>
          <div class="form-group">
              <label for="lastname"><span style="color:red;font-weight: bold">*</span>Lastname</label>
              <input type="text" class="form-control" id="lastname" placeholder="Lastname" maxlength="30" required>
          </div>
      <div class="form-group">
              <label for="telephone"><span style="color:red;font-weight: bold">*</span>Mobile No</label>
              <input type="text" class="form-control Number" id="telephone" placeholder="Mobile No" maxlength="10" required>
          </div>
          <div class="form-group">
              <label for="telephone"><span style="color:red;font-weight: bold">*</span>Email</label>
              <input type="email" class="form-control" id="email" placeholder="Email" maxlength="50" required>
          </div>
          <div class="form-group">
              <label for="address_1"><span style="color:red;font-weight: bold">*</span>Address1</label>
              <input type="text" class="form-control" id="address_1" placeholder="Address1" maxlength="128" required>
          </div>  
          <div class="form-group">
              <label for="address_2">Address2</label>
              <input type="text" class="form-control" id="address_2" placeholder="Address2" maxlength="128" >
          </div>  
          <div class="form-group">
              <label for="postcode">Pincode</label>
              <input type="text" class="form-control Number" id="postcode" placeholder="Pincode" maxlength="10" >
          </div>                        
      <div class="row">
        <div class="col-md-12 text-center">
          <a onclick="confirm_order()" class="btn btn-success">Confirm Order</a>
        </div>
      </div>
          <div class="form-group">
              <label for="dummy"></label>
              <input type="hidden" class="form-control Number" id="dummy"  maxlength="10" >
          </div>        
          </form>
    </div></div>
</div>
</div>
    <?php include("footer.php"); ?>
<script>

var customer_id = localStorage.getItem('customer_id');
      $('.Number').keypress(function (event) {
      var keycode = event.which;
      if (!(event.shiftKey == false && (keycode == 46 || keycode == 8 || keycode == 37 || keycode == 39 || (keycode >= 48 && keycode <= 57)))) {
        event.preventDefault();
      }
    });

    function validateEmail(email) 
    {
        var re = /\S+@\S+\.\S+/;
        return re.test(email);
    }

    if(localStorage.getItem('customer_id')){
      customer_id = localStorage.getItem('customer_id');
    }
    console.log("id"+customer_id);

    function confirm_order(){
      var cart = new Array();
      var customer_id=localStorage.getItem('customer_id');
      var firstname = $("#firstname").val();
      var lastname = $("#lastname").val();
      var telephone = $("#telephone").val();
      var email = $("#email").val();
      var address_1 = $("#address_1").val();
      if(firstname.trim()==""){
        alert("Enter Firstname");
        $("#firstname").focus();
        return;
      }
      if(lastname.trim()==""){
        alert("Enter Lastname");
        $("#lastname").focus();
        return;
      }
      if(telephone.trim()==""){
        alert("Enter Mobile No");
        $("#telephone").focus();
        return;
      }
      if(email.trim()==""){
        alert("Enter Email");
        $("#email").focus();
        return;
      }
      if(!validateEmail(email.trim())){
        alert("Enter a Valid Email");
        $("#email").focus();
        return; 
      }
      if(address_1.trim()==""){
        alert("Enter Address");
        $("#address_1").focus();
        return;
      }
    if(address_1.trim().length < 3){
        alert("Address should have minimum 3 characters");
        $("#address_1").focus();
        return;
      }
      var address_2 = $("#address_2").val().trim();
      var city = "";
      var postcode = $("#postcode").val().trim();
      let products = [];
    if(localStorage.getItem('products')){
      products = JSON.parse(localStorage.getItem('products'));
    } 
    for (i = 0; i < products.length; i++) {
      if(products[i]["qty"]>0){
            var record = {
              'product_id': products[i]["id"],
              'name': products[i]["name"],
              'admin_amount': products[i]["admin_amount"],
              'quantity': products[i]["qty"],
              'price': products[i]["price"]
            };
            cart.push(record);
      }
    }
      //var cart_data = JSON.stringify(cart);
    var data = {
      customer_id : customer_id,
      cart : cart,
      firstname : firstname,
      lastname : lastname,
      telephone : telephone,
      email : email,
      address_1 : address_1,
      address_2 : address_2,
      city : city,
      postcode : postcode
    }
    var customer_id=0;
    if(localStorage.getItem('customer_id')){
      customer_id = localStorage.getItem('customer_id');
    }
    if(customer_id=="0"){
      alert("Please login to proceed");
      window.location.href="account.php";
      return;
    }
	alert('ok');
    $.ajax({
        url: "https://vskbrothers.com/api/placeorder.php",
        type: "POST",
        data: JSON.stringify(data),
        dataType: 'json',
        contentType: 'application/json',
        success: function (response) {
			alert('success');
          localStorage.removeItem('products');
          alert("Your order id is "+response["order_id"]);
          window.location.href = "order_history.php";
        },
        error : function(attrValue){
          console.log(attrValue);
        }
    });
    }
	
	
	
	$.ajax({
    type: 'GET',
    url: "https://vskbrothers.com/api/get-address.php",
	data: { customer_id: customer_id },
    dataType: 'json', // Ensures the response is parsed as JSON automatically
    success: function (response) {
        console.log(response); // Check the response structure

        // Get the <select> element
        let selectElement = $('#selectAddress');

        // Clear existing options
        selectElement.empty();
		
		selectElement.append('<option value="">Select an option</option>');


        // Check if the response is an array
        if (Array.isArray(response)) {
            // Populate the dropdown with the received data
            response.forEach(function (item) {
                selectElement.append('<option value="' + item.order_id + '">' + item.firstname + '</option>');
            });

        } else {
            console.error('Response is not an array:', response);
        }
    },
    error: function (xhr, status, error) {
        console.error('AJAX error:', error);
    }
});

$(document).on('change', '#selectAddress', function () {
    var addrID = $(this).val(); 
    $.ajax({
        url: "https://vskbrothers.com/api/get-address-id.php",
        type: "GET",
			data: { addrID: addrID },

        dataType: 'json',
        contentType: 'application/json',
        success: function (response) {
			$('#firstname').val(response[0].firstname);
			$('#lastname').val(response[0].lastname);
			$('#telephone').val(response[0].telephone);
			$('#email').val(response[0].email);
			$('#address_1').val(response[0].shipping_address_1);
			$('#address_2').val(response[0].shipping_address_2);
			$('#postcode').val(response[0].shipping_postcode);
        },
        error : function(attrValue){
          console.log(attrValue);
        }
    });
});

  </script>
  

</body></html>
 