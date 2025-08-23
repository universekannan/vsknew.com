<?php
require("db.php");
$_POST = json_decode(file_get_contents("php://input"), true);

$telephone = trim($_POST['telephone']);
$new_password = trim($_POST['password']);

$response = [];

$result = mysqli_query($con, "SELECT email FROM oc_customer WHERE telephone='$telephone'");
if (mysqli_num_rows($result) > 0) {
    $row = mysqli_fetch_assoc($result);
    $email = $row['email'];

    // $check = mysqli_query($con, "SELECT * FROM user_pass_reset WHERE email='$email' AND reset_status='verified'");
    // if (mysqli_num_rows($check) > 0) {
        // $hashed_password = md5($new_password); // 🔐 use password_hash() for better security in real systems

        // print_r($hashed_password);die();

        // Update the password
        mysqli_query($con, "UPDATE oc_customer SET password='$new_password'  WHERE email='$email'");

        // Mark password reset as completed
        mysqli_query($con, "UPDATE user_pass_reset SET reset_status='used' WHERE email='$email'");

        $response['status'] = "success";
        $response['message'] = "Password changed successfully.";
    // } else {
    //     $response['status'] = "fail";
    //     $response['message'] = "OTP verification required.";
    // }
} else {
    $response['status'] = "fail";
    $response['message'] = "Telephone not found.";
}

echo json_encode($response);
