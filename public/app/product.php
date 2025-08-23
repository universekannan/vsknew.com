<?php
session_start();
$id = isset($_GET['id']) ? $_GET['id'] : "0";
?>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Hindustan Deal</title>
    <script src="catalog/view/javascript/jquery/jquery-2.1.1.min.js" type="text/javascript"></script>
    <link href="catalog/view/javascript/bootstrap/css/bootstrap.min.css" rel="stylesheet" media="screen"/>
    <script src="catalog/view/javascript/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
    <script src="catalog/view/javascript/inspire/product-slider-zoom/jquery.elevatezoom.js"
            type="text/javascript"></script>
    <link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet"
          type="text/css"/>
    <link href="//fonts.googleapis.com/css?family=Open+Sans:400,400i,300,700" rel="stylesheet" type="text/css"/>
    <link href="catalog/view/theme/default/stylesheet/stylesheet.css" rel="stylesheet">
    <script src="catalog/view/javascript/countdown/jquery.plugin.min.js" type="text/javascript"></script>
    <script src="catalog/view/javascript/countdown/jquery.countdown.min.js" type="text/javascript"></script>
    <link href="catalog/view/javascript/jquery/swiper/css/owl.carousel.css" type="text/css" rel="stylesheet"
          media="screen"/>
    <link href="catalog/view/javascript/jquery/swiper/css/owl.theme.css" type="text/css" rel="stylesheet"
          media="screen"/>
    <link href="catalog/view/javascript/jquery/magnific/magnific-popup.css" type="text/css" rel="stylesheet"
          media="screen"/>
    <link href="catalog/view/javascript/jquery/datetimepicker/bootstrap-datetimepicker.min.css" type="text/css"
          rel="stylesheet" media="screen"/>
    <link href="catalog/view/theme/default/stylesheet/inspirenewsletter.css" type="text/css" rel="stylesheet"
          media="screen"/>
    <script src="catalog/view/javascript/blog/lightbox-2.6.min.js" type="text/javascript"></script>
    <link href="catalog/view/javascript/blog/lightbox.css" rel="stylesheet" type="text/css"/>

    <script src="catalog/view/javascript/inspire/custom.js" type="text/javascript"></script>

    <script src="catalog/view/javascript/jquery/swiper/js/owl.carousel.min.js" type="text/javascript"></script>
    <script src="catalog/view/javascript/jquery/magnific/jquery.magnific-popup.min.js" type="text/javascript"></script>
    <script src="catalog/view/javascript/jquery/datetimepicker/moment/moment.min.js" type="text/javascript"></script>
    <script src="catalog/view/javascript/jquery/datetimepicker/moment/moment-with-locales.min.js"
            type="text/javascript"></script>
    <script src="catalog/view/javascript/jquery/datetimepicker/bootstrap-datetimepicker.min.js"
            type="text/javascript"></script>
    <script src="catalog/view/javascript/jquery/inspirequickview.js" type="text/javascript"></script>
    <script src="catalog/view/javascript/jquery/inspirenewsletter.js" type="text/javascript"></script>
    <script src="catalog/view/javascript/common.js" type="text/javascript"></script>

</head>
<body>


<div class="allmenu">
<div class="container">
<div class="row">
<div class="ban-top">
    <div class="container">
        <nav class="navbar navbar-inverse navbar-fixed-top">
            <div class=" flex justify-content-between ">
                <a class="navbar-brand " href="category.php"><img src="images/icon/category.png" width="50" height="50"
                                                                  alt=""></a>

                <a class="navbar-brand " href="search.php"><img src="images/icon/search.png" width="50" height="50"
                                                                alt=""></a>

                <a class="navbar-brand " href="search.php"><img src="images/icon/back.png" width="50" height="50"
                                                                alt=""></a>
            </div>
            <span id="add_alert" class="text-center btn btn-block btn-success font-weight-bold"
                  style="display:none;text-align:center">ITEM ADDED TO CART</span>
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
</br>
<div id="product-product" class="container common-shed">    
</div>


