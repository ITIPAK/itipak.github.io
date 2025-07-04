<?php
include "koneksi.php";
$no = $_GET['nogp'];
if (!empty($no))
{
session_start();
$getgph = "select * from trgetparthd where nogp = '$no'";
$qgetgph = mysql_query($getgph);
$hgetgph = mysql_fetch_array($qgetgph);
 
?>
<div align="justify">

<table border="0" width="500">
	<tr>
	<td align="right">
	<font face="arial" size="1">FO-IT-09.00</font>
	</td>
	</tr>
	
	<tr>
		<td align="center"><font face="arial" size="2"><strong><em>GET PART </em><br>
<?php echo "$no"; ?>
</strong></font></td>
	</tr>
	
</table>

<table width="500" border="1" bordercolor="#000000" rules="all">
	<tr>
		<th colspan="5">
			<table align="left" width="100%">
				<tr align="justify">
					<th width="15%" valign="top"><font face="arial" size="1"><strong>WR No.<br> </strong></font></th>
					<th width="1%" valign="top"><font face="arial" size="1"><strong>:</strong></font></th>
					<td width="39%" valign="top"><font face="arial" size="1"><?php echo "$hgetgph[nowr]"; ?></font></td>
					
					<th width="14%" valign="top"><font face="arial" size="1"><strong>Tanggal</strong></font></th>
					<th width="1%" valign="top"><font face="arial" size="1"><strong>:</strong></font></th>
					<td width="25%" valign="top"><font face="arial" size="1"><?php $printdate = date("d F Y", strtotime($hgetgph[date])); echo "$printdate"; ?></font><br>
<br>
</td>
				</tr>
				
				
			
			</table>
		</th>
	</tr>
	
	<tr>
		<th width="5%" height="10"><font face="arial" size="1"><strong>No.</strong></font></th>
		<th width="35%" height="10"><font face="arial" size="1"><strong>Nama Barang</strong></font></th>
		<th width="10%" height="10"><font face="arial" size="1"><strong>Qty</strong></font></th>
		<th width="15%" height="10"><font face="arial" size="1"><strong>Satuan</strong></font></th>
		<th width="35%" height="10"><font face="arial" size="1"><strong>keterangan</strong></font></th>
	</tr>
	
	<?php
	$getgpd = "select * from trgetpartdt where nogp = '$no'";
	$qgetgpd = mysql_query($getgpd);
	$n=1;
	while ($hgetgpd = mysql_fetch_array($qgetgpd))
	{
	?>
	<tr align="center">
		<td><font face="arial" size="1"><?php echo "$n"; ?></font></td>
		<?php
			$cpu = "select * from mspart where idpart = '$hgetgpd[idpart]'";
			$qcpu = mysql_query($cpu);
			$hcpu = mysql_fetch_array($qcpu);
			
			$unit = "select * from msunit where idunit = '$hgetgpd[idunit]'";
			$qunit = mysql_query($unit);
			$hunit = mysql_fetch_array($qunit);
		?>
		<td align="justify"><font face="arial" size="1"><?php echo "$hcpu[part]"; ?></font></td>
		<td><font face="arial" size="1"><?php echo "$hgetgpd[qty]"; ?></font></td>
		<td><font face="arial" size="1"><?php echo "$hunit[unit]"; ?></font></td>
		<td align="justify"><font face="arial" size="1"><?php echo "$hgetgpd[remark]"; ?></font></td>
	</tr>
	<?php
	$n++;
	}
	?>
	
	
	<?php
		if ($hgetwr[status]=='CO')
		{
			$stat="Closed";
		}
		else if ($hgetwr[status]=='CA')
		{
			$stat="Cancel";
		}
		else if ($hgetwr[status]=='H')
		{
			$stat="Hold";
		}
		else if ($hgetwr[status]=='G')
		{
			$stat="Approve";
		}
		else if ($hgetwr[status]=='A')
		{
			$stat="Assign";
		}
		
	?>
	<tr>
		<td colspan="4" valign="top"><font face="arial" size="1"><b>Catatan :</b><br>
<br><br>
<br>

<?php echo "$hgetprh[remark]"; ?>
</font></td>
		<td valign="top"><font face="arial" size="1"><b>Pengambil :</b><br><br><br>
<br><br>

			<?php echo "$_SESSION[idlog]"; ?>
		</font></td>
	</tr>
	
	
</table>
<table border="0" width="500">
	<tr>
		<td align="right"><font face="arial" size="1"><strong>Rev.00</strong></font></td>
	</tr>
</table>


</div>
<?php
}
else
{
header("Location:gp.php");
}
?>
