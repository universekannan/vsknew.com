<?php

namespace SB\Sudipto;
//PhonePe v2 SDK by Sudipto
class SB
{
    private $mode = "PROD";
    private $client_id;
    private $client_secret;
    private $url;
    public $access_token;
    public function __construct($client_id, $client_secret, $mode = "PROD")
    {

        $this->client_id = $client_id;
        $this->client_secret = $client_secret;
        $this->mode = $mode;
        if ($mode == "PROD") {
            $this->url = "https://api.phonepe.com/apis";
        } else {
            $this->url = "https://api-preprod.phonepe.com/apis";
        }
    }

    public function checkAuth()
    {
        $url = "{$this->url}/identity-manager/v1/oauth/token";
        $header = array(
            "Content-Type: application/x-www-form-urlencoded",
        );
        $body = http_build_query(array(
            "client_id" => $this->client_id,
            "client_secret" => $this->client_secret,
            "client_version" => 1,
            "grant_type" => "client_credentials"
        ));

        if (file_exists('access_token.txt')) {
            $data = json_decode(file_get_contents('access_token.txt'), true);
            if (time() > $data['expires_in']) {
                $this->access_token = $data['access_token'];
                return;
            }
        }

        $resp = $this->CallApi($url, $body, $header, 'POST');
        if (isset($resp->access_token)) {
            $data = array(
                'access_token' => $resp->access_token,
                'expires_in' => time() + $resp->session_expires_at
            );
            file_put_contents('access_token.txt', json_encode($data));
        }
        $this->access_token = $resp ? $resp->access_token : null;
    }

    public function initiateTransaction($amount, $orderId = null)
    {

        $url = "{$this->url}/pg/checkout/v2/pay";
        $header = array(
            "Authorization: O-Bearer {$this->access_token}",
            "Content-Type: application/json",
        );
        $body = json_encode(array(
            "merchantOrderId" => $orderId ?? $orderId = time(),
            "amount" => $amount,
            "expireAfter" => 1200,
            "metaInfo" => array(
                "udf1" => "additional-information-1",
                "udf2" => "additional-information-2",
                "udf3" => "additional-information-3",
                "udf4" => "additional-information-4",
                "udf5" => "additional-information-5"
            ),
            "paymentFlow" => array(
                "type" => "PG_CHECKOUT",
                "message" => "Payment message used for collect requests",
                "merchantUrls" => array(
                    "redirectUrl" => "http://{$_SERVER['HTTP_HOST']}" . dirname($_SERVER['PHP_SELF']) . "/status.php?orderId={$orderId}",
                )
            )
        ));


        $resp = $this->CallApi($url, $body, $header, 'POST');
        return $resp;
    }
    public function CallApi($url, $body = null, $header = null, $method = 'POST')
    {
        $curl = curl_init();
        curl_setopt_array($curl, [
            CURLOPT_URL => $url,
            CURLOPT_RETURNTRANSFER => true,
            CURLOPT_ENCODING => "",
            CURLOPT_MAXREDIRS => 10,
            CURLOPT_TIMEOUT => 30,
            CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
            CURLOPT_CUSTOMREQUEST => $method,
            CURLOPT_POSTFIELDS => $body,
            CURLOPT_HTTPHEADER => $header,
        ]);

        $response = curl_exec($curl);
        $err = curl_error($curl);

        curl_close($curl);

        if ($err) {
            echo "cURL Error #:" . $err;
        } else {
            $res = json_decode($response);
            return $res;
        }
    }
    public function checkStatus($orderId)
    {
        $url = "{$this->url}/pg/checkout/v2/order/{$orderId}/status";
        $header = array(
            "Authorization: O-Bearer {$this->access_token}",
            "Content-Type: application/json",
        );
        $resp = $this->CallApi($url, null, $header, 'GET');
        if ($resp && isset($resp->state)) {
            return $resp;
        } 
        
    }
}
