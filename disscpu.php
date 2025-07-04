<?php
include "koneksi.php";
session_start();

$syncron = "select * from mslogin where idlogin = '$_SESSION[idlog]' and password = '$_SESSION[passwordlog]'";
$qsyncron = mysql_query($syncron);
$hsyncron = mysql_fetch_array($qsyncron);
date_default_timezone_set('Asia/Jakarta');
if ($_SESSION[idlog]=='' and $_SESSION[passwordlog]=='')
{
	header("location:index.php");
}
else
{
$idcpu = $_GET['idcpu'];
$ip = $_SERVER['REMOTE_ADDR'];
$selcompany = "select * from mscompany where idcompany = '$idcompany'";
$qselcompany = mysql_query($selcompany);


//ALL variable 
//$company = $_POST['company'];
$getdate = $_POST['getdate'];
$diss = $_POST['diss'];
$ket = $_POST['ket'];

		
if (!empty($getdate))
{
	$today = $getdate;
}
else
{
	
	$today = date("Y-m-d H:i:s");
}

							$code = "CP";
							$year = date("Y", strtotime($today));
							$month = date ("m", strtotime($today));
							$begin = "$code/$year-$month/";
						if (!empty($diss))
						{
							$cekno = "select * from changehd where nocp like '%$begin%'";
							$qcekno = mysql_query($cekno);
							$rcekno = mysql_num_rows($qcekno);
							$rcekno++;							
							if ($rcekno <10)
							{
								$zero = "000";
							}
							else if ($rcekno <100)
							{
								$zero = "00";
							}
							else if ($rcekno <100)
							{
								$zero = "0";
							}
							else if ($rcekno <1000)
							{
								$zero = "";
							}
							$nextno = "$zero$rcekno";
							$newno = "$begin$nextno";
							 
							$nonaktif = "update mscomputer set aktif='N' where idcomputer = '$idcpu'";
							if (mysql_query($nonaktif))
							{
								
								$savehd = "insert into changehd (nocp, tanggal, idcomputer, keterangan) values ('$newno', '$getdate', '$cpu', '$ket')";
								if (mysql_query($savehd))
								{
									$stok2 = "select * from mspart order by idpart";
									$qstok2 = mysql_query($stok2);
									$m=1;
									while ($hstok2 = mysql_fetch_array($qstok2))
									{
										$qty = $_POST['qty'][$m];
										$unit = $_POST['unit'][$m];
										
										if ($qty<>0)
										{
											$detail = "insert into changedt (nocp, idpart, qty, idunit) values ('$newno', '$hstok2[idpart]', '$qty', '$unit')";
											if (mysql_query($detail))
											{
												$getstock = "select * from mspartstock where idpart = '$hstok2[idpart]' order by date desc";
												$qgetstock = mysql_query($getstock);
												$hgetstock = mysql_fetch_array($qgetstock);
												$newstock = $hgetstock[stock]+$qty;
												
												$updatestock = "insert into mspartstock (idpart, date, stock, idunit) 
												values ('$hstok2[idpart]', '$getdate', '$newstock', '$hstok2[idunit]')";
												mysql_query($updatestock);
												
											}
											else
											{
											}
											
										}
										else
										{
										
										}
										$m++;
									} 
									header ("Location:mscpu.php");
								}
								else
								{
								
								}
								
							}
							else
							{
							
							}
							
								
						}
						else
						{
							
							
						}	
						

?>



<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<title>IT Ticketing - Qty Opname</title>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1251">
<link href="style.css" rel="stylesheet" type="text/css">

<link rel="stylesheet" type="text/css" href="tcal.css" />
<script type="text/javascript" src="tcal.js"></script>

</head>

<body>
<table width="100%" border="0" cellspacing="0" cellpadding="0">
		<?php
		include "atas.php";
		?>
</table>		
<table  align="center" width="75%" bordercolor="#FFFFFF">
	<tr>
		<td align="center"><font face="arial" size="3"><b> CPU to Part (+)<br>
		      <br></b></font></td>
	</tr>
	
	<tr>
		<td>
		<form method="post">

			
			<table width="450" align="center" border="1" bordercolor="#FFFFFF">
			<tr align="justify">
					<th bgcolor="#999999" width="100"><font face="arial" size="1">No Transaksi</font></th>
					<th><font face="arial" size="1"><b><input name="noop1" type="text" value="<?php echo "$begin"; ?>" disabled size="10"></b></font></th>
					<th bgcolor="#999999"><font face="arial" size="1">Komputer ID</font></th>
					<th><font face="arial" size="1"><b><input name="cpu" type="text" value="<?php echo "$idcpu"; ?>" disabled></b></font></th>					
				</tr>
			
			<tr>
						<th width="100" align="justify" bgcolor="#999999"><font face="arial" size="1"><b>Opname Date</b></font></th>
						<th align="justify" width="100"><font face="arial" size="1"><b>
						<input name="getdate" type="text" value="<?php echo "$today"; ?>" class="tcal"/></b></font></th>
						<th width="100" align="justify" bgcolor="#999999"><font face="arial" size="1"><b>Keterangan</b></font></th>
						<th align="justify" width="150"><font face="arial" size="1"><b><input type="text" name="ket"></b></font></th>
					</tr>
			</table>
			<br>
			<table width="450" align="center" border="1" bordercolor="#FFFFFF">
				<tr bgcolor="#999999" align="center">
					<th align="center" valign="middle"><font face="arial" size="1"><b>No</b></font></th>
					<th align="center" valign="middle"><font face="arial" size="1"><b>Sparepart</b></font></th>
					<th align="center" valign="middle"><font face="arial" size="1"><b>Qty Adjustment</b></font></th>					
				</tr>
			<?php
			$n=1;
			$part = "select * from mspart order by idpart";
			$qpart = mysql_query($part);
			while ($hpart = mysql_fetch_array($qpart))
			{
			?>
				<tr bgcolor="#999999" align="justify">
					<th><font face="arial" size="1"><b><?php echo "$n"; ?></b></font></th>
					<th><font face="arial" size="1"><b><?php echo "$hpart[part]"; ?></b></font></th>
					
					<th><font face="arial" size="1"><b>
					<input type="hidden" name="<?php echo "unit[$n]"; ?>" value="<?php echo "$hpart[idunit]"; ?>">
					<input type="text" name="<?php echo "qty[$n]"; ?>" value="0"></b></font></th>
								
				</tr>
			<?php
			$n++;
			}
			?>	
				<tr>
					<td colspan="4" align="center">
					<input type="submit" name="diss" value="Save">
					</td>
				</tr>
			</table>
		</form>
		</td>
	</tr>		
</table>


</body>
</html>
<?php
}
?>