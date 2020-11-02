<!-- for 刪除購物車的product -->
<?php
session_start();
//check whether the user has logged in or not
if ( ! isSet($_SESSION["loginProfile"] )) {
	//if not logged in, redirect page to loginUI.php
	header("Location: loginUI.php");
}

require("orderModel.php");


$serno=(int)$_GET['serno'];
// 呼叫orderModel裡的removeFromCart function執行刪除的動作
removeFromCart($serno);
// 執行完後自動跳轉回Cart.showDetail.php
header("Location: Cart.showDetail.php");
?>
