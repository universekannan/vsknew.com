<?php
require "db.php";
session_start();

$response = array();
$status = "";
$message = "";

$json = file_get_contents('php://input');
$data = json_decode($json);

$userOtp = $data->otp;
$userData = $_SESSION['registration_data'];
$telephone = $data->telephone;

$sql2 = "SELECT code FROM oc_customer WHERE telephone = '$telephone' LIMIT 1";
$result2 = mysqli_query($con, $sql2);
$row = mysqli_fetch_assoc($result2);


if ($row['code'] == $userOtp) {

    
    $status = "success";
    $message = "Registration successful";

    $response["customer_id"] = $row['customer_id'];
    $_SESSION['customer_id'] = $row['customer_id'];
   
    unset($_SESSION['otp']);
    unset($_SESSION['registration_data']);
} else {
    $status = "fail";
    $message = "Invalid OTP";
}

$response["status"] = $status;
$response["message"] = $message;

echo json_encode($response);
?>
