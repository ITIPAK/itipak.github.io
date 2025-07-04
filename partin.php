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
$ip = $_SERVER['REMOTE_ADDR'];
$selcompany = "select * from mscompany where idcompany = '$idcompany'";
$qselcompany = mysql_query($selcompany);


//ALL variable 
$idcompany = $_POST['idcompany'];
$getdate = $_POST['getdate'];
$nowr = $_POST['nowr'];
$status = $_POST['status'];
if (!empty($_GET['no']))
{
	$no = $_GET['no'];
}
else
{
	$no = $nowr;
}
		$getcomp = "select * from mscompany where idcompany in (select idcompany from trwr where nowr = '$no')";
		$qgetcomp = mysql_query($getcomp);
		$hgetcomp = mysql_fetch_array($qgetcomp);
				
							$code = "PI";
							$idcom1 = "";
							$com1 = "== CPU ==";
							$printdate = date("Y-m-d");
							$alias = $hgetcomp[alias];
							
							$year = date("Y", strtotime($getdate));
							$month = date ("m", strtotime($getdate));
							$begin = "$code$alias/$year-$month/";
						if (!empty($idcompany) and !empty($nowr) and !empty($getdate))
						{
							$cekno = "select * from trgetparthd where nogp like '%$begin%'";
							$qcekno = mysql_query($cekno);
							$rcekno = mysql_num_rows($qcekno);
							$rcekno++;
							$request = "";
							$issue = "";
							$idto1 ="";
							$to1 = "= Request =";
							
							
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
							 
							$getdt2 = "select * from trgetpartdt2 where ipaddress = '$ip'";
							$qgetdt2 = mysql_query($getdt2);
							$rgetdt2 = mysql_num_rows($qgetdt2);

							if ($rgetdt2=='0') 
							{
								$no = $nowr;
								$message = "Detail Must be 1 minimal!!<br>";
							}
							else
							{
								$savehd = "insert into trgetparthd (nogp, date, nowr, idcompany, status) values ('$newno', '$getdate','$nowr', '$idcompany', 'H')";
								if (mysql_query($savehd))
								{
									$updatewr = "update trwr set related = '$newno' where nowr = '$nowr'";
									if (mysql_query($updatewr))
									{ 
										while($hgetdt2 = mysql_fetch_array($qgetdt2))
										{
											$savedt = "insert into trgetpartdt (nogp, idpart, qty, idunit, remark) values ('$newno', '$hgetdt2[idpart]','$hgetdt2[qty]', '$hgetdt2[idunit]', '$hgetdt2[remark]')";
											if (mysql_query($savedt))
											{
												$deletedt2 = "delete from trgetpartdt2 where idpart ='$hgetdt2[idpart]' and ipaddress = '$ip'";
												mysql_query($deletedt2);
											}
										}
									}
									
									header ("Location:request.php");
								}
								
							}
						}
						else
						{
							
							if ($status == '1')
							{
								$no = $nowr;
								$message = "Fill all field!!<br>";
							}
							else
							{
								$message = "";
							}
						}	
						

?>

<html>
<head>
<title>IT Ticketing - Part In</title>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1251">
<link href="style.css" rel="stylesheet" type="text/css">

<link rel="stylesheet" type="text/css" href="tcal.css" />
<script type="text/javascript" src="tcal.js"></script>
</head>
<body bgcolor="#FFFFFF" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
<table width="780" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td>
		<table width="100%" border="0" cellspacing="0" cellpadding="0">
		<?php
		include "atas.php";
		
		
		
		$gettech = "select * from mstech where idtech in (select idtech from trwr where nowr = '$no')";
		$qgettech = mysql_query($gettech);
		$hgettech = mysql_fetch_array($qgettech);
		?>
			<tr>
				<td>
					<div align="center"><font face="arial" size="3"><b>Sparepart In</b></font></div><br><br>
					
					<center><font face="arial" color="#FF0000" size="1"><?php echo "$message"; ?></font></center>
					<div align="center"><font face="arial" size="2"><b>Header</b></font></div>
					<table width="100%">
						
						<form method="post" action="partin.php">
							<?php
							
							
							
							$momentno = "$code xxxx/YYYY-MM/xxxxx";
							$today = date("Y-m-d");
							?>
							<tr align="center">
								<td width="15%" colspan="6"><font face="arial" size="1"><b>Transaction No :</b><br>
								<input type="text" name="nogp2" value="<?php echo "$momentno"; ?>" disabled></font></td>
							</tr>
							
							<tr align="justify">
							
								<td width="15%"><font face="arial" size="1"><b>Date Part Out</b></font></td>
								<td width="1%"><font face="arial" size="1"><b>:</b></font></td>
								<td width="34"><input name="getdate" type="text" value="<?php echo "$today"; ?>" class="tcal"/></td>
								
								<td width="15%"><font face="arial" size="1"><b>Location</b></font></td>
								<td width="1%"><font face="arial" size="1"><b>:</b></font></td>
								<td width="34">
									<select name="idcompany">
										<option value="">== Company ==</option>
										<?php
										$listcom = "select * from mscompany order by idcompany";
										$qlistcom = mysql_query($listcom);
										while ($hlistcom = mysql_fetch_array($qlistcom))
										{
										?>
										<option value="<?php echo "$hlistcom[idcompany]"; ?>"><?php echo "$hlistcom[company]"; ?></option>
										<?php
										}
										?>
									</select>
								</td>
							</tr>
							
							<tr>
								<td colspan="6"><br>
									<iframe src="getpartdt.php" width="100%" height="400" scrolling="no" frameborder="0"></iframe>
								</td>
							</tr>
							
							<tr>
								<td colspan="3" align="center">
									<input type="submit" value="Save Get Part"> </form> 
								</td>	
									<form method="post" action="request.php"> 
								<td colspan="3" align="center">
									<input type="submit" value="Cancel">
								</td>
							</tr>
						</form>
					</table>
				</td> 
			</tr>
        </table>
	</td>
  </tr>
</table>
	<?php
		include "bawah.php";
	?>
</body>
</html>

<?php
}
?>