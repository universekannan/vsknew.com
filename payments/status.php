<?php

require_once 'SB.php';
use SB\Sudipto\SB;

include 'config.php'; // Database connection include karein

$statusMessage = "";
$transactionDetails = [];

if (isset($_GET['orderId'])) {
    $orderId = $conn->real_escape_string($_GET['orderId']);

    $phonepe = new SB('SU2504291701283137185308', 'c36751c4-3de0-46e5-9b65-e5dd59176796', 'PROD');
    $phonepe->checkAuth();
    $status = $phonepe->checkStatus($orderId);

    if ($status->state == "COMPLETED") {
        // Update the transaction status to 'SUCCESS'
        $updateSql = "UPDATE `transaction` SET `status` = 'SUCCESS' WHERE `merchant_order_id` = ?";
        $stmt = $conn->prepare($updateSql);
        $stmt->bind_param("s", $orderId);
        $stmt->execute();
        $stmt->close();

        // Fetch updated transaction details
        $stmt = $conn->prepare("SELECT `userid`, `amount` FROM `transaction` WHERE `merchant_order_id` = ?");
        $stmt->bind_param("s", $orderId);
        $stmt->execute();
        $transactionDetails = $stmt->get_result()->fetch_assoc();
        $stmt->close();
		
        $updateSql2 = "UPDATE `oc_order` SET `payment_status` = 'SUCCESS' WHERE `merchant_order_id` = ?";
        $stmt2 = $conn->prepare($updateSql2);
        $stmt2->bind_param("s", $orderId);
        $stmt2->execute();
        $stmt2->close();
        $conn->close();

			
        $statusMessage = "<h2 style='color: green;'>Payment Successful!</h2>
                          <p>User ID: <b>" . htmlspecialchars($transactionDetails['userid']) . "</b></p>
                          <p>Amount Paid: ₹<b>" . htmlspecialchars($transactionDetails['amount']) . "</b></p>
                          <p>Transaction ID: <b>" . htmlspecialchars($orderId) . "</b></p>";
    } else {
        $statusMessage = "<h2 style='color: red;'>Payment Status: " . htmlspecialchars($status->state) . "</h2>";
    }
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Processing Payment...</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            text-align: center;
            background-color: #f4f4f4;
            padding: 50px;
        }
        .container {
            background: #fff;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 4px 10px rgba(0,0,0,0.1);
            max-width: 400px;
            margin: auto;
        }
        h2 {
            color: #444;
            margin-bottom: 20px;
        }
        .loader {
            border: 6px solid #f3f3f3;
            border-top: 6px solid #4CAF50;
            border-radius: 50%;
            width: 50px;
            height: 50px;
            animation: spin 1s linear infinite;
            margin: 20px auto;
        }
        @keyframes spin {
            0% { transform: rotate(0deg); }
            100% { transform: rotate(360deg); }
        }
        .progress-bar {
            width: 100%;
            background: #ddd;
            height: 10px;
            border-radius: 5px;
            overflow: hidden;
            margin-top: 15px;
        }
        .progress {
            width: 0;
            height: 100%;
            background: #4CAF50;
            transition: width 2s;
        }
        p {
            color: #666;
            font-size: 16px;
        }
    </style>
    <script>
        window.onload = function() {
            let progress = document.querySelector('.progress');
            progress.style.width = '100%';
            setTimeout(() => {
                document.getElementById('statusMessage').style.display = 'block';
                document.querySelector('.loader').style.display = 'none';
            }, 3000); // Show status after 3 seconds
        };
    </script>
</head>
<body>
    <div class='container'>
        <h2>Processing Your Payment</h2>
        <div class='loader'></div>
        <p>Please wait, we are verifying your transaction...</p>
        <div class='progress-bar'>
            <div class='progress'></div>
        </div>

        <!-- Payment Status Message (Initially Hidden) -->
        <div id="statusMessage" style="display: none; margin-top: 20px;">
            <?= $statusMessage ?>
        </div>
    </div>
</body>
</html>
