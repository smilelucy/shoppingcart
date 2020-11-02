<!-- for 處理訂單，更改訂單狀態 -->
<?php
session_start();
//check whether the user has logged in or not
if ( ! isSet($_SESSION["loginProfile"] )) {
	//if not logged in, redirect page to loginUI.php
	header("Location: loginUI.php");
}
require("orderModel.php");
$ordID=(int)$_GET['id'];

if (delivershipout($ordID)) {
	echo "訂單已送達";
} else {
	echo "sorry, internal error, please try again..";	
}
?>
<a href="deliver.php">OK</a>
