<?php
include "koneksi.php";
session_start();

$syncron = "select * from mslogin where idlogin = 'ipak'";
$qsyncron = mysql_query($syncron);
$hsyncron = mysql_fetch_array($qsyncron);
/**if ($_SESSION[idlog]=='' and $_SESSION[passwordlog]=='')
{
	header("location:index.php");
}
else
{
}
**/
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
<table width="1000" height="602">
	<tr>
	  <td valign="top">
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
						<font face="Arial" size="3"><b>Riwayat Komputer</b><br>
						(Hystory of Computers)						
						</font>
					</td>
					
					
					
					
				</tr>
				
			</table>
			
			<?php
			$div = "select * from msdivisi where idcompany = '$company' and utama='Y'";
			$qdiv = mysql_query($div);
			while ($hdiv = mysql_fetch_array($qdiv))
			{
					$cpu = "select * from mscomputer where iddivisi = '$hdiv[iddivisi]' ";
					$qcpu = mysql_query($cpu);
					//$periode = "2016-07";
					//$wr = "select * from trwr where iddivisi = '$hdiv[iddivisi]' and date like '%$periode%' order by date asc";
					$wr = "select * from trwr where iddivisi = '$hdiv[iddivisi]' order by date asc";
					$qwr = mysql_query($wr);
					$nwr = mysql_num_rows($qwr);
					$ncpu = mysql_num_rows($qcpu);
			if ($nwr==0)
			{
			}
			else
			{
			?>
			<br>
			<table border="0">
				<tr>
					<th width="100" align="justify"><font face="arial" size="1">Divisi</font></th>
					<th width="5" align="justify"><font face="arial" size="1">:</font></th>
					<td align="justify"><font face="arial" size="1"><?php echo "$hdiv[divisi]"; ?></font></td>
				</tr>
				
				<tr>
					<th width="100" align="justify"><font face="arial" size="1">Jumlah CPU</font></th>
					<th width="5" align="justify"><font face="arial" size="1">:</font></th>
					<td align="justify"><font face="arial" size="1">
					<?php 
					echo "$ncpu"; ?></font></td>
				</tr>
			</table>
			
			<table width="100%" rules="all" border="1" bordercolor="#000000">
				<tr bgcolor="#CCCCCC">
					<th><font face="arial" size="2"><b>No</b></font></th>
					<th><font face="arial" size="2"><b>Tanggal</b></font></th>
					<th><font face="arial" size="2"><b>Komputer</b></font></th>
					<th><font face="arial" size="2"><b>WO No</b></font></th>
					<th><font face="arial" size="2"><b>Problem</b></font></th>
					<th><font face="arial" size="2"><b>Penyebab</b></font></th>
					<th><font face="arial" size="2"><b>Perbaikan</b></font></th>
					<th><font face="arial" size="2"><b>Lama Perbaikan</b></font></th>
					<th><font face="arial" size="2"><b>PIC</b></font></th>
					<th><font face="arial" size="2"><b>Paraf</b></font></th>
					<th><font face="arial" size="2"><b>Ket</b></font></th>
				</tr>
				<?php
					
					$n=1;
					while($hwr = mysql_fetch_array($qwr))
					{
						
						$action = "select * from actionwr where nowr = '$hwr[nowr]'";
						$qaction = mysql_query($action);
						$naction = mysql_num_rows($qaction);
						if ($naction==0)
						{
						
						}
						else
						{
							while ($haction = mysql_fetch_array($qaction))
							{
					?>
					<tr align="justify">
						<td><font face="arial" size="2"><?php echo "$n"; ?></font></td>
						<td><font face="arial" size="2"><?php echo Date("d-M-Y", strtotime($haction[actiondate])); ?></font></td>
						<td><font face="arial" size="2"><?php echo "$hwr[idcomputer]"; ?></font></td>
						<td><font face="arial" size="2"><?php echo "$hwr[nowr]"; ?></font></td>
						<td><font face="arial" size="2"><?php echo "$hwr[issue]"; ?></font></td>
						<td><font face="arial" size="2"><?php echo "$hwr[alasan]"; ?></font></td>
						<td><font face="arial" size="2"><?php echo "$haction[action]"; ?></font></td>
						<td><font face="arial" size="2"><?php echo "1 hari"; ?></font></td>
						<td><font face="arial" size="2"><?php echo "$hwr[assign]"; ?></font></td>
						<td></td>
						<td></td>
					</tr>
					<?php
							$n++;
							}
						}
					}
				?>
				
			</table>
			<?php
				}
			}
			?>
			
			
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
					<td align="center" valign="bottom"><?php echo "$hsyncron[idlogin]"; ?></td>
					<td align="center" valign="bottom"><?php echo "Dani"; ?></td>
				</tr>
			</table>
		    <p>&nbsp;</p>
	    <p>&nbsp;</p>
		<br></br><br>
	    <div align="right"><font face="arial" size="1">Revisi : 00.00</font></div>
		</td>
	</tr>
</table>
</body>
</html>
