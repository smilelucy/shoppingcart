<!--for 管理者的頁面
    功能: 
	1. 新增、修改商品項目
	2. 查看已結帳訂單，出貨後更新訂單狀態 -->

<?php
session_start();
require("orderModel.php");

//check whether the user has logged in or not
if ( ! isSet($_SESSION["loginProfile"] )) {
	//if not logged in, redirect page to loginUI.php
	header("Location: loginUI.php");
	if ($_SESSION['loginProfile']['uRole'] < 9) {
		header("Location: main.php");
	}
	if ($_SESSION['loginProfile']['uRole'] < 0) {
		header("Location: deliver.php");
	}
}
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Basic HTML Examples</title>
</head>
<body>
<p>This is the Admin page 
[<a href="logout.php">logout</a>] [<a href="prdMain.php">Product Management</a>]

</p>
<hr>
<?php
	echo "Hello ", $_SESSION["loginProfile"]["uName"],
	", Your ID is: ", $_SESSION["loginProfile"]["uID"],
	", Your Role is: ", $_SESSION["loginProfile"]["uRole"],"<HR>";
	$result=getConfirmedOrderList();
	$result2=getOrderDetail2();
	// $try=count($prdId);
?>
	<table width="200" border="1">
  <tr>
    <td>id</td>
    <td>name</td>
    <td>date</td>
    <td>+</td>
  </tr>
<?php
while (	$rs=mysqli_fetch_assoc($result)) {
	echo "<tr><td>" . $rs['ordID'] . "</td>";
	echo "<td>{$rs['uID']}</td>";
	echo "<td>" , $rs['orderDate'], "</td>";
	echo "<td><a href='order.showDetail.php?ID=" , $rs['ordID'] , "'>ShowDetail</a></td></tr>";
}
?>
</table>
<!-- for 銷售量報表 -->
<table width="200" border="1">
	<tr>
		<!-- <td>prdName</td> -->
		<!-- <td>賣出數量</td> -->
	</tr>
</table>
<br/>
<br/>
<!-- for VIP報表 -->
<table width="200" border="1">
  <tr>
    <td>id</td>
    <td>Prd Name</td>
    <td>price</td>
    <td>Quantity</td>
    <td>Amount</td>
	<td>Total</td>
  </tr>
<?php
$total=0;
while (	$rs=mysqli_fetch_assoc($result2)) {
	echo "<tr><td>" . $rs['ordID'] . "</td>";
	echo "<td>{$rs['name']}</td>";
	echo "<td>" , $rs['price'], "</td>";
	echo "<td>" , $rs['quantity'], "</td>";
	$total = $rs['quantity'] *$rs['price'];
	echo "<td>" , $rs['quantity'] *$rs['price'] , "</td>";
	echo "<td>Total: $total</td>";
	echo "</tr>";
}

?>
</table>
</body>
</html>
