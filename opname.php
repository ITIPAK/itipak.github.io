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
$ip = $_SERVER['REMOTE_ADDR'];
$selcompany = "select * from mscompany where idcompany = '$idcompany'";
$qselcompany = mysql_query($selcompany);


//ALL variable 
//$company = $_POST['company'];
$getdate = $_POST['getdate'];
$opname = $_POST['opname'];
$ket = $_POST['ket'];

		
if (!empty($getdate))
{
	$today = $getdate;
}
else
{
	$alias = "###";
	$today = date("Y-m-d H:i:s");
}

		
				
							$code = "OP";
							$year = date("Y", strtotime($today));
							$month = date ("m", strtotime($today));
							$begin = "$code/$year-$month/";
						if (!empty($opname))
						{
							$cekno = "select * from opnamehd where noop like '%$begin%'";
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
							 
							
								$savehd = "insert into opnamehd (noop, tanggal, keterangan) values ('$newno', '$getdate', '$ket')";
								if (mysql_query($savehd))
								{
									$stok2 = "select * from mspart order by idpart";
									$qstok2 = mysql_query($stok2);
									$m=1;
									while ($hstok2 = mysql_fetch_array($qstok2))
									{
										$qty = $_POST['qty'][$m];
										$unit = $_POST['unit'][$m];
										
											$detail = "insert into opnamedt (noop, idpart, qty, idunit) values ('$newno', '$hstok2[idpart]', '$qty', '$unit')";
											if (mysql_query($detail))
											{
												$stockin = "insert into mspartstock (idpart, date, stock, idunit) values ('$hstok2[idpart]', '$today', '$qty', '$unit')";
												mysql_query($stockin);
											}
											else
											{
											}
										
										$m++;
									} 
									header ("Location:mspart.php");
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

<body bgcolor="#FFFFFF" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
<table width="900" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td>
		<table width="900" border="0" cellspacing="0" cellpadding="0" align="center">
		<?php
		include "atas.php";
		?>
        </table>
	</td>
  </tr>
</table>		
<table  align="center" width="900" bordercolor="#FFFFFF">
	<tr>
		<td align="center"><font face="arial" size="3"><b> Sparepart Opname (+ / -)<br><br></b></font></td>
	</tr>
	
	<tr>
		<td>
		<form method="post">
			<table width="450" align="center">
				<tr>
					<th><font face="arial" size="1"><b><input name="noop1" type="text" value="<?php echo "$begin"; ?>" disabled></b></font></th>					
				</tr>
			</table>
			
			<table width="450" align="center" border="1" bordercolor="#FFFFFF">
			<tr>
						<th width="100" align="justify" bgcolor="#999999"><font face="arial" size="1"><b>Opname Date</b></font></th>
						<th align="justify" width="100"><font face="arial" size="1"><b><input name="getdate" type="text" value="<?php echo "$today"; ?>" class="tcal"/></b></font></th>
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
					<th align="center" valign="middle"><font face="arial" size="1"><b>Last Qty</b></font></th>					
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
					<?php
					
						$getstock = "select * from mspartstock where idpart = '$hpart[idpart]' order by date desc";
						$qgetstock = mysql_query($getstock);
						$hgetstock = mysql_fetch_array($qgetstock);
						$stc = $hgetstock[stock];
					
					?>
					<th><font face="arial" size="1"><b>
					<input type="hidden" name="<?php echo "unit[$n]"; ?>" value="<?php echo "$hpart[idunit]"; ?>">
					<input type="text" name="<?php echo "qty[$n]"; ?>" value="<?php echo "$stc"; ?>"></b></font></th>
					<th><font face="arial" size="1"><b><?php echo "$stc"; ?></b></font></th>					
				</tr>
			<?php
			$n++;
			}
			?>	
				<tr>
					<td colspan="4" align="center">
					<input type="submit" name="opname" value="Save">
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