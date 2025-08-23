<?php
require("db.php");
$_POST = json_decode(file_get_contents('php://input'), true);

$telephone = trim($_POST['telephone']);
$otp = trim($_POST['otp']);
$new_password = $_POST['password'];

$response = array();

$sql = "SELECT * FROM oc_customer WHERE telephone='$telephone'";
$result = mysqli_query($con, $sql) or die(mysqli_error($con));

if (mysqli_num_rows($result) > 0) {
    $row = mysqli_fetch_assoc($result);
    $email = $row['email'];

    $sql = "SELECT * FROM user_pass_reset WHERE email='$telephone' AND otp='$otp' AND reset_status='pending'";
    $result = mysqli_query($con, $sql) or die(mysqli_error($con));

    if (mysqli_num_rows($result) > 0) {
        $otp_row = mysqli_fetch_assoc($result);
        if (strtotime($otp_row['expires_at']) < time()) {
            $response['status'] = "fail";
            $response['message'] = "OTP expired.";
        } else {
            $hashed_password = password_hash($new_password, PASSWORD_DEFAULT);
            mysqli_query($con, "UPDATE oc_customer SET password='$hashed_password' WHERE email='$email'");
            mysqli_query($con, "UPDATE user_pass_reset SET reset_status='used' WHERE email='$telephone'");

            $response['status'] = "success";
            $response['message'] = "Password updated successfully.";
        }
    } else {
        $response['status'] = "fail";
        $response['message'] = "Invalid OTP.";
    }
} else {
    $response['status'] = "fail";
    $response['message'] = "Invalid telephone number.";
}

echo json_encode($response);
