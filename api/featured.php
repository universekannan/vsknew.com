<?php

require("db.php");
$price = 0;

$q=mysqli_query($con,"SELECT setting FROM `oc_module` where name='Home Page' AND code='featured'");

$data=mysqli_fetch_array($q);

$setting=json_decode($data['setting'],true);

echo '[';
$lastElement = end($setting['product']);
foreach ($setting['product'] as $product_id) {

	echo '{';
	$q=mysqli_query($con,"SELECT name FROM `oc_product_description` WHERE product_id='$product_id'");
	$row=mysqli_fetch_array($q);
	$description=$row;
	echo '"name":"'.$description['name'].'",';

	$q=mysqli_query($con,"SELECT product_id,quantity,image,price FROM `oc_product` WHERE product_id='$product_id'");

	$row=mysqli_fetch_array($q);
 	$details=$row;
 	$price = $details['price'];
 	echo '"product_id":"'.$details['product_id'].'",';
 	echo '"quantity":"'.$details['quantity'].'",';
 	echo '"image":"'.$details['image'].'",';
 	echo '"price":"'.$price.'",';


	$q=mysqli_query($con,"SELECT price FROM `oc_product_special` WHERE product_id='$product_id'");

	$row=mysqli_fetch_array($q);
	$discount=$row;
	if($discount['price']==null){
		echo '"dprice":"'.$details['price'].'"}';
	}
	else{
		echo '"dprice":"'.$discount['price'].'"}';
	}
	

	if($product_id!= $lastElement) {
		echo ",";
	}
}
echo ']';
?>