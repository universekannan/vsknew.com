<?php
require("db.php");
$response = array();
$_POST = json_decode(file_get_contents('php://input'), true);
$id=0;
$price = 0;
$id = $_POST['id'];
$selected_pincode=$_POST['selected_pincode'];

//$id = isset($_GET['id'])?$_GET['id']:0;
$sql="SELECT product_id,name,description FROM `oc_product_description` WHERE product_id='$id'";
$result = mysqli_query($con,$sql);
$desc = '';
while($row=mysqli_fetch_assoc($result)){
	$response['product_id'] = $row['product_id'];
	$response["name"] = $row["name"];
	$description = strip_tags(html_entity_decode($row["description"]));
	$response["description"] = $description;
}
$sql="SELECT image,price FROM `oc_product` WHERE product_id='$id'";
$result = mysqli_query($con,$sql);
while($row=mysqli_fetch_array($result)){
	$response['image'] = $row['image'];
 	$price = $row['price'];
	$response['price'] = $price;
	// $response['qty'] = $row['quantity'];
}
$sql = "select * from oc_product_image where product_id='$id'";
$response['product_image']=array();
$result = mysqli_query($con,$sql) or die(mysqli_error($con));
while($row=mysqli_fetch_array($result)){
	$product_image = array();
	$product_image['image'] = $row['image'];
	array_push($response['product_image'], $product_image);
}
$sql = "select c.name,b.product_id,b.price,b.image from oc_product_related a,oc_product b,oc_product_description c where a.related_id=b.product_id and a.related_id=c.product_id and a.product_id='$id'";
$result = mysqli_query($con,$sql);
$response['related_product']=array();
while($row=mysqli_fetch_array($result)){
	$related_product = array();
	$related_product['product_id'] = $row['product_id'];
	$related_product['image'] = $row['image'];
	$related_product['price'] = $row['price'];
	$related_product["name"] = $row["name"];
	array_push($response['related_product'], $related_product);
}

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

	$response['qty'] = $stock;

} 

echo json_encode($response,JSON_UNESCAPED_SLASHES);