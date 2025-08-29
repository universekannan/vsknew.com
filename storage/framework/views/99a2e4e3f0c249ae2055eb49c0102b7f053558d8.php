<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>VSK Brothers</title>

  <meta name="csrf-token" content="<?php echo e(csrf_token()); ?>">

  <!-- Google Font: Source Sans Pro -->
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
  <!-- Font Awesome Icons -->
  <link rel="stylesheet" href="<?php echo asset('plugins/fontawesome-free/css/all.min.css'); ?>">
  <!-- overlayScrollbars -->
  <link rel="stylesheet" href="<?php echo asset('plugins/overlayScrollbars/css/OverlayScrollbars.min.css'); ?>">
  <!-- Theme style -->
  <link rel="stylesheet" href="<?php echo asset('dist/css/adminlte.min.css'); ?>">
  <!-- icheck bootstrap -->
  <link rel="stylesheet" href="<?php echo asset('plugins/icheck-bootstrap/icheck-bootstrap.min.css'); ?>">
  <!-- DataTables -->
  <link rel="stylesheet" href="<?php echo asset('plugins/datatables-bs4/css/dataTables.bootstrap4.min.css'); ?>">
  <link rel="stylesheet" href="<?php echo asset('plugins/datatables-responsive/css/responsive.bootstrap4.min.css'); ?>">
  <link rel="stylesheet" href="<?php echo asset('plugins/datatables-buttons/css/buttons.bootstrap4.min.css'); ?>">
  <link rel="stylesheet" href="<?php echo asset('plugins/tempusdominus-bootstrap-4/css/tempusdominus-bootstrap-4.min.css'); ?>">
  <link rel="stylesheet" href="<?php echo asset('plugins/icheck-bootstrap/icheck-bootstrap.min.css'); ?>">
  <!-- fullCalendar -->
  <link rel="stylesheet" href="<?php echo asset('plugins/fullcalendar/main.css'); ?>">
  <!-- daterange picker -->
  <link rel="stylesheet" href="<?php echo asset('plugins/daterangepicker/daterangepicker.css'); ?>">
  <!-- Ekko Lightbox -->
  <link rel="stylesheet" href="<?php echo asset('plugins/ekko-lightbox/ekko-lightbox.css'); ?>">
  <!-- Select2 -->
  <link rel="stylesheet" href="<?php echo asset('plugins/select2/css/select2.min.css'); ?>">
  <link rel="stylesheet" href="<?php echo asset('plugins/select2-bootstrap4-theme/select2-bootstrap4.min.css'); ?>">
  <link rel="stylesheet" href="<?php echo asset('dist/css/style.css'); ?>">
  <link rel="stylesheet" href="<?php echo asset('dist/css/gslsxy.css'); ?>">

</head>

<?php echo $__env->yieldContent('third_party_stylesheets'); ?>

<?php echo $__env->yieldPushContent('page_css'); ?>


  <body
class="hold-transition light-mode sidebar-collapse layout-fixed layout-navbar-fixed layout-footer-fixed
<?php if(Auth::user()->colour == 1): ?> light-mode
<?php elseif(Auth::user()->colour == 2): ?>
dark-mode <?php endif; ?>
">

<div class="wrapper">

  <div class="preloader flex-column justify-content-center align-items-center">
    <img class="animation__wobble" src="<?php echo asset('img/health-care.png'); ?>" alt="HC" height="60" width="60">
  </div>
</br>
 </br>

