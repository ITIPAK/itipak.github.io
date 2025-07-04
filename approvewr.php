<?php
include "koneksi.php";
session_start();
$syncron = "select * from mslogin where idlogin = '$_SESSION[idlog]' and password = '$_SESSION[passwordlog]'";
$qsyncron = mysql_query($syncron);
$hsyncron = mysql_fetch_array($qsyncron);
$rsyncron = mysql_num_rows($qsyncron);

	
$no = $_GET['no'];
$getnowr = "select * from trwr where nowr = '$no'";
$qgetnowr = mysql_query($getnowr);
$hgetnowr = mysql_fetch_array($qgetnowr);


$nowr = $_POST['nowr'];
$pin = $_POST['pin'];
$idcom = $_POST['idcom'];
$divisi = $_POST['divisi'];
$signature = $_POST['signature'];

//Approve lewat Web ===================================================================================================================================================
if (!empty($nowr) and !empty($pin) and !empty($idcom) and !empty($signature))
{
	$pin = md5($pin);
	$cekval = "select * from msdivisi where leader = '$signature' and pin = '$pin'";
	$qcekval = mysql_query($cekval);
	$hcekval = mysql_fetch_array($qcekval);
		if ($hcekval[idcompany]==$hsyncron[idcompany])
		{
			$cekcomp = "select * from mscompany where idcompany = '$idcom'";
			$qcekcomp = mysql_query($cekcomp);
			$hcekcomp = mysql_fetch_array($qcekcomp);
			$rcekval = mysql_num_rows ($qcekval);
			if ($rcekval<>'0')
			{
				$wr = "select * from trwr where nowr = '$nowr'";
				$qwr = mysql_query($wr);
				$hwr = mysql_fetch_array($qwr);
			
				$tech = "select * from mstech where idtech = '$hwr[idtech]'";
				$qtech = mysql_query($tech);
				$htech = mysql_fetch_array($qtech);
				$status='G';
				$datesign = date("Y-m-d");
				$changeappr = "update trwr set status='$status', datesignature='$datesign' where nowr = '$nowr'";
				if (mysql_query($changeappr))
				{	
					$receipt = $htech[email];
					$subject = "Work Request IT has Approved";
					$nocet =$nowr;
					include "sendmailG.php";
					
					$tech = "select * from mslogin where idtech = '$hwr[idtech]'";
					$qtech = mysql_query($tech);
					while ($htech = mysql_fetch_array($qtech))
					{
						include "sendmailG.php";
					}
					header ("location:wr.php");
				}
				else
				{
				}
			
			}
			else
			{
				$no = $nowr;
				$message = "Sory, Invalid Password!!";
			}
		}
		else
		{
			$no = $nowr;
			$message = "Sory, Invalid Data!!";
		}
	
}
else
{
}



//Approve lewat Email ===================================================================================================================================================
$noapp = $_GET['noapp'];
$idapp = $_GET['idapp'];
$passapp = $_GET['passapp'];
$leader = $_GET['leader'];

if (!empty($noapp) and !empty($idapp) and !empty($leader) and !empty($passapp))
{
	
	$cekval = "select * from msdivisi where leader = '$leader' and idcompany='$idapp' and pin = '$passapp'";
	$qcekval = mysql_query($cekval);
	
	$cekcomp = "select * from mscompany where idcompany = '$idapp'";
	$qcekcomp = mysql_query($cekcomp);
	
	$wr = "select * from trwr where nowr = '$noapp'";
	$qwr = mysql_query($wr);
	
	$hcekval = mysql_fetch_array($qcekval);
	$hcekcomp = mysql_fetch_array($qcekcomp);
	$rcekval = mysql_num_rows($qcekval);
	if ($rcekval==1)
	{
		
		$hwr = mysql_fetch_array($qwr);
		$rwr = mysql_num_rows($qwr);
		if ($rwr =='1')
		{
			if ($hwr[status]=='H')
			{
				$tech = "select * from mstech where idtech = '$hwr[idtech]'";
				$qtech = mysql_query($tech);
				$htech = mysql_fetch_array($qtech);
				$status='G';
				$datesign = date("Y-m-d");
				$changeappr = "update trwr set status='$status', datesignature='$datesign' where nowr = '$noapp'";
				mysql_query($changeappr);	
				$receipt = $htech[email];
				$subject = "Work Request IT has Approved";
				$judul = "Work Request IT was Approved";
				$nocet = $noapp;
				
				include "sendmailG.php";
				
				$tech = "select * from mslogin where idtech = '$hwr[idtech]'";
				$qtech = mysql_query($tech);
				while ($htech = mysql_fetch_array($qtech))
				{
					include "sendmailG.php";
				}
				echo "<center><font face=arial size=2><b>Request has been Aprove. Waiting to Assign from Technical Support<br>
				Thank You
				</b></font></center>";
				session_destroy();
			}
			else
			{
				if ($hwr[status]=='G')
				{
					$status = "Approve";
					$message2 = "Waiting to Assign from Technical Support.
				Thank You!";
				}
				else if ($hwr[status]=='A')
				{
					$status = "Assign";
					$message2 = "Thank You!";
				}
				else if ($hwr[status]=='CO')
				{
					$status = "Close";
					$message2 = "Thank You!";
				}
				else if ($hwr[status]=='CA')
				{
					$status = "Cancel";
					$message2 = "Thank You!";
				}
			
				echo "<center><font face=arial size=2><b>Request Cannot be Aprove! Status of Request is <b>$status<br>
				$message2</b></font></center>";
				session_destroy();
			}
		
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
// END Approve lewat Email ===================================================================================================================================================




if ($_SESSION[idlog]=="" and $_SESSION[passwordlog]=="")
{
	
}
else
{

$selcompany = "select * from mscompany where idcompany = '$hsyncron[idcompany]'";
$qselcompany = mysql_query($selcompany);
$hselcompany = mysql_fetch_array($qselcompany);
?>

<html>
<head>
<title>IT Ticketing</title>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1251">
<link href="style.css" rel="stylesheet" type="text/css">
</head>
<body bgcolor="#FFFFFF" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
<table width="780" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td>
		<table width="100%" border="0" cellspacing="0" cellpadding="0">
		<?php
		include "atas.php";
		?>
			<tr>
				<td>
				<center><font face="arial" size="1" color="#FF0000"><?php echo "$message"; ?></font></center>
					<div align="center"><font face="arial" size="3"><b>Approve Work Request</b><br>
					</font></div><br>
					<?php
						$getnowr = "select * from trwr where nowr = '$no'";
						$qgetnowr = mysql_query($getnowr);
						$hgetnowr = mysql_fetch_array($qgetnowr);
					?>
					<table width="100%">
						<form method="post" action="approvewr.php">
							<tr align="center">
								<th><font face="arial" size="1">
								No. Request : <strong><?php echo "$no"; ?></strong><br>
								Location : <strong><?php echo "$hselcompany[company]"; ?></strong><br>
								Leader to assign : <strong><?php echo "$hgetnowr[signature]"; ?></strong>
								<br><br>
								Input Leader's Password</font></th>
							</tr>
							<input type="hidden" name="nowr" value="<?php echo "$no"; ?>">
							<input type="hidden" name="signature" value="<?php echo "$hgetnowr[signature]"; ?>">
							<input type="hidden" name="divisi" value="<?php echo "$hgetnowr[iddivisi]"; ?>">
							<input type="hidden" name="idcom" value="<?php echo "$hselcompany[idcompany]"; ?>">
							<tr align="center">
								<td><input type="password" name="pin"></td>
							</tr>
							
							<tr align="center">
								<td><input type="submit" value="Approve"></td>
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