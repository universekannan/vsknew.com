<?php
session_start();
require "db.php";
$response = array();
$status="";
$message="";
$customer_id = 0;
$json = file_get_contents('php://input');
$data = json_decode($json);
$username = $data->username;
$password = $data->password;
$sql="select * from oc_customer where (telephone='$username') and password='$password'";
$result = mysqli_query($con,$sql);
if(mysqli_num_rows($result)>0){
	$row = mysqli_fetch_assoc($result);
	$customer_id = $row["customer_id"];
	$status = "success";
	$message = "Login Success";
}else{
	$status="fail";
	$messgae="Login Failed";
}
$response["status"] = $status;
$response["message"] = $message;
$response["customer_id"] = $customer_id;
$_SESSION['customer_id'] = $customer_id;
echo json_encode($response);