<?php echo $__env->make('common.header', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>

<?php echo $__env->make('common.sidebar', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>

<?php echo $__env->yieldContent('content'); ?>

</div>

<?php echo $__env->yieldContent('third_party_scripts'); ?>

<script src="<?php echo asset('plugins/jquery/jquery.min.js'); ?>"></script>
<!-- Bootstrap -->
<script src="<?php echo asset('plugins/bootstrap/js/bootstrap.bundle.min.js'); ?>"></script>
<!-- overlayScrollbars -->
<script src="<?php echo asset('plugins/overlayScrollbars/js/jquery.overlayScrollbars.min.js'); ?>"></script>
<!-- AdminLTE App -->
<script src="<?php echo asset('dist/js/adminlte.js'); ?>"></script>

<!-- PAGE PLUGINS -->
<!-- jQuery Mapael -->
<script src="<?php echo asset('plugins/jquery-mousewheel/jquery.mousewheel.js'); ?>"></script>
<script src="<?php echo asset('plugins/raphael/raphael.min.js'); ?>"></script>
<script src="<?php echo asset('plugins/jquery-mapael/jquery.mapael.min.js'); ?>"></script>
<script src="<?php echo asset('plugins/jquery-mapael/maps/usa_states.min.js'); ?>"></script>
<!-- ChartJS -->

<script src="<?php echo asset('plugins/datatables/jquery.dataTables.min.js'); ?>"></script>
<script src="<?php echo asset('plugins/datatables-bs4/js/dataTables.bootstrap4.min.js'); ?>"></script>
<script src="<?php echo asset('plugins/datatables-responsive/js/dataTables.responsive.min.js'); ?>"></script>
<script src="<?php echo asset('plugins/datatables-responsive/js/responsive.bootstrap4.min.js'); ?>"></script>
<script src="<?php echo asset('plugins/datatables-buttons/js/dataTables.buttons.min.js'); ?>"></script>
<script src="<?php echo asset('plugins/datatables-buttons/js/buttons.bootstrap4.min.js'); ?>"></script>
<script src="<?php echo asset('plugins/jszip/jszip.min.js'); ?>"></script>
<script src="<?php echo asset('plugins/pdfmake/pdfmake.min.js'); ?>"></script>
<script src="<?php echo asset('plugins/pdfmake/vfs_fonts.js'); ?>"></script>
<script src="<?php echo asset('plugins/datatables-buttons/js/buttons.html5.min.js'); ?>"></script>
<script src="<?php echo asset('plugins/datatables-buttons/js/buttons.print.min.js'); ?>"></script>
<script src="<?php echo asset('plugins/datatables-buttons/js/buttons.colVis.min.js'); ?>"></script>
<script src="<?php echo asset('plugins/moment/moment.min.js'); ?>"></script>
<script src="<?php echo asset('plugins/inputmask/jquery.inputmask.min.js'); ?>"></script>
<script src="<?php echo asset('plugins/tempusdominus-bootstrap-4/js/tempusdominus-bootstrap-4.min.js'); ?>"></script>
<!-- fullCalendar 2.2.5 -->
<script src="<?php echo asset('plugins/moment/moment.min.js'); ?>"></script>
<script src="<?php echo asset('plugins/fullcalendar/main.js'); ?>"></script>
<script src="<?php echo asset('plugins/jquery-ui/jquery-ui.min.js'); ?>"></script>
<!-- date-range-picker -->
<script src="<?php echo asset('plugins/daterangepicker/daterangepicker.js'); ?>"></script>
<!-- Ekko Lightbox -->
<script src="<?php echo asset('plugins/ekko-lightbox/ekko-lightbox.min.js'); ?>"></script>
<!-- Select2 -->
<script src="<?php echo asset('plugins/select2/js/select2.full.min.js'); ?>"></script>


<script src="https://cdnjs.cloudflare.com/ajax/libs/typeahead.js/0.9.0/typeahead.min.js" integrity="sha512-bghh6wC0bCYQeeb4EmXboptBUaLL05aaYPoR9LLFfgdoGKKQUNGRkoVv82KdD0oGdAHi+iWPZJxbJHYNFm/Yfw==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
<?php echo $__env->yieldPushContent('page_scripts'); ?>

<script>
  $(document).on('click', '[data-toggle="lightbox"]', function(event) {
    event.preventDefault();
    $(this).ekkoLightbox({
      alwaysShowClose: true
    });
  });
</script>
<script>

 function show_purchase_modal(product_id,name,min_stock,avl_stock){
  $("#product_id").val(product_id);
  $("#product_name").html(name);
  $("#min_stock").html(min_stock);
  $("#avl_stock").html(avl_stock);
  $('#purchasemodal').modal('show');
}  

function load_billdetails(){
  var billdetails = "<?php echo e(url('billdetails')); ?>";
  var from = $("#from").val();
  var to = $("#to").val();
  var url =  billdetails + "/" + from + "/" +to; 
  window.location.href = url;
} 

function show_approve_modal(product_id,name,min_stock,avl_stock,pqty,pur_id){
  $("#product_id").val(product_id);
  $("#purchase_id").val(pur_id);
  $("#product_name").html(name);
  $("#min_stock").html(min_stock);
  $("#avl_stock").html(avl_stock);
  $("#pqty").val(pqty);
  $('#purchasemodal').modal('show');
}   

function cancel_purchase(item_id,pur_id){
  var CSRF_TOKEN = $("input[name=_token]").val();
  var url =  "<?php echo e(url('cancel_purchase')); ?>";
  $.ajax({
   type: 'POST',
   url: url,
   data: {
     pur_id: pur_id,
     _token: CSRF_TOKEN
   },
   success: function (data) {
    $("#purchasetd_"+item_id).html("");
  },
  error : function(error){
   alert(JSON.stringify(error));
 }
});

}

function approve_purchase(){
  var CSRF_TOKEN = $("input[name=_token]").val();
  var item_id = $("#product_id").val(); 
  var pur_id = $("#purchase_id").val(); 
  var pqty = $("#pqty").val(); 
  if(pqty == ""){
    alert("Enter Purchase Quantity");
    $("#pqty").focus();
    return;
  }
  var url =  "<?php echo e(url('approve_purchase')); ?>";
  $.ajax({
   type: 'POST',
   url: url,
   data: {
     item_id: item_id,
     pqty: pqty,
     pur_id: pur_id,
     _token: CSRF_TOKEN
   },
   success: function (data) {
    $('#purchasemodal').modal('toggle');
    $("#pqty").val("");
    $("#purchasetd_"+item_id).closest('tr').html("");
  },
  error : function(error){
   alert(JSON.stringify(error));
   $('#purchasemodal').modal('toggle');
 }
});
} 

function view_bill(id){
  var url =  "<?php echo e(url('viewbill')); ?>";
  url = url + "/" + id;
  w=500;h=600;
  var left = (screen.width/2)-(w/2);
  var top = 0;
  window.open(url, "Bill", 'toolbar=no, location=no, directories=no, status=no, menubar=no, scrollbars=no, resizable=no, copyhistory=no, width='+w+', height='+h+', top='+top+', left='+left);
}

function save_purchase(){
  var CSRF_TOKEN = $("input[name=_token]").val();
  var item_id = $("#product_id").val(); 
  var pqty = $("#pqty").val(); 
  if(pqty == ""){
    alert("Enter Purchase Quantity");
    $("#pqty").focus();
    return;
  }
  var url =  "<?php echo e(url('save_purchase')); ?>";
  var product_url =  "<?php echo e(url('products')); ?>";
  $.ajax({
   type: 'POST',
   url: url,
   data: {
     item_id: item_id,
     pqty: pqty,
     _token: CSRF_TOKEN
   },
   success: function (data) {
    $('#purchasemodal').modal('toggle');
      //window.location.href = product_url;
      $("#pqty").val("");
      $("#purchasetd_"+item_id).html("Pending");
    },
    error : function(error){
         //alert(error);
         $('#purchasemodal').modal('toggle');
       }
     });
}

$(document).ready(function () {
    //"buttons": ["copy", "csv", "excel", "pdf", "print", "colvis"]
    
    if($('#barcode_div').length) $("#bar_code").focus();
    $("#example1").DataTable({
      "responsive": true, "lengthChange": false, "autoWidth": false,
      "buttons": ["excel", "pdf", "print"]
    }).buttons().container().appendTo('#example1_wrapper .col-md-6:eq(0)');

    $('#example2').DataTable({
      "paging": true,
      "lengthChange": false,
      "searching": true,
      "ordering": true,
      "info": true,
      "autoWidth": false,
      "responsive": true,
    });

    $('#example3').DataTable({
      "paging": true,
      "lengthChange": false,
      "searching": false,
      "ordering": true,
      "info": true,
      "autoWidth": false,
      "responsive": true,
    });

    $('#example4').DataTable({
      "paging": false,
      "lengthChange": false,
      "searching": true,
      "ordering": true,
      "info": true,
      "autoWidth": false,
      "responsive": true,
    });

var tble5 = $('#example5').DataTable({
      "paging": true,
      "lengthChange": false,
      "searching": true,
      "ordering": true,
      "info": true,
      "autoWidth": false,
      "responsive": true,
    });
    $('#customSearch').on('keyup', function () {
      tble5.search(this.value).draw();
    });
  });

  function bgfavorites(obj, user_id) {
            var url = "<?php echo e(url('/bgdark')); ?>/" + user_id;
            $.ajax({
                url: url,
                type: "GET",
                success: function(result) {

                    if ($(obj).hasClass("btn-danger")) {
                        $(obj).removeClass("btn-danger");
                        $(obj).addClass("btn-success");
                    } else {
                        $(obj).removeClass("btn-success");
                        $(obj).addClass("btn-danger");
                    }
                    location.reload();
                },
                error: function(error) {
                    console.log(JSON.stringify(error));
                }
            });
        }
</script>
<script>

  

  function myFunction() {
    const input = document.getElementById("myInput");
    const inputStr = input.value.toUpperCase();
    document.querySelectorAll('#example2 tr:not(.header)').forEach((tr) => {
      const anyMatch = [...tr.children]
      .some(td => td.textContent.toUpperCase().includes(inputStr));
      if (anyMatch) tr.style.removeProperty('display');
      else tr.style.display = 'none';
    });
  }
</script>


<script>
  $(document).ready(function(){
    
    $("#cus_mobile").focus();

    $("#custom").click(function(){
      $("#showCustom").toggle(500);
    });

    $('.number').keypress(function (event) {
      var keycode = event.which;
      if (!(event.shiftKey == false && (keycode == 8 || keycode == 37 || keycode == 39 || (keycode >= 48 && keycode <= 57)))) {
        event.preventDefault();
      }
    });

    $(".decimal").keypress(function(evt){
        var charCode = (evt.which) ? evt.which : event.keyCode;
        if (charCode != 46 && charCode > 31
            && (charCode < 48 || charCode > 57)) {
            return false;
    }
    if (charCode == 46 && this.value.indexOf(".") !== -1) {
        return false;
    }
    return true;
    });
  });
</script>

<script>
  function calculate_amount() {
    var rate = $('#rate').val();
    var quantity = $('#quantity').val();
    var gst = $('#GST').val();
    if(quantity!="" && rate!=""){
      var amount=rate*quantity;
      var gst_amount = (amount*gst)/100;
      $('#total').val(amount);
      $('#gst_amount').val(gst_amount);
    }else{
      $('#total').val("");
    }
  }

  function get_item_by_barcode(barcode){
    var url = "<?php echo e(url('/getitembybarcode')); ?>/"+barcode;
    $.get(url, function(data, status){
      data = JSON.parse(data);
      if(data["product_id"] != "0"){
        $('#PID').val(data["product_id"]);
        $('#product_id2').val(data["name"]);
        $('#product_id3').val(data["name"]);
        $('#rate').val(data["price"]);
        $('#discount_price').val(data["discount_price"]);
        $('#discount_price_min_weight').val(data["discount_price_min_weight"]);
        $('#GST').val(data["gst"]);
        $('#tax_name').val(data["tax_name"]);
        $('#quantity').focus();
      }
    });
  }

  $("#product_id2").bind("paste", function(e){       
    get_item_by_barcode(e.originalEvent.clipboardData.getData('text'));
  });

  $("#product_id2").keyup(function (){
    if ($(this).val().length  < 7) {
      return;
    }
    get_item_by_barcode($(this).val());
  });

  $('input.product_id2').typeahead(
  {
    name: 'value',
    valueKey: 'value',
    remote: '<?php echo e(url('/itemsearch')); ?>/%QUERY'
  }
  ).on('typeahead:selected', function (obj, datum) {
    $('#PID').val(datum.id);
    $('#GST').val(datum.gst);
    $('#tax_name').val(datum.tax_name);
    $('#product_id3').val(datum.value);
    $('#rate').val(datum.price);
    $('#discount_price').val(datum.discount_price);
    $('#discount_price_min_weight').val(datum.discount_price_min_weight);
    $('#quantity').focus();
  });

 $('#product_id2').focus();
  function runScript1(e) {
    if (e.keyCode == 13) {
      var PID = $('#PID').val();
      if(PID != ""){
        $('#quantity').focus();
      }
    }
  }

  function runScript2(e) {
    if (e.keyCode == 13) {
      var quantity = ~~parseInt($('#quantity').val());
      var item_rate= ~~parseInt($('#rate').val());
      var amount=quantity*item_rate;
      if(amount>0){
        add_row();
      }
    }
  }
  
   function runScript2edit(e) {
    if (e.keyCode == 13) {
      var quantity = ~~parseInt($('#quantity').val());
      var item_rate= ~~parseInt($('#rate').val());
      var amount=quantity*item_rate;
      if(amount>0){
        add_row_update();
      }
    }
  }

  function show_vbm(){
    var VBMArray = $("#PID").val().split("~");
    var name = VBMArray[1];
    $("#name").html(name)
  }


  var i = 0;

function add_row() {
    var quantity = $('#quantity').val().trim();
    if (quantity == "") {
        alert("Please enter Quantity");
        $('#quantity').focus();
        return false;
    }

    var product_id = $("#PID").val();
    var amount = $('#total').val();
    var gst_amount = $('#gst_amount').val();

    if (amount != "") {
        var found = false;
        var existing_qty = 0;

        $('.pd_id').each(function () {
            if (product_id == $(this).val()) {
                found = true;
                existing_qty = parseFloat($(".prd_qty_" + product_id).val());
            }
        });

        var name = $('#product_id3').val();
        var item_rate = parseFloat($('#rate').val());
        var item_quantity = parseFloat($('#quantity').val());
        item_quantity += existing_qty;

        var discount_price_min_weight = parseFloat($('#discount_price_min_weight').val());
        if (item_quantity >= discount_price_min_weight && discount_price_min_weight != 0) {
            item_rate = parseFloat($('#discount_price').val());
        }

        var rate = (item_rate * item_quantity).toFixed(2);

        if (found) {
            $(".prd_qty_" + product_id).val(item_quantity);
            $(".prd_rat_" + product_id).val(item_rate);
            $(".prd_tot_" + product_id).val(rate);
            $(".prd_totamt_" + product_id).val(rate);
        } else {
            $('#addr' + i).html(
                "<td class='serial_num'>" + (i + 1) + "</td>" +
                "<td><input readonly value='" + name + "' name='item_name[]' type='text' class='form-control'>" +
                "<input readonly class='pd_id' value='" + product_id + "' name='product_id[]' type='hidden'>" +
                "<input readonly value='" + gst_amount + "' name='gst_amount2[]' type='hidden'></td>" +
                "<td><input readonly value=" + item_quantity + " class='form-control prd_qty_" + product_id + "' name='item_quantity[]' type='text'></td>" +
                "<td><input readonly value=" + item_rate + " class='form-control prd_rat_" + product_id + "' name='item_rate[]' type='text'></td>" +
                "<td><input readonly value=" + rate + " class='form-control prd_tot_" + product_id + "' name='total[]' type='text'>" +
                "<input class='form-control prd_totamt_" + product_id + "' readonly value=" + rate + " name='total_amount[]' type='hidden'></td>" +
                "<td><a href='#' class='btn btn-danger btn-sm text-center' onclick='delete_row(this, " + product_id + ")'><i class='fa fa-trash'></i></a></td>"
            );

            $('#tab_logic').append('<tr id="addr' + (i + 1) + '"></tr>');
            i++;
        }

        updateTotals();

        $('#rate, #quantity, #amount, #total').val("");
        $('#PID, #product_id2, #product_id3, #bar_code').val("");
        $('#GST').val("0");
        $('#product_id2').focus();
    }
}

// Function to Delete Row
function delete_row(row, product_id) {
    if (confirm("Are you sure you want to delete this product?")) {
        $.ajax({
            url: "<?php echo e(url('order_delete')); ?>/" + product_id, // Adjust the URL if needed
            type: "DELETE",
            data: {
                _token: "<?php echo e(csrf_token()); ?>"
            },
            success: function(response) {
                if (response.success) {
                    // Remove row from DOM
                    $(row).closest('tr').remove();
                    updateTotals();
                } else {
                    alert("Error deleting product.");
                }
            },
            error: function(xhr) {
                alert("Something went wrong while deleting.");
            }
        });
    }
}

// Function to Update Totals (Sum of Blade + Dynamic Rows)
function updateTotals() {
    var total_amount = 0;
    var gst_amount3 = 0;

    // Sum amounts from Blade-generated table rows
    $('.amount_td').each(function () {
        total_amount += parseFloat($(this).text()) || 0;
    });

    // Sum GST from Blade-generated table rows
    $('.gst_td').each(function () {
        gst_amount3 += parseFloat($(this).val()) || 0;
    });

    // Sum amounts from dynamically added rows
    $('input[name="total[]"]').each(function () {
        total_amount += parseFloat($(this).val()) || 0;
    });

    // Sum GST from dynamically added rows
    $('input[name="gst_amount2[]"]').each(function () {
        gst_amount3 += parseFloat($(this).val()) || 0;
    });

    var net_amount = total_amount + gst_amount3;

    // Set calculated values to respective fields
    $('#total_amount').val(total_amount.toFixed(2));
    $('#gat_amount5').val(gst_amount3.toFixed(2));
    $('#net_amount').val(net_amount.toFixed(2));
}

// Call updateTotals() when the page loads
$(document).ready(function () {
    updateTotals();
});


$('.typeahead').typeahead().bind('typeahead:close', function () {
    $('.typeahead').typeahead('val', '');
});


</script>
<script>

 function delete_row(row){
  $("#addr"+(row)).html('');
  i--;
  var total_amount=0;
  var gst_amount3=0;
  var net_amount=0;
  var item_amount = $('input[name="total_amount[]"]');
  var gst_amount4 = $('input[name="gst_amount2[]"]');
  for(var j=0;j<i;j++){
    total_amount=total_amount+parseInt(item_amount.eq(j).val());
    gst_amount3=gst_amount3+parseInt(gst_amount4.eq(j).val());
  }
  $('#total_amount').val(total_amount);
  $('#gat_amount5').val(gst_amount3.toFixed(2));
  net_amount = total_amount + gst_amount3;
  $('#net_amount').val(net_amount.toFixed(2));
}
</script>

<script>

  function submit_data()
  {
    var CSRF_TOKEN = $("input[name=_token]").val();
    var total_amount = $('#total_amount').val();
    var gst_amount = $('#gat_amount5').val();
    var net_amount = $('#net_amount').val();
    if(total_amount<=0)
    {
      alert("Amount should be greater than zero");
      return;
    }
    var mobile = $('#mobile').val();
    var cust_name = $('#cust_name').val();
    var bar_code = $('#bar_code').val();

    var item_id = $('input[name="product_id[]"]');
    var item_quantity = $('input[name="item_quantity[]"]');
    var item_rate = $('input[name="item_rate[]"]');
    var item_amount = $('input[name="total[]"]');
    var tot_amount = $('input[name="total_amount[]"]');
    var sales = new Array();
    for(var j=0;j<i;j++)
    {
      var record = {'item_id':item_id.eq(j).val(),'item_quantity':item_quantity.eq(j).val(),'item_rate':item_rate.eq(j).val(),'item_amount':item_amount.eq(j).val(),'tot_amount':tot_amount.eq(j).val()};
      sales.push(record);
    }
    var sales_data = JSON.stringify(sales);
    $.ajax({
      url: "<?php echo e(url('/savebill')); ?>",
      type: "POST",
      data: {
        sales: sales_data,
        amount:total_amount,
        gst_amount:gst_amount,
        net_amount:net_amount,
        mobile:mobile,
        cust_name:cust_name,
        bar_code:bar_code,
        _token: CSRF_TOKEN
      },
      success: function (response) 
      {
        $("#total_amount").val('');
        $("#gat_amount5").val('');
        $("#net_amount").val('');
        for(var j=0;j<i;j++){
          $("#addr"+(j)).html('');
        }
        i = 0;
        view_bill(response.bill_id);
      }
    });
  }
  
  function submit_data_update(id)
  {
    view_bill(id);
  }

  function payproceed(e){
    var quantity = $('#quantity').val().trim();
    if(quantity == ""){
      e.preventDefault();
      alert("Please enter Quantity");
      $('#quantity').focus();
      return false;
    }
  }

  $(function () {
    //Initialize Select2 Elements
    $('.select2').select2()

    //Initialize Select2 Elements
    $('.select2bs4').select2({
      theme: 'bootstrap4'
    })
  });

function packaging(obj,user_id,order_product_id){
  var url = "";

  url = "<?php echo e(url('/packaging')); ?>/"+user_id+'/'+order_product_id;
  console.log(user_id);
  $.ajax({
    url: url,
    type: "GET",
    success: function (result) {
      location.reload();
      if($(obj).hasClass("btn-danger")){
        $(obj).removeClass("btn-danger");
        $(obj).addClass("btn-success");
    }else{
        $(obj).removeClass("btn-success");
        $(obj).addClass("btn-danger");
    }
},
error: function (error) {  
    console.log(JSON.stringify(error));
}
});
}


$(document).ready(function () {
    $("#cus_mobile").keyup(function () {
        var mobile = $(this).val();

        // Ensure input isn't empty
        if (mobile.length > 0) {
            $.ajax({
                url: "<?php echo e(url('/itemsearchmobile')); ?>/"+mobile,
                type: "GET",
                dataType: 'JSON',
                success: function (data) {
                    $(".search-results").empty();

                    if (data.length > 0) {
                        $.each(data, function (index, item) {
                            var content = '<a style="cursor:pointer" id="getCustomer" mobile="' + item.telephone + '" customer_id="' + item.customer_id + '" firstname="' + item.firstname + '" lastname="' + item.lastname + '">';
                            content += '<div class="searchdropdown">';
                            content += '<div class="col-12 col-md-12">';
                            content += '<span style="white-space: normal;">' + item.telephone + '</span>';
                            content += '</div>';
                            content += '</div>';
                            content += '</a>';
                            $(".search-results").append(content);
                        });
                    }
                },
                error: function () {
                    console.error("An error occurred.");
                }
            });
        } else {
            // Clear search results if input is empty
            $(".search-results").empty();
        }
    });

    // Optional: Handle clicking on a search result
    $(document).on("click", "#getCustomer", function () {
        var selectedMobile = $(this).attr("mobile");
		var selectedID = $(this).attr("customer_id");
		var selectedFirstname = $(this).attr("firstname");
		var selectedLastname = $(this).attr("lastname");
        $("#cus_mobile").val(selectedMobile);
		$("#customer_id").val(selectedID);
		$("#cust_name").val(selectedFirstname+' '+selectedLastname);
        $(".search-results").empty();
		$("#product_id2").focus();

    });
});



$(document).ready(function () {
        $('#userEmail').on('keyup', function () {
            let email = $(this).val();
            
            if (email.length > 3) { 
                $.ajax({
                    url: "<?php echo e(route('check_email')); ?>",
                    method: "GET",
                    data: { email: email },
                    success: function (response) {
                        if (response.exists) {
                            $('#emailMessage').text(response.message).css('color', 'red');
							$('#addUser').prop('disabled',true);
                        } else {
                            $('#emailMessage').text(response.message).css('color', 'green');
							$('#addUser').prop('disabled',false);
                        }
                    }
                });
            } else {
                $('#emailMessage').text('');
            }
        });
    });

    $('#quantity').on('blur', function () {
    var val = $(this).val().trim();

    if (val.startsWith('.') && /^\.\d+$/.test(val)) {
        $(this).val('0' + val);
    }
});

var i = <?php echo e(!empty($orderproducts) ? count($orderproducts) : 0); ?>;

function add_row_update() {
    let quantity = parseFloat($('#quantity').val());
    if (isNaN(quantity) || quantity <= 0) {
        alert("Please enter valid Quantity");
        $('#quantity').focus();
        return false;
    }

    const order_id = $("#order_id").val();
    const product_id = $("#PID").val();
    const item_name = $("#product_id2").val();
    const name = $('#product_id3').val();

    let rate = parseFloat($('#rate').val());
    rate = isNaN(rate) ? 0 : rate;

    const gst_amount = $('#gst_amount').val() || "0";
    let existing_qty = 0;
    let found = false;

    $('.pd_id').each(function () {
        if (product_id == $(this).val()) {
            found = true;
            existing_qty = parseFloat($(".prd_qty_" + product_id).val());
            existing_qty = isNaN(existing_qty) ? 0 : existing_qty;
        }
    });

    let item_quantity = quantity + existing_qty;

    const discount_price_min_weight = parseInt($('#discount_price_min_weight').val());
    const discount_price = parseFloat($('#discount_price').val());

    if (!isNaN(discount_price_min_weight) && discount_price_min_weight > 0 && item_quantity >= discount_price_min_weight) {
        rate = discount_price;
    }

    let total = (rate * item_quantity).toFixed(2);
    const totalValue = parseFloat(total);

    if (found) {
        $(".prd_qty_" + product_id).val(item_quantity);
        $(".prd_rat_" + product_id).val(rate);
        $(".prd_tot_" + product_id).val(total);
        $(".prd_totamt_" + product_id).val(total);
        var type = 'ext';
    } else {
      var type = 'normal';
        const newRow = `
            <tr id="addrupdate${i}">
                <td class='serial_num'>${i + 1}</td>
                <td>
                    <input value='${order_id}' name='order_id[]' type='hidden' class='form-control'>
                    <input readonly value='${name}' name='item_name[]' type='text' class='form-control'>
                    <input readonly class='pd_id' value='${product_id}' name='product_id[]' type='hidden'>
                    <input readonly value='${gst_amount}' name='gst_amount2[]' type='hidden'>
                </td>
                <td><input readonly value="${item_quantity}" class='form-control prd_qty_${product_id}' name='item_quantity[]' type='text'></td>
                <td><input readonly value="${rate}" class='form-control prd_rat_${product_id}' name='item_rate[]' type='text'></td>
                <td>
                    <input readonly value="${total}" class='form-control prd_tot_${product_id}' name='total[]' type='text'>
                    <input class='form-control prd_totamt_${product_id}' readonly value="${total}" name='total_amount[]' type='hidden'>
                </td>
                <td>
                    <a href='#' class='btn btn-danger btn-sm text-center m' onclick='delete_row(this, ${product_id})'><i class='fa fa-trash'></i></a>
                </td>
            </tr>
        `;

        $('#product_list').append(newRow);
        i++;
    }

    updateTotals();

    saveOrderData(order_id, product_id, item_name, item_quantity, rate, totalValue, gst_amount, type);

    // Reset inputs
    $('#rate, #quantity, #amount, #total').val("");
    $('#PID, #product_id2, #product_id3, #bar_code').val("");
    $('#GST').val("0");
    $('#product_id2').focus();
}

function saveOrderData(order_id, product_id, item_name, quantity, rate, total, gst_amount, type) {
    const orderData = {
        order_id: order_id,
        product_id: product_id,
        item_name: item_name,
        item_quantity: quantity,
        item_rate: rate,
        total: total,
        gst_amount: gst_amount
    };

    $.ajax({
        url: "<?php echo e(route('alterOrderSave')); ?>",
        type: "POST",
        data: {
            orderData: orderData,
            _token: $('meta[name="csrf-token"]').attr('content')
        },
        dataType: "json",
        success: function (response) {
            if (response.status === "success") {
              if(type == 'ext'){
                window.location.reload();
              } else {
                console.log("✅ Order saved successfully!");
              }
                
            } else {
                console.error("❌ Failed to save order.");
            }
        },
        error: function (xhr) {
            console.error("⚠️ Error:", xhr.responseText);
        }
    });
}
</script>
</body>
</html>
<?php /**PATH C:\xampp\htdocs\vsknew.com\resources\views/common/app.blade.php ENDPATH**/ ?>