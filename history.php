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
$year = date('Y');
$idcpu = $_GET['id'];
$periode = $_GET['priod'];
$selcompany = "select * from mscompany where idcompany = '$company'";
$qselcompany = mysql_query($selcompany);
$hselcompany = mysql_fetch_array($qselcompany);

$selcpu = "select * from mscomputer where idcomputer = '$idcpu'";
$qselcpu = mysql_query($selcpu);
$hselcpu = mysql_fetch_array($qselcpu);
?>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<title>IT Ticketing - Stock Sparepart</title>
</head>

<body>
<table width="800">
	<tr>
		<td><div align="right"><font face="arial" size="2">FO-IT-08.00</font></div></td>
	</tr>
</table>
<table width="800" height="602" border="1" bordercolor="#000000" rules="all">
	<tr>
	  <td valign="top">
		
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
						<font face="Arial" size="3"><b>Kartu Perawatan Komputer</b><br>
						(Card of Computer's Maintenance)						
						</font>
					</td>
					
					
					
					
				</tr>
				
			</table>
			
			<?php
			$div = "select * from msdivisi where iddivisi = '$hselcpu[iddivisi]'";
			$qdiv = mysql_query($div);
			$hdiv = mysql_fetch_array($qdiv)
			?>
			
			<table>
				<tr>
					<th align="justify"><font face="arial" size="2"><b>Tahun Periode</b></font></th>
					<th align="justify"><font face="arial" size="2"><b>:</b></font></th>
					<td align="justify"><font face="arial" size="2"><?php echo "$year"; ?></font></td>
				</tr>
				
				<tr>
					<th align="justify"><font face="arial" size="2"><b>Komputer</b></font></th>
					<th align="justify"><font face="arial" size="2"><b>:</b></font></th>
					<td align="justify"><font face="arial" size="2"><?php echo "$hselcpu[computer]"; ?></font></td>
				</tr>
				
				<tr>
					<th align="justify"><font face="arial" size="2"><b>User Pengguna</b></font></th>
					<th align="justify"><font face="arial" size="2"><b>:</b></font></th>
					<td align="justify"><font face="arial" size="2"><?php echo "$hselcpu[user]"; ?></font></td>
				</tr>
				
				<tr>
					<th align="justify"><font face="arial" size="2"><b>Divisi</b></font></th>
					<th align="justify"><font face="arial" size="2"><b>:</b></font></th>
					<td align="justify"><font face="arial" size="2"><?php echo "$hdiv[divisi]"; ?></font></td>
				</tr>
			</table>	
			<br>
			
			<table border="1" bordercolor="#000000" rules="all">
				<tr bgcolor="#CCCCCC">
					<th width="30"><font face="arial" size="2"><b>No</b></font></th>
					<th width="100"><font face="arial" size="2"><b>Tanggal</b></font></th>
					<th width="200"><font face="arial" size="2"><b>Jenis Kerusakan</b></font></th>
					<th width="120"><font face="arial" size="2"><b>Penyebab</b></font></th>
					<th width="150"><font face="arial" size="2"><b>Penyelesaian</b></font></th>
					<th width="200"><font face="arial" size="2"><b>Keterangan</b></font></th>
				</tr>
			
			
			<?php			
						$n=1;
						$wr = "select * from trwr where idcomputer = '$hselcpu[idcomputer]' and date like '%$year%' order by date asc";
						$qwr = mysql_query($wr);
						while ($hwr = mysql_fetch_array($qwr))
						{
						
								$action = "select * from actionwr where nowr = '$hwr[nowr]' order by schedule desc";
								$qaction = mysql_query($action);
								$naction = mysql_num_rows($qaction);
								if ($naction==0)
								{
								?>
								
								<?php
								}
								else
								{
								$haction = mysql_fetch_array($qaction);
							?>
							<tr align="justify">
								<td><font face="arial" size="2"><?php echo "$n"; ?></font></td>
								<td><font face="arial" size="2"><?php echo Date("d-M-Y", strtotime($hwr[date])); ?></font></td>
								<td><font face="arial" size="2"><?php echo "$hwr[issue]"; ?></font></td>
								<td><font face="arial" size="2"><?php echo "$hwr[alasan]"; ?></font></td>
								<td><font face="arial" size="2"><?php echo "$haction[action]"; ?></font></td>
								<td><font face="arial" size="2">No WR : <?php echo "$hwr[nowr]"; ?></font></td>
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
		<br></br><br>
	    <div align="right"><font face="arial" size="1">Revisi : 00.00</font></div>
		</td>
	</tr>
</table>
</body>
</html>
