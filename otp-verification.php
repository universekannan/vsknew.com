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
.digit-group {
	input {
		width: 30px;
		height: 50px;
		line-height: 50px;
		text-align: center;
		font-size: 24px;
		font-weight: 200;
		margin: 0 2px;
	}

	.splitter {
		padding: 0 5px;
		font-size: 24px;
	}
}

.prompt {
	margin-bottom: 20px;
	font-size: 20px;
}
</style>

<style>
  /* For Chrome, Safari, Edge, Opera */
  input[type=number]::-webkit-outer-spin-button,
  input[type=number]::-webkit-inner-spin-button {
    -webkit-appearance: none;
    margin: 0;
  }

  /* For Firefox */
  input[type=number] {
    -moz-appearance: textfield;
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
            <h2 class="heading">OTP Verification <?php echo $_SESSION['otp']; ?></h2>
              <div class="form-group">
                <input readonly type="text" name="telephone" value="" placeholder="Mobile" id="telephone" class="form-control" />
              </div>
              <div class="digit-group">
                <input type="number" id="digit-1" name="otp1" data-next="digit-2" />
                <input type="number" id="digit-2" name="otp2" data-next="digit-3" data-previous="digit-1" />
                <input type="number" id="digit-3" name="otp3" data-next="digit-4" data-previous="digit-2" />
                <input type="number" id="digit-4" name="otp4" data-next="digit-5" data-previous="digit-3" />
               </div><br>
              <input onclick="dologin()" type="button" value="Login" class="btn btn-primary" />
			    <div class="pull-right">
          </div>
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

    function getQueryParam(param) {
        let urlParams = new URLSearchParams(window.location.search);
        return urlParams.get(param);
    }

    // Set telephone input value
    document.addEventListener("DOMContentLoaded", function () {
        const telephone = getQueryParam('telephone');
        if (telephone) {
        document.getElementById('telephone').value = telephone;
        }
    });

   function dologin(){
    var telephone = $("#telephone").val();
    var otp1 = $("#digit-1").val();
    var otp2 = $("#digit-2").val();
    var otp3 = $("#digit-3").val();
    var otp4 = $("#digit-4").val();

    var otp = otp1 + '' + otp2 + '' + otp3 + '' + otp4;

    if(telephone == "" || otp == ""){
        alert("Please fill all the fields");
        return false;
    }


    var data = {
        telephone : telephone,
        otp : otp
    }
    $.ajax({
        url: "https://vskbrothers.com/api/otp-verification.php",
        type: "POST",
        data: JSON.stringify(data),
        dataType: 'json',
        contentType: 'application/json',
        success: function (response) {
          if(response["status"]=="success"){
            localStorage.setItem('customer_id',response['customer_id']);
            alert("Login successfull");
            window.location.href="cart.php";
          }else{
            localStorage.setItem('customer_id',"0");
            alert(response['message']);
          }
        },
        error : function(attrValue){
          console.log(attrValue);
        }
    });
    }




    $('.digit-group').find('input').each(function() {
	$(this).attr('maxlength', 1);
	$(this).on('keyup', function(e) {
		var parent = $($(this).parent());
		
		if(e.keyCode === 8 || e.keyCode === 37) {
			var prev = parent.find('input#' + $(this).data('previous'));
			
			if(prev.length) {
				$(prev).select();
			}
		} else if((e.keyCode >= 48 && e.keyCode <= 57) || (e.keyCode >= 65 && e.keyCode <= 90) || (e.keyCode >= 96 && e.keyCode <= 105) || e.keyCode === 39) {
			var next = parent.find('input#' + $(this).data('next'));
			
			if(next.length) {
				$(next).select();
			} else {
				if(parent.data('autosubmit')) {
					parent.submit();
				}
			}
		}
	});
});
</script>
    <?php include("footer.php"); ?>
</body>
</html>
