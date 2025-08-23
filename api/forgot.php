<?php
// require("db.php");
// $_POST = json_decode(file_get_contents('php://input'), true);
// $email = trim($_POST['email']);

// function mysendmail($email,$name,$token){
// 	include "mailer/PHPMailerAutoload.php";
// 	$mail = new PHPMailer();
//     $mail->IsSMTP();
//     $mail->SMTPDebug = 0;
//     $mail->SMTPAuth   = TRUE;
// 	$mail->SMTPSecure = "tls";
// 	$mail->Port       = 587;
// 	$mail->Host       = "smtp.gmail.com";
// 	$mail->Username   = "sukumar.inapp2@gmail.com";
// 	$mail->Password   = "rails2020";
//     $body="Please click the following link to reset your password<br>";
//     $body=$body."<a href='https://app.hindustandeal.com/reset.php?token=".$token."&email=".$email."'>Reset Password</a>";
//     $mail->SetFrom("sukumar.inapp2@gmail.com", "Hindustan Deal");
//     $mail->Subject = "Hindustan Deal Forgot Password";
//     $mail->MsgHTML($body);
//     $mail->AddAddress($email, $name);
//     if (!$mail->Send()) {
//         echo "Mailer Error: " . $mail->ErrorInfo;
//         die;
//     }
// }

// $response = array();
// $sql = "select * from oc_customer where email='$email'";
// $result = mysqli_query($con,$sql) or die (mysqli_error($con));
// if(mysqli_num_rows($result) > 0){
// 	$row = mysqli_fetch_array($result);
// 	$name = $row['firstname']." ".$row['lastname'];
// 	$email = trim($_POST['email']);
// 	$sql = "select * from password_reset where email='$email' and reset_status='pending'";
// 	$result = mysqli_query($con,$sql) or die (mysqli_error($con));
// 	if(mysqli_num_rows($result)>0){
// 		$row = mysqli_fetch_array($result);
// 		$token = $row['token'];
// 		mysendmail($email,$name,$token);
// 	}else{
// 		$token = md5(uniqid(rand(), true));
// 		mysendmail($email,$name,$token);
// 		$sql = "insert into password_reset (email,token,reset_status) values ('$email','$token','pending')";
// 		mysqli_query($con,$sql) or die (mysqli_error($con));
// 		mysendmail($email,$name,$token);
// 	}
// 	$response['status'] = "success";
// 	$response['message'] = "Please check your email to reset password";
// }else{
// 	$response['status'] = "fail";
// 	$response['message'] = "Email does not exist";
// }
// echo json_encode($response);


require("db.php");
$_POST = json_decode(file_get_contents('php://input'), true);
$telephone = trim($_POST['telephone']);

// Generate OTP
$digits = 4;
$otp = rand(pow(10, $digits-1), pow(10, $digits)-1);
$expires_at = date('Y-m-d H:i:s', strtotime('+10 minutes'));

    $api_url = "http://instantalerts.in/api/smsapi";
    $api_key = "0ea8ba82c4510e7bd88e4ee1c71af59c";
    $route = "2";
    $sender_id = "VSKBRO";
    $numbers = "+91".$telephone;
    $template_id = "1707174523757623338";
    $message = $otp . " is your forgot password OTP verification code for VSK Brothers";
    //$templateid = $schedule_time;


$url = $api_url . "?" . http_build_query([
    'key'        => $api_key,
    'route'      => $route,
    'sender'     => $sender_id,
    'number'     => $numbers,
    'templateid' => $template_id,
    'sms'        => $message,
]);
$response = file_get_contents($url);


$response = array();

// Check if phone exists
$sql = "SELECT * FROM oc_customer WHERE telephone='$telephone'";
$result = mysqli_query($con, $sql) or die(mysqli_error($con));

//  if (mysqli_num_rows($result) > 0) {
    $row = mysqli_fetch_array($result);
     $email = $row['email'];

    mysqli_query($con, "DELETE FROM user_pass_reset WHERE email='$telephone'");

    $sql = "INSERT INTO user_pass_reset (email, otp, reset_status, expires_at) VALUES ('$telephone', '$otp', 'pending', '$expires_at')";
    mysqli_query($con, $sql) or die(mysqli_error($con));

    $_SESSION['otp'] = $otp;
    $status = "otp_sent";
    $message = "OTP sent successfully";
    $response["otp"] = $otp;

// } else {
//     $response['status'] = "fail";
//     $response['message'] = "Telephone not registered.";
// }
$response["status"] = $status;
$response["message"] = $message;
echo json_encode($response);
