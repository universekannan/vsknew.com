<?php

ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);

require("db.php");
$admin_margin = 0;
$price = 0;
$_POST = json_decode(file_get_contents('php://input'), true);
$category_id=$_POST['category_id'];

$q=mysqli_query($con,"select category_id,image from `oc_category` where parent_id='$category_id'");

$data=array();
while ($row=mysqli_fetch_array($q)){
 $data[]=$row;
}

$lastElement = end($data);
echo "[";
foreach ($data as $category) {
	$c_id=$category['category_id'];
	$image=$category['image'];
	$q=mysqli_query($con,"select category_id,name from `oc_category_description` where category_id='$c_id'");

	$row=mysqli_fetch_array($q);
	$category_id=$row['category_id'];
	$name=$row['name'];
	//$image=strtolower($name);
	//$image='/category_images/'.str_replace(' ','',$image).'.jpg';

	echo '{"category_id":'.'"'.$category_id.'","name":'.'"'.$name.'","image":'.'"'.$image.'"}';
	 if($category!= $lastElement) {
	 	echo ",";
	 }
}

echo "]";
?>
