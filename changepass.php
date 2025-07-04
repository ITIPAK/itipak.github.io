<?php
include "koneksi.php";
session_start();


if ($_SESSION[idlog]=='' and $_SESSION[passwordlog]=='')
{
	header("location:index.php");
}
else
{

$syncron = "select * from mslogin where idlogin = '$_SESSION[idlog]' and password = '$_SESSION[passwordlog]'";
$qsyncron = mysql_query($syncron);
$hsyncron = mysql_fetch_array($qsyncron);
$selcompany = "select * from mscompany where idcompany = '$idcompany'";
$qselcompany = mysql_query($selcompany);
$idlogin = $_SESSION[idlog];

$oldpass = $_POST['oldpass'];
$newpass1 = $_POST['newpass1'];
$newpass2 = $_POST['newpass2'];
$rec=$_POST['rec'];
if (!empty($oldpass) and !empty($newpass1) and !empty($newpass2))
{
	$oldpass = md5($oldpass);
	$newpass1 = md5($newpass1);
	$newpass2 = md5($newpass2);
	//cek passlama
	$cekpass = "select * from mslogin where password = '$oldpass' and idlogin='$idlogin'";
	$qcekpass = mysql_query($cekpass);
	$rcekpass = mysql_num_rows($qcekpass);

	if ($rcekpass == 0)
	{
		$message = "Wrong Old Password!";
	}
	else
	{
		//Cek Kesamaan Password Baru dan Konfirmasi Password Baru
		if ($newpass1 == $newpass2)
		{
			$change = "update mslogin set password = '$newpass1' where idlogin = '$idlogin'";
			if (mysql_query($change))
			{
				
				header ("location:index.php?message=3");
			}
			else
			{
			}
		}
		else
		{
			$message = "New Passwords Not Same!";
		}
	}
}
else
{
	if(!empty($rec))
	{
		$message = "All Field Must be Fill!";
	}
	else
	{
		$message = "";
	}
}


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
					<div align="center"><font face="arial" size="3"><b>Change Login's Password<br></b></font></div>
					<table width="50%" align="center">
					<tr>
						<td colspan="3" align="center"><font face="arial" size="1" color="#FF0000"><b><?php echo "$message"; ?></b></font></td>
					</tr>
					<form method="post">
						<tr>
							<td><strong><font face="arial" size="2">Old Password</font></strong></td> <td><font face="arial" size="2">:</font></td>
							<td><input type="hidden" name="rec" value="1"><input type="password" size="20" name="oldpass" placeholder="Old Password"></td>
						</tr>
						
						<tr>
							<td><strong><font face="arial" size="2">New Password</font></strong></td>  <td><font face="arial" size="2">:</font></td>
							<td><input type="password" size="20" name="newpass1" placeholder="New Password"></td>
						</tr>
						
						<tr>
							<td><strong><font face="arial" size="2">Confirmation Password</font></strong></td>  <td><font face="arial" size="2">:</font></td>
							<td><input type="password" size="20" name="newpass2" placeholder="Confirmation Password"></td>
						</tr>
						
						<tr>
							<td colspan="3" align="center"><input type="submit" value="Update"></form><br><form method="post" action="home.php"><input type="submit" value="Batal"></form></td>
						</tr>	
						
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