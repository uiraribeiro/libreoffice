<?php
echo "<h1>Criando conteiner</h1>";
$url = "http://dockersock:2735/v1.41/containers/create";
// /usr/bin/soffice --headless --convert-to pdf --outdir /tmp/ /tmp/modelo-tcc-unesp-itapeva.docx
$xml = '{"Image": "libre1", "Cmd": ["/usr/bin/soffice", "--headless","--convert-to","pdf","--outdir","/var/www/html/pdf","/var/www/html/pdf/modelo-tcc-unesp-itapeva.docx"],"HostConfig" : { "VolumesFrom":["php"]}  }';

$ret =  curlPOST($xml,$url);
$json_convertido = json_decode($ret,true);
$id= $json_convertido['Id'];
echo "Conteiner criado: $id\n";


$url = "http://dockersock:2735/v1.41/containers/$id/start";
$xml = "";
$ret =  curlPOST($xml,$url);

$url = "http://dockersock:2735/v1.41/containers/$id";
$xml = "";
$ret =  curlDelete($url,$xml);


function curlPOST($xml,$url)
{
$header[] = "Content-Type: application/json";
        $ch = curl_init();
        $options = array(CURLOPT_URL => $url,
            CURLOPT_HTTPHEADER => $header,
            CURLOPT_SSL_VERIFYPEER => false,
            CURLOPT_POST => true,
            CURLOPT_POSTFIELDS => $xml,
            CURLOPT_RETURNTRANSFER => true,
            CURLINFO_HEADER_OUT => true
        );
        curl_setopt_array($ch, $options);
        $ret = curl_exec($ch);
        $err = curl_error($ch);
        $info = curl_getinfo($ch);
        curl_close($ch);
	return $ret;
}

function curlDelete($path,$json)
{
    $ch = curl_init($path);
    curl_setopt($ch, CURLOPT_CUSTOMREQUEST, "DELETE");
    curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
    curl_setopt($ch, CURLOPT_HTTPHEADER, array('Content-Type: application/json'));
    $result = curl_exec($ch);
    curl_close($ch);
    return $result;
}

