<?php

require("db.php");

$_POST = json_decode(file_get_contents('php://input'), true);
$order_id=$_GET['addrID'];

$q=mysqli_query($con,"SELECT * FROM `oc_order` WHERE order_id='$order_id'");

$data=array();
while ($row=mysqli_fetch_object($q)){
 $data[]=$row;
}

echo json_encode($data);
?>