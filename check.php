<?php
$fp = fsockopen('85.25.208.78',2008, $errno, $errstr,5);
if(!$fp){
echo "This server might be clean.";
}else{
echo "This server might be cracked.";
fclose($fp);
}
?>
