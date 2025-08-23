<?php

ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);

session_start();

// Connect to DB
require("db.php");

$_POST = json_decode(file_get_contents("php://input"), true);

$field = $_POST['field'];
$response = ['exists' => false];

if ($field == 'telephone' && !empty($_POST['telephone'])) {
    $telephone = $con->real_escape_string($_POST['telephone']);
    $check = $con->query("SELECT * FROM oc_customer WHERE telephone = '$telephone' LIMIT 1");
    if ($check->num_rows > 0) {
        $response['exists'] = true;
    }
}

if ($field == 'email' && !empty($_POST['email'])) {
    $email = $con->real_escape_string($_POST['email']);
    $check = $con->query("SELECT * FROM oc_customer WHERE email = '$email' LIMIT 1");
    if ($check->num_rows > 0) {
        $response['exists'] = true;
    }
}

echo json_encode($response);
?>
