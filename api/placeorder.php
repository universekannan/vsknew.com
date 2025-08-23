<?php

require("db.php");
require_once 'payment/SB.php';
use SB\Sudipto\SB;

$_POST = json_decode(file_get_contents('php://input'), true);


$invoice_no="0";
$invoice_prefix="I";
$store_id=0;
$store_name='VSK Brothers';
$store_url='https://vskbrothers.com';
$customer_group_id=1;

$customer_id=(int)$_POST['customer_id'];
$firstname=$_POST['firstname'];
$lastname=$_POST['lastname'];
$telephone=$_POST['telephone'];
$email=$_POST['email'];
$address_1=$_POST['address_1'];
$address_2=$_POST['address_2'];
$city="Kanyakumari";
$postcode=$_POST['postcode'];

$country="India";
$country_id=99;
$zone="Tamil Nadu";
$zone_id="1503";
$method=$_POST['payment_method'];
$code="VSK";

$payment_firstname=$_POST['firstname'];
$payment_lastname=$_POST['lastname'];
$shipping_firstname=$_POST['firstname'];
$shipping_lastname=$_POST['lastname'];
$shipping_address_1=$_POST['address_1'];
$shipping_address_2=$_POST['address_2'];
$shipping_city=$_POST['district'];
$shipping_postcode=$_POST['postcode'];
$shipping_country="India";
$shipping_country_id="99";

$shipping_method="Flat Shipping Rate";
$shipping_code="flat.flat";
$total=0;
$order_status_id=1;
$affiliate_id=1;
$commission=0;
$marketing_id=0;
$language_id=1;
$currency_id=4;
$currency_code="INR";
$currency_value=1;
$shipping= '0';
$date_added=date("Y-m-d H:i:s");

$custom_field="[]";    
$payment_custom_field="[]";  
$shipping_custom_field='""';
$comment="";    

if($_POST['payment_method'] == 2){
	$paymentStatus = 'Pending';
}

$sql="SELECT order_id FROM oc_order ORDER BY order_id DESC LIMIT 1";
$result = mysqli_query($con,$sql);

$lastId = 0;
if ($result->num_rows > 0) {
    $row = $result->fetch_assoc();
    $lastId = $row['order_id'];
}
$years = substr( date("Y"), -2);
$month =  date('m');
$day =  date('d');
$order_id = $lastId + 1;
$ocorderid = $years . $month . $day . $order_id;

$response=array();

$str="INSERT INTO `oc_order`(ocorderid,invoice_no,invoice_prefix,store_id,store_name,store_url,customer_id,customer_group_id,firstname,lastname,email,telephone,payment_firstname,payment_lastname,payment_address_1,payment_address_2,payment_city,payment_postcode,payment_country,payment_country_id,payment_zone,payment_method,payment_code,shipping_firstname,shipping_lastname,shipping_address_1,shipping_address_2,shipping_city,shipping_postcode,shipping_country,shipping_country_id,shipping_zone,shipping_method,shipping_code,total,order_status_id,affiliate_id,commission,marketing_id,language_id,currency_id,currency_code,currency_value,date_added,date_modified,payment_zone_id,shipping_zone_id,custom_field,payment_custom_field,shipping_custom_field,comment,payment_status) VALUES ('$ocorderid','$invoice_no','$invoice_prefix','$store_id','$store_name','$store_url','$customer_id','$customer_group_id','$firstname','$lastname','$email','$telephone','$firstname','$lastname','$address_1','$address_2','$city','$postcode','$country','$country_id','$zone','$method','$code','$firstname','$lastname','$address_1','$address_2','$city','$postcode','$country','$country_id','$zone','$shipping_method','$shipping_code','$total','$order_status_id','$affiliate_id','$commission','$marketing_id','$language_id','$currency_id','$currency_code','$currency_value','$date_added','$date_added','$zone_id','$zone_id','$custom_field','$payment_custom_field','$shipping_custom_field','$comment','$paymentStatus')";

$q=mysqli_query($con,$str);

$q=mysqli_query($con,"SELECT order_id FROM `oc_order` ORDER BY order_id  DESC");
$data=mysqli_fetch_array($q);
$order_id=$data['order_id'];
$seller_id = 1;
$products=$_POST['cart'];
foreach ($products as $product) {
	$product_id=$product['product_id'];
	$name=$product['name'];
	$quantity=$product['quantity'];
	$price=$product['price'];
	$product_total=$product['price']*$quantity;
	$total = $total + $product_total;
	$q=mysqli_query($con,"INSERT INTO `oc_order_product` (order_id,product_id,name,quantity,price,total,seller_id) VALUES('$order_id','$product_id','$name','$quantity','$price','$product_total',$seller_id)");

}
$order_status_id = "1";
$q=mysqli_query($con,"INSERT  INTO `oc_order_history` (order_id,order_status_id,date_added) VALUES ('$order_id','$order_status_id','$date_added')");



$q=mysqli_query($con,"INSERT  INTO `oc_order_total` (order_id,code,title,value) VALUES ('$order_id','sub-total','Sub-Total','$total')");


$q=mysqli_query($con,"INSERT  INTO `oc_order_total` (order_id,code,title,value) VALUES ('$order_id','shipping','Flat Shipping Rate','$shipping')");

$total_payable=0;
$total_payable=$total+$shipping;
$q=mysqli_query($con,"INSERT  INTO `oc_order_total` (order_id,code,title,value) VALUES ('$order_id','total','Total','$total_payable')");

$q=mysqli_query($con,"UPDATE `oc_order` set total='$total_payable' where order_id='$order_id'");



$merchantTransactionId = 'MUID' . substr(uniqid(), -6);
$merchantOrderId = 'Order' . mt_rand(1000, 99999);
$currentDateTime = date("Y-m-d H:i:s");

//header('Location: pay.php?amount=' . $total_payable . '&orderId=' . $merchantOrderId);
				   
$response['ocorderid']=$ocorderid;
$response['total_payable']=$total_payable;
$response['merchantOrderId']=$merchantOrderId;



echo json_encode($response);
?>

