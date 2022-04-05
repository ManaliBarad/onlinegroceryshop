<?php

	$connect=mysqli_connect("localhost","root","","ogs") or die("connection failed");

	$x="'".$_REQUEST["pid"]."'";
	$f="'".$_REQUEST['pname']."'";
	$m="'".$_REQUEST['ctype']."'";
	$l="'".$_REQUEST['ptype']."'";
	$u="'".$_REQUEST['qty']."'";
	$p="'".$_REQUEST['unit']."'";
	$a="'".$_REQUEST['rate']."'";
	$b="'".$_REQUEST['uname']."'";
	$c="'".$_REQUEST['status']."'";
	$query="update delivery set pname=".$f.",ctype=".$m.",ptype=".$l.",qty=".$u.",unit=".$p.",rate=".$a.",cname=".$b.",flag=".$c."
	where pid=".$x."";
	echo $query;

	mysqli_query($connect,$query) or die("Failed");
	mysqli_close($connect);

    header("location:deliveryreport.php");


?>