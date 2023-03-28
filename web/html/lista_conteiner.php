<?php

echo "<h1>Gerando PHP</h1>";
$url = "http://dockersock:2735/info";

$ch = curl_init();
$options = array(CURLOPT_URL => $url,

            CURLOPT_SSL_VERIFYPEER => false,
            CURLOPT_RETURNTRANSFER => true
        );
curl_setopt_array($ch, $options);
$ret = curl_exec($ch);
$err = curl_error($ch);
$info = curl_getinfo($ch);
curl_close($ch);
print_r($ret);
print_r($err);
