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
<table width="700" align="center">
	
	<tr>
	  <td valign="top" align="center">
	  	<div align="right">
			<font face="arial" size="1">FO-IT-01.00</font>
		</div>
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
						<font face="Arial" size="3"><b>Data Komputer</b><br>
						(List of Computers)						
						</font>
					</td>
					
					
					
					
				</tr>
				
			</table>
			<br></br>
			<table width="100%" rules="all" border="1" bordercolor="#000000">
			<?php
			
			$div = "select * from msdivisi where idcompany = '$company' and utama='Y'";
					$qdiv = mysql_query($div);
					while ($hdiv = mysql_fetch_array($qdiv))
					{
						?>
				<tr align="justify" bgcolor="#666666">
					<td colspan="8"><font face="arial" size="2"><b>Divisi : <?php echo "$hdiv[divisi]"; ?></b></font></td>
				</tr>
				<tr bgcolor="#CCCCCC">
					<th><font face="arial" size="2"><b>No</b></font></th>
					<th><font face="arial" size="2"><b>IP Address</b></font></th>
					<th><font face="arial" size="2"><b>CPU Name</b></font></th>
					<th><font face="arial" size="2"><b>Spesifikasi</b></font></th>
					<th><font face="arial" size="2"><b>OS Version</b></font></th>
					<th><font face="arial" size="2"><b>Anti Virus</b></font></th>
					<th><font face="arial" size="2"><b>Tgl Terakhir Perbaikan</b></font></th>
					
				</tr>
				<?php
						$get = "select * from mscomputer where iddivisi='$hdiv[iddivisi]' and aktif = 'Y' order by ipaddress";
						$qget = mysql_query($get);
						$n=1;
						while($hget = mysql_fetch_array($qget))
						{
							
						?>
						<tr align="justify">	
							<td><font face="arial" size="2"><?php echo "$n"; ?></font></td>
							<td><font face="arial" size="2"><?php echo "$hget[ipaddress]"; ?></font></td>
							<td><font face="arial" size="2"><?php echo "$hget[computer]"; ?></font></td>
							<td><font face="arial" size="2"><?php echo "$hget[motherboard], $hget[processor], $hget[ram], $hget[hdd]."; ?></font></td>
							<td><font face="arial" size="2"><?php echo "$hget[os]"; ?></font></td>
							<td><font face="arial" size="2"><?php echo "$hget[antivirus]"; ?></font></td>
							<?php
							$lwr = "select * from trwr where idcomputer = '$hget[idcomputer]' order by date desc";
							$qlwr = mysql_query($lwr);
							$hlwr = mysql_fetch_array($qlwr);
							$rlwr = mysql_num_rows($qlwr);
							if ($rlwr == 0)
							{
							?>
							<td><font face="arial" size="2">No Data</font></td>
							<?php
							}
							else
							{
							?>
							<td><font face="arial" size="2"><?php echo date("l - d M Y", strtotime($hlwr[date])); ?></font></td>
							<?php
							}
							?>
							
						</tr>
						<?php
						$n++;
						}
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
