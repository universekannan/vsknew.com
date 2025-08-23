<?php
require("db.php");
$response=array();
$admin_margin = 0;
$price = 0;
$_POST = json_decode(file_get_contents('php://input'), true);
$search= isset($_POST['search']) ? $_POST['search']:"";
$q=mysqli_query($con,"select a.product_id,a.name,a.description,b.quantity,b.image,b.price from oc_product_description a,oc_product b where a.product_id=b.product_id and a.name like '%$search%'");
$i=0;
while($row=mysqli_fetch_array($q)){
	$response[$i]['name'] =  $row['name'];
 	$price = $row['price'];

	$response[$i]['price'] = $price;
	$response[$i]['image'] =  $row['image'];
	$response[$i]['product_id'] =  $row['product_id'];
	$response[$i]['quantity'] =  $row['quantity'];
	//$response[$i]['description'] =  $row['description'];
	$i++;
}
echo json_encode($response);
	