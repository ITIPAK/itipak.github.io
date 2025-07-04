<?php
include "koneksi.php";
$no = $_GET['noop'];
if (!empty($no))
{
session_start();

$getlog = "select * from mslogin where idlogin = '$_SESSION[idlog]'";
$qgetlog = mysql_query($getlog);
$hgetlog = mysql_fetch_array($qgetlog);

$getgph = "select * from opnamehd where noop = '$no'";
$qgetgph = mysql_query($getgph);
$hgetgph = mysql_fetch_array($qgetgph);
 
?>
<div align="justify">

<table border="0" width="500">
	<tr>
		<td align="center">
		<div align="right"><font face="arial" size="1"><strong>FO.IT.10.00</strong></font></div>
		<font face="arial" size="2"><strong>FORM STOK OPNAME IT <br>
		  
</strong></font></td>
	</tr>
</table>

<table width="500" border="1" bordercolor="#000000" rules="all">
	<tr>
		<th colspan="4">
			<table align="left" width="100%">
				<tr align="justify">
					<th width="15%" valign="top"><font face="arial" size="1">Opname No.<br> </font></th>
					<th width="1%" valign="top"><font face="arial" size="1">:</font></th>
					<td width="39%" valign="top"><font face="arial" size="2"><strong><?php echo "$hgetgph[noop]"; ?></strong></font></td>
					
					<th width="14%" valign="top"><font face="arial" size="1">Tanggal </font></th>
					<th width="1%" valign="top"><font face="arial" size="1">:</font></th>
					<td width="25%" valign="top"><font face="arial" size="2"><strong><?php $printdate = date("d F Y", strtotime($hgetgph[tanggal])); echo "$printdate"; ?></strong></font><br>
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

	</tr>
	
	<?php
	$getgpd = "select * from opnamedt where noop = '$no'";
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

	</tr>
	<?php
	$n++;
	}
	?>
	
	
	<tr>
		<td colspan="3" valign="top"><font face="arial" size="1"><b>Catatan :</b><br>
<br><br>
<br>

<?php echo "$hgetgph[keterangan]"; ?>
</font></td>
		<td valign="top">
			<table width="100%">
				<tr>
					<th align="center">
					
					<font face="arial" size="1"><b>Pelaksana :</b><br>
		    <br><br>
			<br><br>

			<?php echo "$hgetlog[nama]"; ?>
		</font>
					
					</th>
					
				</tr>
			</table>
		</td>
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
header("Location:op.php");
}
?>