<!--for product quantity plus minus-->
<script type="text/javascript">
    //plugin bootstrap minus and plus
    $(document).ready(function () {
        $('.btn-number').click(function (e) {
            e.preventDefault();
            var fieldName = $(this).attr('data-field');
            var type = $(this).attr('data-type');
            var input = $("input[name='" + fieldName + "']");
            var currentVal = parseInt(input.val());
            if (!isNaN(currentVal)) {
                if (type == 'minus') {
                    var minValue = parseInt(input.attr('min'));
                    if (!minValue) minValue = 1;
                    if (currentVal > minValue) {
                        input.val(currentVal - 1).change();
                    }
                    if (parseInt(input.val()) == minValue) {
                        $(this).attr('disabled', true);
                    }

                } else if (type == 'plus') {
                    var maxValue = parseInt(input.attr('max'));
                    if (!maxValue) maxValue = 999;
                    if (currentVal < maxValue) {
                        input.val(currentVal + 1).change();
                    }
                    if (parseInt(input.val()) == maxValue) {
                        $(this).attr('disabled', true);
                    }

                }
            } else {
                input.val(0);
            }
        });
        $('.input-number').focusin(function () {
            $(this).data('oldValue', $(this).val());
        });
        $('.input-number').change(function () {

            var minValue = parseInt($(this).attr('min'));
            var maxValue = parseInt($(this).attr('max'));
            if (!minValue) minValue = 1;
            if (!maxValue) maxValue = 999;
            var valueCurrent = parseInt($(this).val());
            var name = $(this).attr('name');
            if (valueCurrent >= minValue) {
                $(".btn-number[data-type='minus'][data-field='" + name + "']").removeAttr('disabled')
            } else {
                alert('Sorry, the minimum value was reached');
                $(this).val($(this).data('oldValue'));
            }
            if (valueCurrent <= maxValue) {
                $(".btn-number[data-type='plus'][data-field='" + name + "']").removeAttr('disabled')
            } else {
                alert('Sorry, the maximum value was reached');
                $(this).val($(this).data('oldValue'));
            }
        });
        $(".input-number").keydown(function (e) {
            // Allow: backspace, delete, tab, escape, enter and .
            if ($.inArray(e.keyCode, [46, 8, 9, 27, 13, 190]) !== -1 ||
                    // Allow: Ctrl+A
                (e.keyCode == 65 && e.ctrlKey === true) ||
                    // Allow: home, end, left, right
                (e.keyCode >= 35 && e.keyCode <= 39)) {
                // let it happen, don't do anything
                return;
            }
            // Ensure that it is a number and stop the keypress
            if ((e.shiftKey || (e.keyCode < 48 || e.keyCode > 57)) && (e.keyCode < 96 || e.keyCode > 105)) {
                e.preventDefault();
            }
        });
    });
</script>

<script type="text/javascript"><!--
    $('#review').delegate('.pagination a', 'click', function (e) {
        e.preventDefault();

        $('#review').fadeOut('slow');

        $('#review').load(this.href);

        $('#review').fadeIn('slow');
    });

    $('#review').load('index.php?route=product/product/review&product_id=41');

    $('#button-review').on('click', function () {
        $.ajax({
            url: 'index.php?route=product/product/write&product_id=41',
            type: 'post',
            dataType: 'json',
            data: $("#form-review").serialize(),
            beforeSend: function () {
                $('#button-review').button('loading');
            },
            complete: function () {
                $('#button-review').button('reset');
            },
            success: function (json) {
                $('.alert-dismissible').remove();

                if (json['error']) {
                    $('#review').after('<div class="alert alert-danger alert-dismissible"><i class="fa fa-exclamation-circle"></i> ' + json['error'] + '</div>');
                }

                if (json['success']) {
                    $('#review').after('<div class="alert alert-success alert-dismissible"><i class="fa fa-check-circle"></i> ' + json['success'] + '</div>');

                    $('input[name=\'name\']').val('');
                    $('textarea[name=\'text\']').val('');
                    $('input[name=\'rating\']:checked').prop('checked', false);
                }
            }
        });
    });

    $(document).ready(function () {
        $('.thumbnails').magnificPopup({
            type: 'image',
            delegate: 'a',
            gallery: {
                enabled: true
            }
        });
    });
    //--></script>
