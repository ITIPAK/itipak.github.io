<?php
include "koneksi.php";
$sekarang = date("Y-m-d");
$comp = "select * from mscompany order by idcompany";
$qcomp = mysql_query($comp);
while ($hcomp = mysql_fetch_array($qcomp))
{
	$part = "select * from mspart order by idpart";
	$qpart = mysql_query($part);
	while ($hpart = mysql_fetch_array($qpart))
	{
		$zero = "insert into mspartstock (idpart, date, stock, idcompany, idunit) values ('$hpart[idpart]', '$sekarang', 0, '$hcomp[idcompany]', 'pcs')";
		mysql_query($zero);
	}
}
header("location:mspart.php");

?>