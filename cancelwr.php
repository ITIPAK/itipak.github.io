<?php
include "koneksi.php";
session_start();

$syncron = "select * from mslogin where idlogin = '$_SESSION[idlog]' and password = '$_SESSION[passwordlog]'";
$qsyncron = mysql_query($syncron);
$hsyncron = mysql_fetch_array($qsyncron);
$rsyncron = mysql_num_rows($qsyncron);
if ($rsyncron <> '1')
{
	header("location:index.php");
}
else
{

	$selcompany = "select * from mscompany where idcompany = '$hsyncron[idcompany]'";
	$qselcompany = mysql_query($selcompany);
	$hselcompany = mysql_fetch_array($qselcompany);
	$no = $_GET['no'];
	$cancel = $_GET['cancel'];
	
	if (!empty($no) and $cancel=='1')
	{
		$closenow = date("Y-m-d");
		$cekstatuswr = "select * from trwr where nowr = '$no'";
		$qcekstatuswr = mysql_query($cekstatuswr);
		$hcekstatuswr = mysql_fetch_array($qcekstatuswr);
		$status = $hcekstatuswr[status];
		$update = "update trwr set status = 'CA', closedate = '$closenow' where nowr = '$no'";
		if (mysql_query($update))
		{
				$wr = "select * from trwr where nowr = '$no'";
				$qwr = mysql_query($wr);
				$hwr = mysql_fetch_array($qwr);
			
				$tech = "select * from mstech where idtech = '$hwr[idtech]'";
				$qtech = mysql_query($tech);
				$htech = mysql_fetch_array($qtech);
				
				$div = "select * from msdivisi where iddivisi = '$hwr[iddivisi]'";
				$qdiv = mysql_query($div);
				$hdiv = mysql_fetch_array($qdiv);
				$datesign = date("Y-m-d");
				
				$receipt = $htech[email].",".$hdiv[email];
				$nocet =$no;
				$judul = "Work Request has Canceled";
				$subject = "Work Request IT has Canceled";
				include "sendmailCA.php";
				header("location:wr.php");
		}
		else
		{
		}
	}
	else
	{
	}
}
?>