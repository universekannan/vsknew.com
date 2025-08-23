<?php
// require "db.php";
// $response = array();
// $status="";
// $message="";
// $json = file_get_contents('php://input');
// $data = json_decode($json);
// $firstname = $data->firstname;
// $lastname = $data->lastname;
// $telephone = $data->telephone;
// $email = trim($data->email);
// $password = $data->password;
// $sql1 = "select email from oc_customer where email='$email'";
// $result1 = mysqli_query($con,$sql1);
// $sql2 = "select telephone from oc_customer where telephone='$telephone'";
// $result2 = mysqli_query($con,$sql2);
// if(mysqli_num_rows($result1)>0){
// 	$status="fail";
// 	$message="Duplicate Email";
// }else if(mysqli_num_rows($result2)>0){
// 	$status="fail";
// 	$message="Duplicate Telephone";
// }else{
// 	$sql = "insert into oc_customer (firstname,lastname,telephone,email,password) values ('$firstname','$lastname','$telephone','$email','$password')";
// 	mysqli_query($con,$sql) or die(mysqli_error($con));
// 	$status="success";
// 	$message="Registration successfull";
// }
// $response["status"] = $status;
// $response["message"] = $message;
// echo json_encode($response);
?>


<?php
require "db.php";

$response = array();
$status = "";
$message = "";

$json = file_get_contents('php://input');
$data = json_decode($json);

$firstname = $data->firstname;
$lastname = $data->lastname;
$telephone = $data->telephone;
$email = trim($data->email);
$password = $data->password;

$sql1 = "SELECT email FROM oc_customer WHERE email='$email'";
$sql2 = "SELECT telephone FROM oc_customer WHERE telephone='$telephone'";

$result1 = mysqli_query($con, $sql1);
$result2 = mysqli_query($con, $sql2);

if (mysqli_num_rows($result1) > 0) {
    $status = "fail";
    $message = "Duplicate Email";
} else if (mysqli_num_rows($result2) > 0) {
    $status = "fail";
    $message = "Duplicate Telephone";
} else {

    $digits = 4;
    $otp = rand(pow(10, $digits-1), pow(10, $digits)-1);
	
	//$d = mktime(11, 14, 54, 8, 12, 2014);
   // $schedule_time = date("Y-m-d h:i:sa", $d);

   $sql = "insert into oc_customer (firstname,lastname,telephone,email,password,code) values ('$firstname','$lastname','$telephone','$email','$password','$otp')";
   mysqli_query($con,$sql);

    $api_url = "http://instantalerts.in/api/smsapi";
    $api_key = "0ea8ba82c4510e7bd88e4ee1c71af59c";
    $route = "2";
    $sender_id = "VSKBRO";
    $numbers = "+91".$telephone;
    $template_id = "1707174530738517104";
    $message = $otp . " is your OTP verification code for signup VSK Brothers https://vskbrothers.com";
    //$templateid = $schedule_time;

    $url = $api_url . "?" . http_build_query([
        'key'        => $api_key,
        'route'      => $route,
        'sender'     => $sender_id,
        'number'     => $numbers,
        'templateid' => $template_id,
        'sms'        => $message,
    ]);
    $api_response  = file_get_contents($url);

//http://instantalerts.in/api/smsapi?key=0ea8ba82c4510e7bd88e4ee1c71af59c&route=2&sender=VSKBRO&number=8870559764&templateid=1707174530738517104&sms=1234 is your OTP verification code for signup VSK Brothers https://vskbrothers.com

    $_SESSION['otp'] = $otp;
    $_SESSION['registration_data'] = [
        'firstname' => $firstname,
        'lastname' => $lastname,
        'telephone' => $telephone,
        'email' => $email,
        'password' => $password,
        'otp' => $otp
    ];

    $status = "otp_sent";
    $message = "OTP sent successfully";
    $response["otp"] = $otp;

}

$response["status"] = $status;
$response["message"] = $message;
echo json_encode($response);
?>
