<?php

error_reporting(E_ALL);
ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);

require("db.php");

$_POST = json_decode(file_get_contents('php://input'), true);

$order_id = $_GET['order_id'];

// 1. Get product list for the order
$product_query = mysqli_query($con, "SELECT 
  op.*, 
  pd.name AS proname
FROM oc_order_product op
LEFT JOIN oc_product_description pd 
  ON pd.product_id = op.product_id 
WHERE op.order_id = $order_id");

$products = array();
while ($row = mysqli_fetch_object($product_query)) {
    $products[] = $row;
}

// 2. Get order info (including order_status_id)
$order_query = mysqli_query($con, "SELECT * FROM oc_order WHERE order_id = $order_id");
$order = mysqli_fetch_assoc($order_query);

// 3. Get status name from oc_order_status
$status_name = '';
if ($order) {
    $status_query = mysqli_query($con, "SELECT name FROM oc_order_status WHERE order_status_id = " . $order['order_status_id']);
    $status = mysqli_fetch_assoc($status_query);
    $status_name = $status ? $status['name'] : '';
}

// 4. Final response structure
$response = array(
    'order' => $order,
    'status_name' => $status_name,
    'products' => $products
);

echo json_encode($response);

?>
