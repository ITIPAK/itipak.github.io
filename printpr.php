<?php
include "koneksi.php";
$no = $_GET['nopr'];
if (!empty($no))
{
session_start();
$getprh = "select * from trprhd where nopr = '$no'";
$qgetprh = mysql_query($getprh);
$hgetprh = mysql_fetch_array($qgetprh);

$wr = "select * from trwr where nowr = '$hgetprh[nowr]'";
$qwr = mysql_query($wr);
$hwr = mysql_fetch_array($qwr);

$tech = "select * from mstech where idtech = '$hwr[idtech]'";
$qtech = mysql_query($tech);
$htech = mysql_fetch_array($qtech);
 
?>
<div align="justify">

<table border="0" width="500">
	<tr>
		<td align="left"><font face="arial" size="2"><strong><em>Purchase Request</em></strong></font></td>
	</tr>
</table>

<table width="500" border="1" bordercolor="#000000" rules="all">
	<tr>
		<th colspan="5">
			<table align="left" width="100%">
				<tr align="justify">
					<th width="15%" valign="top"><font face="arial" size="1"><strong>PR No.<br> Tanggal</strong></font></th>
					<th width="1%" valign="top"><font face="arial" size="1"><strong>:<br>:</strong></font></th>
					<td width="39%" valign="top"><font face="arial" size="1"><?php echo "$no"; ?><br><?php $printdate = date("d F Y", strtotime($hgetprh[tanggal])); echo "$printdate"; ?></font></td>
					
					<th width="14%" valign="top"><font face="arial" size="1"><strong>Divisi<br>WR No</strong></font></th>
					<th width="1%" valign="top"><font face="arial" size="1"><strong>:<br>:</strong></font></th>
					<td width="25%" valign="top"><font face="arial" size="1"><?php echo "$htech[tech]"; ?><br><?php echo "$hgetprh[nowr]"; ?></font><br>
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
		<th width="15%" height="10"><font face="arial" size="1"><strong>Sisa Qty</strong></font></th>
		<th width="35%" height="10"><font face="arial" size="1"><strong>U/ Keperluan</strong></font></th>
	</tr>
	
	<?php
	$getprd = "select * from trprdt where nopr = '$no'";
	$qgetprd = mysql_query($getprd);
	$n=1;
	while ($hgetprd = mysql_fetch_array($qgetprd))
	{
	?>
	<tr align="center">
		<td><font face="arial" size="1"><?php echo "$n"; ?></font></td>
		<?php
			$cpu = "select * from mspart where idpart = '$hgetprd[idpart]'";
			$qcpu = mysql_query($cpu);
			$hcpu = mysql_fetch_array($qcpu);
			
			$unit = "select * from mspart where idunit = '$hgetprd[idunit]'";
			$qunit = mysql_query($unit);
			$hunit = mysql_fetch_array($qunit);
		?>
		<td align="justify"><font face="arial" size="1"><?php echo "$hcpu[part]"; ?></font></td>
		<td><font face="arial" size="1"><?php echo "$hgetprd[qty] $hunit[unit]"; ?></font></td>
		<td><font face="arial" size="1"></font></td>
		<td align="justify"><font face="arial" size="1"><?php echo "$hgetprd[remark]"; ?></font></td>
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
		<td valign="top"><font face="arial" size="1"><b>Pemesan :</b><br><br><br>
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
header("Location:pr.php");
}
?>
