<?php
header("Content-Type: application/json");
require("db.php");

try {
    // Decode JSON input
    $input = json_decode(file_get_contents("php://input"), true);
    if (!$input || !isset($input['telephone']) || !isset($input['otp'])) {
        throw new Exception("Invalid input");
    }

    $telephone = mysqli_real_escape_string($con, trim($input['telephone']));
    $otp = mysqli_real_escape_string($con, trim($input['otp']));
    $response = [];

    // Check OTP match
    $query = "SELECT * FROM user_pass_reset WHERE email='$telephone' AND otp='$otp' AND reset_status='pending' ORDER BY id DESC LIMIT 1";
    $result = mysqli_query($con, $query);

    if (!$result) {
        throw new Exception("Database error: " . mysqli_error($con));
    }

    if (mysqli_num_rows($result) > 0) {
        $otp_data = mysqli_fetch_assoc($result);
        $expires_at = strtotime($otp_data['expires_at']);

        if ($expires_at < time()) {
            $response = [
                'status' => "fail",
                'message' => "OTP expired. Please request a new one."
            ];
        } else {
            // Mark OTP as verified
            mysqli_query($con, "UPDATE user_pass_reset SET reset_status='verified' WHERE email='$telephone'");
            $response = [
                'status' => "verified",
                'message' => "OTP verified successfully."
            ];
        }
    } else {
        $response = [
            'status' => "fail",
            'message' => "Invalid or expired OTP."
        ];
    }

    echo json_encode($response);
} catch (Exception $e) {
    echo json_encode([
        'status' => 'fail',
        'message' => $e->getMessage()
    ]);
}
