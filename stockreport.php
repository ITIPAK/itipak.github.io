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
}
$company = $_GET['company'];
$selcompany = "select * from mscompany where idcompany = '$company'";
$qselcompany = mysql_query($selcompany);
$hselcompany = mysql_fetch_array($qselcompany);
?>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<title>IT Ticketing - Stock Sparepart</title>
</head>

<body>
<table width="595" height="842" align="center">
	<tr>
	  <td valign="top" align="center">
		<div align="right"><font face="arial" size="2">FO-IT-02.00</font></div>
			<table width="100%" border="1" rules="all" bordercolor="#000000" align="center">
				<tr>
					<td rowspan="2" width="50">
						<?php
							if ($company=='ipak')
							{
								echo "<img src='images/ipaklogo.jpg' width=90 height=50>";
							}
							else
							{
								echo "<img src='images/viplogo.jpg' width=90 height=50>";
							}
						?>
					</td>
					
					<td align="center">
						<font face="Arial" size="3"><b><?php echo "$hselcompany[company]"; ?></b></font>
					</td>
					
					
					
					
				</tr>
				
				<tr>
					
					<td align="center">
						<font face="Arial" size="3"><b>Laporan Stock Sparepart</b><br>
						(Report of Sparepart Stock)						
						</font>
					</td>
					
					
					
					
				</tr>
				
			</table>
			<br></br>
			<table width="100%" rules="all" border="1" bordercolor="#000000">
				<tr bgcolor="#CCCCCC">
					<th><font face="arial" size="2"><b>No</b></font></th>
					<th><font face="arial" size="2"><b>Kode Sparepart</b></font></th>
					<th><font face="arial" size="2"><b>Nama Sparepart</b></font></th>
					<th><font face="arial" size="2"><b>Stock <br>Tersedia</b></font></th>
					<th><font face="arial" size="2"><b>Tanggal Terakhir</b></font></th>
				</tr>
				<?php
					$getpart = "select * from mspart order by idpart";
					$qgetpart = mysql_query($getpart);
					$n=1;
					while($hgetpart = mysql_fetch_array($qgetpart))
					{
						$getstock = "select * from mspartstock where idpart = '$hgetpart[idpart]' order by date desc";
						$qgetstock = mysql_query($getstock);
						$hgetstock = mysql_fetch_array($qgetstock);
						
					?>
					<tr align="justify">
						<td><font face="arial" size="2"><?php echo "$n"; ?></font></td>
						<td><font face="arial" size="2"><?php echo "$hgetpart[idpart]"; ?></font></td>
						<td><font face="arial" size="2"><?php echo "$hgetpart[part]"; ?></font></td>
						<td><font face="arial" size="2"><?php echo "$hgetstock[stock]"; ?></font></td>
						<td><font face="arial" size="2"><?php echo date("l - d M Y", strtotime($hgetstock[date])); ?></font></td>
					</tr>
					<?php
					$n++;
					}
				?>
				
			</table>
			<br></br>
			<table border="1" width="250" align="right" rules="all">
				<tr>
					<th><font face="arial" size="2"><b>Dibuat :</b></font></th>
					<th><font face="arial" size="2"><b>Disetujui :</b></font></th>
				</tr>
				<tr>
					<td align="center" height="80" valign="bottom"></td>
					<td align="center" height="80" valign="bottom"></td>
				</tr>
				<tr>
					<td align="center" valign="bottom"><?php echo "$hsyncron[nama]"; ?></td>
					<td align="center" valign="bottom"><?php echo "$hselcompany[qa]"; ?></td>
				</tr>
			</table>
			
		    <p>&nbsp;</p>
	    <p>&nbsp;</p>
	    <p>&nbsp;</p>
	    <br>
	    
		<div align="right"><font face="arial" size="1">Revisi : 00.00</font></div>
	  </td>
	</tr>
</table>
</body>
</html>
