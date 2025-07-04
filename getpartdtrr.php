<?php
include "koneksi.php";
session_start();
date_default_timezone_set('Asia/Jakarta');
$pr = $_GET['pr'];
$syncron = "select * from mslogin where idlogin = '$_SESSION[idlog]' and password = '$_SESSION[passwordlog]'";
$qsyncron = mysql_query($syncron);
$hsyncron = mysql_fetch_array($qsyncron);
if ($_SESSION[idlog]=='' and $_SESSION[passwordlog]=='')
{
	header("location:index.php");
}
else
{
$ip = $_SERVER['REMOTE_ADDR'];
$company = $_GET['company'];
$selcompany = "select * from mscompany where idcompany = '$company'";
$qselcompany = mysql_query($selcompany);
$part = $_POST['part'];
if (!empty($part))
{
	$show=1;
	$namepart = "select * from mspart where idpart = '$part'";
	$qnamepart = mysql_query($namepart);
	$hnamepart = mysql_fetch_array($qnamepart);
	$idpartm = $part;
	$partm = $hnamepart[part];
	$getstock = "select * from mspartstock where idpart = '$part' order by date desc";
	$qgetstock = mysql_query($getstock);
	$hgetstock = mysql_fetch_array($qgetstock);
	
	$getunit = "select * from msunit where idunit = '$hgetstock[idunit]'";
	$qgetunit = mysql_query($getunit);
	$hgetunit = mysql_fetch_array($qgetunit);
	
	$getstockpr = "select * from trprdt where nopr = '$pr' and idpart = '$part'";
	$qgetstockpr = mysql_query($getstockpr);
	$hgetstockpr = mysql_fetch_array($qgetstockpr);
}
else
{

	$idpartm = "";
	$partm = "== Spare Part ==";
}
?>

<html>
<head>
<title>IT Ticketing - Detail Part</title>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1251">
<link href="style.css" rel="stylesheet" type="text/css">
</head>
<body bgcolor="#FFFFFF" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
<table width="780" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td>
		<table width="100%" border="0" cellspacing="0" cellpadding="0">
			<tr>
				<td>
					<div align="center"><font face="arial" size="2"><b>Detail</b></font></div>
					<table width="750">
					<form method="post">
						<tr valign="top">
							<td width="78"><font face="arial" size="1"><strong>Part Name
							<br><br><br>
							Qty
							
							<br><br><br>
							Unit
							
							<br><br><br>
							Remark
							</strong></font></td>
							<td width="5"><font face="arial" size="1"><strong>:
							<br><br><br>
							:
							<br><br><br>
							:
							<br><br><br>
							:
							</strong></font></td>
							<td width="100"><font face="arial" size="1">
								<select name="part" onChange="submit()">
									<option value="<?php echo "$idpartm"; ?>"><?php echo "$partm"; ?></option>
										<?php
										$getprdt = "select * from trprdt where nopr = '$pr' order by idpart";
										$qgetprdt = mysql_query($getprdt);
										while ($hgetprdt = mysql_fetch_array($qgetprdt))
										{
											$getpart = "select * from mspart where idpart = '$hgetprdt[idpart]'";
											$qgetpart = mysql_query($getpart);
											$hgetpart = mysql_fetch_array($qgetpart)
												
										?>
										<option value="<?php echo "$hgetpart[idpart]"; ?>"><?php echo "$hgetpart[part]"; ?></option>
										<?php
										}
										?>
								</select>
								
								<br><br>
								<input type="text" name="qty" size="5">
								
								<br><br>
								<select name="unit">
								<?php 
									if (!empty($part))
									{
									?>
										<option value="<?php echo "$hgetstock[idunit]"; ?>"><?php echo "$hgetunit[unit]"; ?></option>
									<?php
									}
									else
									{
									?>
										<option value="">== Unit ==</option>
									<?php
									}
									?>
								
										<?php
										$getunit = "select * from msunit order by idunit";
										$qgetunit = mysql_query($getunit);
										while ($hgetunit = mysql_fetch_array($qgetunit))
										{
										?>
										<option value="<?php echo "$hgetunit[idunit]"; ?>"><?php echo "$hgetunit[unit]"; ?></option>
										<?php
										}
										?>
								</select>
								
								<br><br>
								<textarea name="remark"></textarea>
	
								</font>
							</td>
							<td align="right" width="300">
							<font face="arial" size="1">
								<table align="center" width="300">
								<tr valign="top">
									<th align="center"><font face="arial" size="1"><strong>Info Stock</strong></font></th>
								</tr>
								</table><br>
								
								<table border="1" align="center" width="200">
								
								<tr valign="top">
									<th width="50"><font face="arial" size="1"><strong>Stock</strong></font></th>
									<th width="100"><font face="arial" size="1"><strong>Date Stock</strong></font></th>
									<th width="100"><font face="arial" size="1"><strong>Qty PR</strong></font></th>
								</tr>
								<tr align="justify" valign="top">
									<td><font face="arial" size="1"><?php echo "$hgetstock[stock]"; ?></font></td>
									<td><font face="arial" size="1"><?php echo "$hgetstock[date]"; ?></font></td>
									<td><font face="arial" size="1"><?php echo "$hgetstockpr[qty]"; ?></font></td>
								</tr>
								</table>
								<?php
								//}
								//else
								//{
								//}
								?>
							</font>
							
							</td>
							<td width="50"></td>
						</tr>
						
						<tr>
							<td colspan="5"><input type="submit" value="add part" name="add"></td>
						</tr>
					</form>
					</table>
					<?php
					$qty = $_POST['qty'];
					$unit = $_POST['unit'];
					$remark = $_POST['remark'];
					
					if (!empty($unit) and !empty($qty))
					{
						
						$cekexistpart = "select * from trgetpartdt2 where idpart = '$part' and ipaddress = '$ip'";
						$qcekexistpart = mysql_query($cekexistpart);
						$rcekexistpart = mysql_num_rows($qcekexistpart);
						
						if ($rcekexistpart <> '0')
						{
						 $hcekexistpart = mysql_fetch_array($qcekexistpart);
						 $qty = $qty+$hcekexistpart[qty];
						 $savedetail = "update trgetpartdt2 set qty = '$qty', idunit = '$unit', remark = '$remark' where idpart = '$part' and ipaddress = '$ip'";
						}
						else
						{
							$savedetail = "insert into trgetpartdt2 (idpart, qty, idunit, remark, ipaddress) values ('$part', '$qty', '$unit', '$remark', '$ip')";
						}
							 if ($hgetstockpr[qty] < $qty)
							 {
								$pesandetail = "Qty RR Tidak Boleh Lebih dari Qty PR";
								
							 }
							 else
							 {
							 	mysql_query($savedetail);
							 }
						
					}
					else
					{
					}
					?>
					<br>
					<table>
						<tr bgcolor="#666666">
							<th width="20"><font face="arial" size="1"><b>No</b></font></th>
							<th width="150"><font face="arial" size="1"><b>Part</b></font></th>
							<th width="80"><font face="arial" size="1"><b>Qty</b></font></th>
							<th width="100"><font face="arial" size="1"><b>Unit</b></font></th>
							<th width="250"><font face="arial" size="1"><b>Remark</b></font></th>
							<th width="250"><font face="arial" size="1"><b>Action</b></font></th>
						</tr>
					<?php
						$lookpartdt = "select * from trgetpartdt2 where ipaddress = '$ip'";
						$qlookpartdt = mysql_query($lookpartdt);
						$n=1;
						while ($hlookpartdt = mysql_fetch_array($qlookpartdt))
						{
						?>
						<tr>
							<td><font face="arial" size="1"><?php echo "$n"; ?></font></td>
							<td><font face="arial" size="1"><?php echo "$hlookpartdt[idpart]"; ?></font></td>
							<td><font face="arial" size="1"><?php echo "$hlookpartdt[qty]"; ?></font></td>
							<td><font face="arial" size="1"><?php echo "$hlookpartdt[idunit]"; ?></font></td>
							<td><font face="arial" size="1"><?php 
							if ($hlookpartdt[idpart] == $part)
							{
								echo "$hlookpartdt[remark] - $pesandetail";
							}
							else
							{
								echo "$hlookpartdt[remark]";
							}
							 ?></font></td>
						</tr>
						<?php
						$n++;
						}
					?>
					</table>
				</td> 
			</tr>
        </table>
	</td>
  </tr>
</table>

</body>
</html>

<?php
}
?>