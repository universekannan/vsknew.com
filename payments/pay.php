<?php
require_once 'SB.php';

use SB\Sudipto\SB;

if (isset($_GET['amount']) && $_GET['amount'] > 0 && isset($_GET['orderId'])) {
    $phonepe = new SB('SU2504291701283137185308', 'c36751c4-3de0-46e5-9b65-e5dd59176796', 'PROD');
    $phonepe->checkAuth();
    //$pay = $phonepe->initiateTransaction(10*100);
      $pay = $phonepe->initiateTransaction($_GET['amount']*100,$_GET['orderId']);
    //echo json_encode($pay , JSON_PRETTY_PRINT);
    // header("Location: {$pay->redirectUrl}");

?>

    <!DOCTYPE html>
    <html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Payment Page</title>

    </head>

    <body>
        <script src="https://mercury.phonepe.com/web/bundle/checkout.js"></script>
        <script>
            function initPhonePeCheckout() {
                console.log('initPhonePeCheckout');
                if (window.PhonePeCheckout) {
                    window.PhonePeCheckout.transact({
                        tokenUrl: '<?php echo $pay->redirectUrl; ?>',
                        callback: function(response) {
                            console.log('response', response);
                            window.location.href = 'status.php?orderId=<?php echo $_GET['orderId']; ?>';

                        },

                        type: "IFRAME"
                    });
                } else {
                    console.error('PhonePeCheckout is not available.');
                }
            }

            document.addEventListener('DOMContentLoaded', function() {
                initPhonePeCheckout();
            });
        </script>
    </body>

    </html>
<?php } ?>