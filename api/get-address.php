<?php

require("db.php");

$_POST = json_decode(file_get_contents('php://input'), true);
$customer_id=$_GET['customer_id'];

$q = mysqli_query($con, "
    SELECT o.*
    FROM oc_order o
    INNER JOIN (
        SELECT telephone, MAX(order_id) AS max_order_id
        FROM oc_order
        WHERE customer_id = '$customer_id'
        GROUP BY telephone
    ) latest ON o.telephone = latest.telephone AND o.order_id = latest.max_order_id
");

$data=array();
while ($row=mysqli_fetch_object($q)){
 $data[]=$row;
}

echo json_encode($data);
?>