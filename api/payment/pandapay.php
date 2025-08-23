<?php

include 'config.php'; // Database connection include karein
require_once 'SB.php';
use SB\Sudipto\SB;

// Database Connection Check
if ($conn->connect_error) {
    die("Database Connection Failed: " . $conn->connect_error);
}

// Check if the request method is GET
if ($_SERVER['REQUEST_METHOD'] === 'GET') {
    // `by_amount` required hai, baaki sab optional hai
    if (isset($_GET['by_amount']) && !empty($_GET['by_amount'])) {
        // Retrieve the GET data and prevent SQL Injection
        $by_amount = $conn->real_escape_string($_GET['by_amount']);

        // Optional fields, agar nahi mile to default empty string rakhein
        $userid = isset($_GET['userid']) ? $conn->real_escape_string($_GET['userid']) : '';
        $phone = isset($_GET['phone']) ? $conn->real_escape_string($_GET['phone']) : '';
        $name = isset($_GET['name']) ? $conn->real_escape_string($_GET['name']) : '';

        // Generate unique transaction and order IDs
        $merchantTransactionId = 'MUID' . substr(uniqid(), -6);
        $merchantOrderId = 'Order' . mt_rand(1000, 99999);
        $amount = $by_amount * 100;
        $currentDateTime = date("Y-m-d H:i:s");

        // Insert transaction data into the database (including merchant_order_id)
        $sql = "INSERT INTO `transaction` (`userid`, `amount`, `date`, `name`, `phone`, `tranjactionid`, `merchant_order_id`, `response`, `type`, `status`) 
                VALUES ('$userid', '$by_amount', '$currentDateTime', '$name', '$phone', '$merchantTransactionId', '$merchantOrderId', '', 'pending', '1')";

        if ($conn->query($sql) === TRUE) {
            // Insert successful, redirect to payment
            header('Location: pay.php?amount=' . $by_amount . '&orderId=' . $merchantOrderId);
            exit;
        } else {
            // Insert failed, show error
            die("Database Insert Error: " . $conn->error);
        }

    } else {
        // Agar `by_amount` nahi hai to error show karein
        echo "Error: Amount is required!";
        header('Location: https://epic-store.in/');
        exit;
    }
} else {
    // Handle invalid request methods
    echo "Invalid Request Method!";
    header('Location: https://epic-store.in/');
    exit;
}

?>
