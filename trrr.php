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
$nopr = $_POST['nopr'];
$close = $_POST['close'];
$status = $_POST['status'];
if (!empty($_GET['no']))
{
	$no = $_GET['no'];
}
else
{
	$no = $nopr;
}
		$getpr = "select * from trprhd where nopr = '$no'";
		$qgetpr = mysql_query($getpr);
		$hgetpr = mysql_fetch_array($qgetpr);
		

		$getwr = "select * from trwr where nowr = '$hgetpr[nowr]'";
		$qgetwr = mysql_query($getwr);
		$hgetwr = mysql_fetch_array($qgetwr);
		
		
		$getcomp = "select * from mscompany where idcompany in (select idcompany from trwr where nowr = '$hgetwr[nowr]')";
		$qgetcomp = mysql_query($getcomp);
		$hgetcomp = mysql_fetch_array($qgetcomp);
		
		$getdiv = "select * from msdivisi where iddivisi in (select iddivisi from trwr where nowr = '$hgetwr[nowr]')";
		$qgetdiv = mysql_query($getdiv);
		$hgetdiv = mysql_fetch_array($qgetdiv);
				
							$code = "RR";
							$code2 = "$hgetwr[iddivisi]";
							$idcom1 = "";
							$com1 = "== CPU ==";
							$printdate = date("Y-m-d");
							if ($hgetpr[nowr]=="")
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
						if (!empty($nopr) and !empty($getdate))
						{
							
							$cekno = "select * from trrrhd where norr like '%$begin%'";
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
								
								$savehd = "insert into trrrhd (norr, tanggal, nopr) values ('$newno', '$getdate','$nopr')";
								if (mysql_query($savehd))
								{
									if ($close=='Y')
									{
										$updatepr = "update trprhd set status = 'C' where nopr = '$nopr'";
									}
									else
									{
										$updatepr = "update trprhd set status = 'O' where nopr = '$nopr'";
									}
									if (mysql_query($updatepr))
									{ 
										while($hgetdt2 = mysql_fetch_array($qgetdt2))
										{
											
											$savedt = "insert into trrrdt (norr, idpart, qty, idunit) values ('$newno', '$hgetdt2[idpart]','$hgetdt2[qty]', '$hgetdt2[idunit]')";
											if (mysql_query($savedt))
											{
												$getstock = "select * from mspartstock where idpart = '$hgetdt2[idpart]' order by date desc";
												$qgetstock = mysql_query($getstock);
												$hgetstock = mysql_fetch_array($qgetstock);
												$newstock = $hgetstock[stock]+$hgetdt2[qty];
												//echo "$idcompany - $newstock";

												$updatestock = "insert into mspartstock (idpart, date, stock, idunit) 
												values ('$hgetdt2[idpart]', '$getdate', '$newstock', '$hgetdt2[idunit]')";
												
												$deletedt2 = "delete from trgetpartdt2 where idpart ='$hgetdt2[idpart]' and ipaddress = '$ip'";
												mysql_query($updatestock);
												mysql_query($deletedt2);
											}
										}
									}
									
									header ("Location:pr.php");
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
					<div align="center"><font face="arial" size="3"><b>Receiving Part</b><br>
					Request No. <b><?php echo "$no"; ?></b><br><br>
					</font></div>
					
					<center><font face="arial" color="#FF0000" size="1"><?php echo "$message"; ?></font></center>
					<div align="center"><font face="arial" size="2">
					<b>Header</b><br>
					</font>
					
					</div><br>
					<form method="post" action="trrr.php">
					<table width="100%">
						
						
							<?php
							
							
							
							$momentno = "$code$code2/YYYY-MM/xxxxx";
							$today = date("Y-m-d H:i:s");
							?>
							<tr align="justify">
							
								<td width="18%"><font face="arial" size="1"><strong>Receiving Part No</strong></font></td>
								<td width="1%"><font face="arial" size="1"><b>:</b></font></td>
								<td width="34">
								<input type="hidden" name="status" value="1">
								<input type="hidden" name="nopr" value="<?php echo "$no"; ?>">
								<input type="hidden" name="idcompany" value="<?php echo "$hgetwr[idcompany]"; ?>">
								<input type="text" name="nogp2" value="<?php echo "$momentno"; ?>" disabled>
								</td>
								
								<td width="15%"><font face="arial" size="1"><b>Receiving Date</b></font></td>
								<td width="1%"><font face="arial" size="1"><b>:</b></font></td>
								<td width="34"><input name="getdate" type="text" value="<?php echo "$today"; ?>" class="tcal"/></td>
								
							</tr>
							
														
							<tr>
								<td colspan="6"><br>
									<iframe src="<?php echo "getpartdtrr.php?pr=$no&company=$hgetwr[idcompany]"; ?>" width="100%" height="400" scrolling="no" frameborder="0"></iframe>
								</td>
							</tr>
							<tr>
								<td colspan="6" width="34" align="center">
								<font face="arial" size="1"><b>Close PR :<br></b></font>
									<select name="close">
										<option value="Y">Yes</option>
										<option value="N">No</option>
									</select>
								</td>
							</tr>
							<tr>
								<td colspan="3" align="center">
									<input type="submit" value="Save Receive"> </form> 
		  </td>	
									<form method="post" action="request.php"> 
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