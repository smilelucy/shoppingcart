<!-- for處理訂單 -->
<?php
session_start();
//check whether the user has logged in or not
if ( ! isSet($_SESSION["loginProfile"] )) {
	//if not logged in, redirect page to loginUI.php
	header("Location: loginUI.php");
}
require("orderModel.php");
$address=$_POST['address'];
// 呼叫orderModel裡面的checkout把訂單資訊更新到資料庫
// 如果訂單成立echo訂單處理中
// 如果沒有...
if (checkout($_SESSION["loginProfile"]["uID"],$address)) {
	echo "感謝! 訂單處理中..";
} else {
	echo "sorry, internal error, please try again..";	
}
?>
<a href="main.php">OK</a>
