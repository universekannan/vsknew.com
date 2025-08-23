<?php
require("db.php");
$admin_margin = 0;
$price = 0;
$_POST = json_decode(file_get_contents('php://input'), true);
$category_id=$_POST['category_id'];
$selected_pincode=$_POST['selected_pincode'];

$q=mysqli_query($con,"select product_id from `oc_product_to_category` where category_id='$category_id'");


$data=array();
while ($row=mysqli_fetch_array($q)){
 $data[]=$row;
}

$lastElement = end($data);
echo '[';
foreach ($data as $product) {
	$p=$product['product_id'];

	echo '{';
	$sql="select name,b.product_id,image,price from oc_product_description a,oc_product b where a.product_id=b.product_id and b.product_id=$p";
	$q=mysqli_query($con,$sql);
	$row=mysqli_fetch_array($q);
	$details=$row;
	echo '"name":"'.$details['name'].'",';
 	$price = $details['price'];

 	echo '"product_id":"'.$details['product_id'].'",';
 	// echo '"quantity":"'.$details['quantity'].'",';
 	echo '"image":"'.$details['image'].'",';
 	echo '"price":"'.$price.'",';
 		
	// Get location id
	$q1 = mysqli_query($con, "SELECT id FROM `location` WHERE Pincode='$selected_pincode' LIMIT 1");
	$location = mysqli_fetch_assoc($q1);

	if ($location) {
		$shop_id = $location['id'];

		$q2 = "SELECT * FROM `stock` WHERE shop_id='$shop_id' AND item_id='$p' LIMIT 1";

		// Print query for debugging
		//echo $q2;  

		// Now execute query
		$result = mysqli_query($con, $q2);
		$rows = mysqli_fetch_assoc($result);

		$stock = $rows['stock'] ?? 0;

		echo '"quantity":"'.$stock.'",';

	} 

	$q=mysqli_query($con,"SELECT price FROM `oc_product_special` WHERE product_id='$p'");

	$row=mysqli_fetch_array($q);
	$discount=$row;
	if($discount['price']==null){
		echo '"dprice":"'.$details['price'].'"}';
	}
	else{
		echo '"dprice":"'.$discount['price'].'"}';
	}


	

	if($product!= $lastElement) {
		echo ',';
	}
}

echo ']';

?>
