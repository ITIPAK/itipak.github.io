<?php
include "koneksi.php";
error_reporting(E_ALL & ~E_NOTICE);
session_start();
$syncron = "select * from mslogin where idlogin = '$_SESSION[idlog]' and password = '$_SESSION[passwordlog]'";
$qsyncron = mysql_query($syncron);
$hsyncron = mysql_fetch_array($qsyncron);
if ($_SESSION['idlog']=='' and $_SESSION['passwordlog']=='')
{
	header("location:index.php");
}
else
{

//Variable Input
$sqlin = $_POST['sqlin'];

if (!empty($sqlin))
{
	mysql_query($sqlin);
	header("location:mspart.php");
}
else
{

}
//$pincompany = "select pin from mscompanyld where idcompany = '$hsyncron[idcompany]' and pin='$pin'";
//$qpincompany = mysql_query($pincompany);
//$hpincompany = mysql_fetch_array($qpincompany);
//$rpincompany = mysql_num_rows($qpincompany);

if(!empty($pinasli))
{ 
	
	if ($pin == $hpincompany[pin])
	{
		if ($logoname=='')
		{
			$logoname = $_POST['logo'];
		}
		else
		{
			$logopath= "images/".$logoname;
			copy($HTTP_POST_FILES['logo2']['tmp_name'], $logopath);
			
		}	
		$update = "update mscompany set company='$company', address='$address', phone='$phone', alias='$alias', logo='$logoname' where idcompany = '$idcompany'";
		if (mysql_query($update))
		{
			$message = "Edit Succesfull!!";
		}
		else
		{
		}
	}
	else
	{
		$message = "Invalid Verification Password!!";
	}
}
else
{
	$message = "";
}

$getcompany = "select * from mscompany where idcompany = '$hsyncron[idcompany]'";
$qgetcompany = mysql_query($getcompany);
$hgetcompany = mysql_fetch_array($qgetcompany);
?>

<?php
$selcompany = "select * from mscompany where idcompany = '$idcompany'";
$qselcompany = mysql_query($selcompany);
?>

<html>
<head>
<title>IT Ticketing - Home Profile</title>
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
					<div align="center"><font face="arial" size="3"><b>Update Database (SQL)</b></font></div><br>
					<table width="100%">
						
					<form method="post" action="sqlin.php"  enctype="multipart/form-data">
						<input type="hidden" name="idcompany" value="<?php echo "$hgetcompany[idcompany]"; ?>">
						<input type="hidden" name="logo" value="<?php echo "$hgetcompany[logo]"; ?>">
						<tr>
							<td align="center"><font face="arial" size="2">Input Script</font></td>
						</tr>
						<tr>
							<td align="center"><textarea name="sqlin" rows="6"></textarea></td>
						</tr>
						
						<tr>
							<td align="center"><input type="submit" value="Run"></td>
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