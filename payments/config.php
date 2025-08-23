<?php

//session_start();

date_default_timezone_set('Asia/Kolkata');

$host = "localhost";
$user = "ugalaxy";
$pass = "uGalaxy123$";
$db = "vskbrothers";
$conn = mysqli_connect($host, $user, $pass, $db);

mysqli_set_charset($conn, 'utf8');
$conn->set_charset('utf8mb4');
?>
