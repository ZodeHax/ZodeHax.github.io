<?php
$var=fsockopen('85.25.208.78',2008,$var,$var,5);
if(!$var){
    echo "This server might be clean.";
}
else{
    echo "This server might be cracked.";
    fclose($var);
}
?>
