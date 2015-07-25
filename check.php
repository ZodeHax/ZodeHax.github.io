<?php
$fp = fsockopen('127.0.0.1',2008, $errno, $errstr,5);
if(!$fp){
echo "This server might be clean.";
}else{
echo "This server might be cracked.";
fclose($fp);
}
?>
