<?php
include "koneksi.php";
$ip = $_SERVER['REMOTE_ADDR'];
$cekdiv = "select * from msdivisi where ip='$ip'";
$qcekdiv = mysql_query($cekdiv);
$hcekdiv = mysql_num_rows($qcekdiv);
if ($hcekdiv <>0)
{
}
else
{
	header("location:indexx.php");

}

?>