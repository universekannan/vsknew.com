<?php
$email = $_GET['email'];
$token = $_GET['token'];
?>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>Account Login</title>
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
  <div class="ban-top">
		<div class="container">
				<nav class="navbar navbar-inverse navbar-fixed-top">  

<div class=" flex justify-content-between ">
<style>
form
{
  padding-top: 7px;
}
</style>	
 <a class="navbar-brand " href="category.php"><img src="images/icon/category.png" width="50" height="50" alt=""></a>

   <form action="" method="post">
<input type="text" name="name" class="form-control" placeholder="Searching for products">
                                     
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

<div id="account-login" class="container">
 
      <div class="row">
                <div id="content" class="col-md-9 col-sm-8 col-xs-12">
      <div class="row">
        <div class="col-md-6 col-xs-12">
          <div class="well">
            <h2 class="heading">Reset your password</h2>
              <div class="form-group">
                <input type="text" name="password1" maxlength="15" value="" placeholder="Password" id="password1" class="form-control" />
              </div>  
              <div class="form-group">
                <input type="text" name="password2" maxlength="15" value="" placeholder="Confirm Password" id="password2" class="form-control" />
              </div>  
              <input onclick="doregister()" type="button" value="Change Password" class="btn btn-primary" />
          </div>

        </div>
        </div>
      </div>
      </div>
 
</div>
</div>
<script>
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

  function doregister(){
    var email = "<?php echo trim($email); ?>";
    var token = "<?php echo $token; ?>";
    var password1 = $("#password1").val();
    var password2 = $("#password2").val();
    
    if(password1.trim()==""){
      alert("Enter Password");
      $("#password1").focus();
      return;
    }
    if(password2.trim()==""){
      alert("Confirm password");
      $("#password2").focus();
      return;
    }
    if(password1.trim()!=password2.trim()){
      alert("Passwords does not match");
      $("#password2").focus();
      return;
    }

    var data = {
      email : email,
      token : token,
      password : password1
    }
    $.ajax({
        url: "https://vskbrothers.com/api/reset.php",
        type: "POST",
        data: JSON.stringify(data),
        dataType: 'json',
        contentType: 'application/json',
        success: function (response) {
          if(response["status"]=="success"){
            alert(response["message"]);
            window.location.href = "account.php";
          }else{
            alert(response["message"]);
          }
        },
        error : function(attrValue){
          console.log(attrValue);
        }
    });
    }
 
</script>  
    <?php include("footer.php"); ?>
</body>
</html>
