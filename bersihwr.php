<?php
include "koneksi.php";
session_start();

$syncron = "select * from mslogin where idlogin = '$_SESSION[idlog]' and password = '$_SESSION[passwordlog]'";
$qsyncron = mysql_query($syncron);
$hsyncron = mysql_fetch_array($qsyncron);
if ($_SESSION[idlog]=='' and $_SESSION[passwordlog]=='')
{
	header("location:index.php");
}
else
{
$bersihdata = "delete from trwr";
$bersihdata2 = "delete from trgetparthd";
$bersihdata3 = "delete from trgetpartdt";
$bersihdata4 = "delete from trgetpartdt2";
$bersihdata5 = "delete from wrschedule";
$bersihdata6 = "delete from actionwr";
mysql_query($bersihdata);
mysql_query($bersihdata2);
mysql_query($bersihdata3);
mysql_query($bersihdata4);
mysql_query($bersihdata5);
mysql_query($bersihdata6);
}

?>