<?php
include "koneksi.php";
session_start();
date_default_timezone_set('Asia/Jakarta');
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
$ket = $_POST['ket'];
$status = $_POST['status'];
if (!empty($_GET['no']))
{
	$no = $_GET['no'];
}
else
{
	$no = $nowr;
}
		$getwr = "select * from trwr where nowr = '$no'";
		$qgetwr = mysql_query($getwr);
		$rgetwr = mysql_num_rows($qgetwr);
		$hgetwr = mysql_fetch_array($qgetwr);
		
		
		$getcomp = "select * from mscompany where idcompany in (select idcompany from trwr where nowr = '$no')";
		$qgetcomp = mysql_query($getcomp);
		$hgetcomp = mysql_fetch_array($qgetcomp);
		
		$getdiv = "select * from msdivisi where iddivisi in (select iddivisi from trwr where nowr = '$no')";
		$qgetdiv = mysql_query($getdiv);
		$hgetdiv = mysql_fetch_array($qgetdiv);
				
							$code = "PR";
							$code2 = "$hgetwr[iddivisi]";
							$idcom1 = "";
							$com1 = "== CPU ==";
							$printdate = date("Y-m-d");
							if ($rgetwr<>0)
							{
								$alias = $hgetwr[iddivisi];
							}
							else
							{
								$alias = "IT";
							}
							$year = date("Y", strtotime($getdate));
							$month = date ("m", strtotime($getdate));
							$begin = "$code$alias/$year-$month/";
						if (!empty($nowr) and !empty($getdate))
						{
							
							$cekno = "select * from trprhd where nopr like '%$begin%'";
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
								
								$savehd = "insert into trprhd (nopr, tanggal, nowr, remark, status) values ('$newno', '$getdate','$nowr', '$ket', 'O')";
								if (mysql_query($savehd))
								{
									$updatewr = "update trwr set request = '$newno' where nowr = '$nowr'";
									if (mysql_query($updatewr))
									{ 
										while($hgetdt2 = mysql_fetch_array($qgetdt2))
										{
											
											$savedt = "insert into trprdt (nopr, idpart, qty, idunit) values ('$newno', '$hgetdt2[idpart]','$hgetdt2[qty]', '$hgetdt2[idunit]')";
											if (mysql_query($savedt))
											{
												$deletedt2 = "delete from trgetpartdt2 where idpart ='$hgetdt2[idpart]' and ipaddress = '$ip'";
												mysql_query($deletedt2);
											}
										}
									}
									
									header ("Location:requestp.php");
								}
								
							}
						}
						else
						{
							
							if ($status == '1')
							{
								$no = $nowr;
								$message = "Fill all field!!<br>  $idcompany <br> $getdate <br> $nowr";
							}
							else
							{
								$message = "";
							}
						}	
						

?>

<html>
<head>
<title>IT Ticketing - Part Request</title>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1251">
<link href="style.css" rel="stylesheet" type="text/css">

<link rel="stylesheet" type="text/css" href="tcal.css" />
<script type="text/javascript" src="tcal.js"></script>
</head>
<body bgcolor="#FFFFFF" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
<table align="center" width="780" border="0">
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
					<div align="center"><font face="arial" size="3"><b>Sparepart Request</b><br>
					Work Request No. <b><?php echo "$no"; ?></b><br><br>
					</font></div>
					
					<center><font face="arial" color="#FF0000" size="1"><?php echo "$message"; ?></font></center>
					<div align="center"><font face="arial" size="2">
					<b>Header</b><br>
					</font>
					
					</div><br>
					<form method="post" action="trpr.php">
					<table width="100%">
						
						
							<?php
							
							
							
							$momentno = "$code$code2/YYYY-MM/xxxxx";
							$today = date("Y-m-d");
							?>
							<tr align="justify">
							
								<td width="18%" valign="top"><font face="arial" size="1"><strong>Request Part No<br><br>Remark</strong></font></td>
								<td width="1%" valign="top"><font face="arial" size="1"><b>:<br><br>:</b></font></td>
								<td width="34">
								<input type="hidden" name="status" value="1">
								<input type="hidden" name="nowr" value="<?php echo "$no"; ?>">
								<input type="hidden" name="idcompany" value="<?php echo "$hgetwr[idcompany]"; ?>">
								<input type="text" name="nogp2" value="<?php echo "$momentno"; ?>" disabled><br>
								<textarea name="ket"></textarea>
								</td>
								
								<td width="15%" valign="top"><font face="arial" size="1"><b>Request Date</b></font></td>
								<td width="1%" valign="top"><font face="arial" size="1"><b>:</b></font></td>
								<td width="34" valign="top"><input name="getdate" type="text" value="<?php echo "$today"; ?>" class="tcal"/></td>
								
							</tr>
							
														
							<tr>
								<td colspan="6"><br>
									<iframe src="<?php echo "getpartdt.php?company=$hgetwr[idcompany]"; ?>" width="100%" height="400" scrolling="no" frameborder="0"></iframe>
								</td>
							</tr>
							
							<tr>
								<td colspan="3" align="center">
									<input type="submit" value="Save Request"> </form> 
								</td>	
									<form method="post" action="requestp.php"> 
								<td colspan="3" align="center">
									<input type="submit" value="Cancel">
								</td>
							</tr>
						
					</table>
				</form>	
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