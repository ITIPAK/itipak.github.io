<?php
include "koneksi.php";
$lokasi = $_GET[lokasi];
$ip = $_SERVER['REMOTE_ADDR'];
date_default_timezone_set('Asia/Jakarta');
$tanggal = Date("Y-m-d H:s:i");
$cekdiv = "select * from msdivisi where iddivisi='$lokasi'";
$qcekdiv = mysql_query($cekdiv);
$hcekdiv = mysql_num_rows($qcekdiv);
//echo "$ip, $lokasi";
if ($hcekdiv <>0)
{
	$ubah = "update msdivisi set ip = '$ip' where iddivisi = '$lokasi'";
	mysql_query($ubah);
	header("location:index.php");
}
else
{
	header("location:index.php");
}

?>