<?php

// baca file 02_apacheport.txt
$apacheport = "";
$myfile = fopen("02_apacheport.txt", "r") or die("Unable to open file 02_apacheport.txt!");
$apacheport = fgets($myfile);
$apacheport = ($apacheport == "" ? "" : ":".$apacheport);
fclose($myfile);

// tulis ke 01_db.txt
$myfile = fopen("01_db.txt", "w") or die("Unable to open file 01_db.txt!");
//$txt = "John Doe\n";
$txt = $_GET["db"];
fwrite($myfile, $txt);
fclose($myfile);
header("location: http://localhost".$apacheport."/simkop6");
?>