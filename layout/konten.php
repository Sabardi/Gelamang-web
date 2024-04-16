
<?php
 $hal = $_GET["hal"];

 if(!empty($hal)){
     include_once $menuBawah[$hal];
 }else{
     include_once "Home.php";
 }


?>