<!-- related -->



</br>
</br>
<?php include("footer.php"); ?>
<script src="js/main.js"></script>
<script>
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

    function load_products() {
        var data = {
            id: <?php echo $id; ?>
        }
        $.ajax({
            url: "https://vskbrothers.com/api/product.php",
            type: "POST",
            data: JSON.stringify(data),
            dataType: 'json',
            contentType: 'application/json',
            success: function (products) {
                console.log(products);
                var html = '';
                html+='<div class="row">';
                html+='<div id="content" class="col-sm-12">';
                html+='<div class="row">';
                html+='<div class="col-md-5 col-sm-6 proimg">';
                    html+='<ul class="thumbnails">';
                        html+='<li><a class="thumbnail"';
                               html+=' alt="'+products["name"]+'">';
                                html+='<img';
                                    html+=' data-zoom-image="https://vskbrothers.com/image/'+products["image"]+'"';
                                    html+=' src="https://vskbrothers.com/image/'+products["image"]+'"';
                                    html+=' id="inspzoom" class="img-responsive center-block" alt="'+products["name"]+'">';
                            html+='</a>';
                        html+='</li>';
                        html+='<div class="row addoinalrow">';
                            html+='<li id="additional" class="owl-carousel">';
                              for (var i = 0; i < products["product_image"].length; i++){
                                html+='<a class="col-xs-12" ';
                                   html+=' data-zoom-image="https://vskbrothers.com/image/'+products["product_image"][i]["image"]+'"';
                                   html+='data-image="https://vskbrothers.com/image/'+products["product_image"][i]["image"]+'"';
                                   html+=' href="https://vskbrothers.com/image/'+products["product_image"][i]["image"]+'">';
                                    html+='<img src="https://vskbrothers.com/image/'+products["product_image"][i]["image"]+'"';
                                        html+=' class="img-responsive center-block" alt="additional image"></a>';
                              }
                            html+='</li>';
                        html+='</div>';
                    html+='</ul>';
                html+='</div>';
                html+='<div class="col-md-7 col-sm-6 product-right">';
                html+='<h1>'+products["name"]+'</h1><hr class="prosp">';
                //html+='<ul class="list-unstyled">';
                //html+='<li><span class="text-prodecor">Brands</span><a href="http://templateinspire.com/opencart/Grocery/index.php?route=product/manufacturer/info&amp;manufacturer_id=8" class="textdeb">Apple</a></li>';
                //html+='<li><span class="text-prodecor">Product Code:</span> Product 14</li>';
                //html+='<li><span class="text-prodecor">Availability:</span> In Stock</li>';
                //html+='<hr class="prosp">';
                //html+='</ul>';
                html+='<ul class="list-unstyled">';
                html+='<li class="text-prodecor-bold">';
                var price = parseFloat(products["price"]);
                price = price.toFixed(2);
                html+='<h2 class="pro-price">&#2352;&nbsp;'+price+'</h2>';
                //html+='<li>Ex Tax: $100.00</li>';
                html+='</ul>';
                html+='</div>';
                html+='</div>';
                html+='<div>';
                html += "<a onclick='add_order("+products["product_id"]+",\""+products["name"]+"\","+products["price"]+",\""+products["image"]+"\",\""+products["admin_margin"]+"\")' class='btn btn-danger btn-large cart-button' >Add to cart<a/>";
                html+='</div>';				
                html+='<div class="propage-tab">';
                html+='<ul class="nav nav-tabs">';
                html+='<li class="active"><a href="#tab-description" data-toggle="tab">Description</a></li>';
                html+='</ul>';
                html+='<div class="tab-content">';
                html+='<div class="tab-pane active" id="tab-description">';
                html+='<div>'+products["description"]+'</div>';
                html+='</div>';
                html+='</div>';
                html+='<div class="pro-bg">';
                html+='<h2 class="allhading">Related Products</h2>';
                html+='<hr>';
                html+='<div class="pro-nepr row thummargin">';
                html+='<div id="related" class="owl-carousel owl-theme">';
                for (var i = 0; i < products["related_product"].length; i++){
                html+='<div class="product-layout col-xs-12">';
                html+='<div class="product-thumb transition">'
                html+='<div class="image"><a href="product.php?id='+products["related_product"][i]["product_id"]+'">';
                html+='<img src="https://vskbrothers.com/image/'+products["related_product"][i]["image"]+'"';
                html+=' alt="'+products["related_product"][i]["name"]+'" title="'+products["related_product"][i]["name"]+'"';
                html+=' class="img-responsive center-block"/></a>';
                html+='</div>';
                html+='<div class="caption text-center">';
                html+=' <h4>';
                html+=' <a href="product.php?id='+products["related_product"][i]["product_id"]+'">'+products["related_product"][i]["name"];
                html+=products["related_product"][i]["name"]+'</a></h4>';
                var price = parseFloat(products["related_product"][i]["price"]);
                price = price.toFixed(2);
                html+=' <p class="price">&#2352;&nbsp;'+price+'</p>';
                html += "<a onclick='add_order("+products["related_product"][i]["product_id"]+",\""+products["related_product"][i]["name"]+"\","+products["related_product"][i]["price"]+",\""+products["related_product"][i]["image"]+"\",\""+products["related_product"][i]["admin_margin"]+"\")' class='btn btn-danger btn-large cart-button' >Add to cart<a/>";
                html+=' </div>';
                html+='<div>';

                html+='</div>';             
                html+=' </div>';
                html+=' </div>';
                }
                html+=' </div>';
                html+=' </div>';

                html+=' </div>';
                html+='</div>';
                html+='</div>';
                html+='</div>';
                html+='</div>';
                html+='</div>';

            $("#product-product").append(html);

            $("#related").owlCarousel({
            itemsCustom: [
                [0, 1],
                [375, 2],
                [600, 3],
                [768, 3],
                [992, 4],
                [1200, 5]
            ],
            // autoPlay: 1000,
            navigationText: ['<i class="fa fa-angle-left" aria-hidden="true"></i>', '<i class="fa fa-angle-right" aria-hidden="true"></i>'],
            navigation: true,
            pagination: false
        });

                $('#additional').owlCarousel({
        itemsCustom: [
            [0, 3],
            [412, 4],
            [600, 6],
            [768, 3],
            [992, 4],
            [1200, 4]
        ],
        autoPlay: 1000,
        autoPlay: true,
        navigation: false,
        navigationText: ['<i class="fa fa-angle-left" aria-hidden="true"></i>', '<i class="fa fa-angle-right" aria-hidden="true"></i>'],
        pagination: false
    });

    if (jQuery(window).width() > 991) {
        //initiate the plugin and pass the id of the div containing gallery images
        $("#inspzoom").elevateZoom({
            gallery: 'additional',
            cursor: 'pointer',
            galleryActiveClass: 'active',
            imageCrossfade: true,
            loadingIcon: ''
        });
        //pass the images to Fancybox
        $("#inspzoom").bind("click", function (e) {
            var ez = $('#inspzoom').data('elevateZoom');
            $.fancybox(ez.getGalleryList());
            return false;
        });
    }

            },
            error: function (attrValue) {
                //console.log(error);
            }
        });
    }
    $(document).ready(function () {
        load_products();

    });
</script>
</body>
</html>
</body></html>

