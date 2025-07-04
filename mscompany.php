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
?>




<?php
//All Variable's Input
$idactive = $_GET['idactive'];
$statactive = $_GET['statactive'];
$statedit = $_GET['statedit'];
$reset = $_GET['reset'];


$id = $_POST['id'];
$company = $_POST['company'];
$address = $_POST['address'];
$phone = $_POST['phone'];
$alias = $_POST['alias'];
$logo2 = $_POST['logo2'];
$logo = $_FILES['logo'];

$edit = $_POST['edit'];

//Reset Password
if (!empty($idactive) and !empty($reset))
{
	$newpassword = md5('123456');
	$changepassword = "update mscompany set pin='$newpassword' where idcompany = '$idactive'";
	$qchangepassword = mysql_query($changepassword);
	if ($qchangepassword)
	{
		$message = "Pin $idactive have been change with 123456";
	}
	else
	{
	}
}
else
{
}
//end of Reset Password


//Active and Non Active data
if (!empty($idactive) and !empty($statactive))
{
	$change = "update mscompany set active='$statactive' where idcompany = '$idactive'";
	$qchange = mysql_query($change);
	if ($qchange)
	{
		$message = "Status of Active Have Change!";
	}
	else
	{
	}
}
else
{
}

//End of Active and Non Active data


//Save New and Edit Data

if (!empty($id) and !empty($company) and !empty($address) and !empty($phone) and !empty($alias))
{


	if (!empty($edit))
	{
		$logoname= $_FILES['logo']['name'];
		if (!empty($logoname))
		{
			
			$logopath= "images/".$logoname;
			if (copy($_FILES['logo']['tmp_name'], $logopath))
			{
				$update = "update mscompany set company = '$company', address = '$address', phone ='$phone', alias='$alias', logo = '$logoname' where idcompany = '$id'";
				$qupdate = mysql_query($update);
				if ($qupdate)
				{
					$message = "Edit Succesfull!!";
				}
				else
				{
				}
			}
			else
			{
				$message = "Update has canceled, Upload Failure!";
			}
		}
		else
		{
			$logoname= $logo2;
			$update = "update mscompany set company = '$company', address = '$address', phone ='$phone', alias='$alias', logo = '$logoname' where idcompany = '$id'";
			$qupdate = mysql_query($update);
			if ($qupdate)
			{
				$message = "Edit Succesfull!!";
			}
			else
			{
			}
		}
	//Edit Data
		
	}
	else
	{
//Save New Data

		if (!empty($logo))
		{
			$logoname= $_FILES['logo']['name'];
			$logopath= "images/".$logoname;
			if (copy($_FILES['logo']['tmp_name'], $logopath))
			{
				$pinok= md5($pin);
				$save = "insert into mscompany (idcompany, company, address, phone, alias, logo, active) values ('$id', '$company', '$address', '$phone', '$alias', '$logoname', 'Y')";
				$qsave = mysql_query($save);
				if ($qsave)
				{
				$message = "Insert Succesfull!!";
				}
				else
				{
				}
			}
			else
			{
				$message = "Save has canceled, Upload Failure!";
			}
		}
		else
		{
		}
	}
}
else
{

}
//End Save New and Edit data


?>
<?php
$selcompany = "select * from mscompany where idcompany = '$idcompany'";
$qselcompany = mysql_query($selcompany);
?>

<html>
<head>
<title>IT Ticketing - Data of Company</title>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1251">
<link href="style.css" rel="stylesheet" type="text/css">
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
<table width="900" align="center">
	<tr>
		<td>
			<div align="center"><font face="arial" size="3"><b>List of Company</b></font></div><br>
			<table width="100%">
				<tr>
					<td colspan="6" align="center"><font face="arial" size="2" color="#0000FF"><b><?php echo "$message"; ?></b></font></td>
				</tr>
					
				<tr bgcolor="#CCCCCC">
					<th><font face="arial" size="1"><b>Company<br>ID</b></font></th>
					<th><font face="arial" size="1"><b>Company<br>Name</b></font></th>
					<th><font face="arial" size="1"><b>Address</b></font></th>
					<th><font face="arial" size="1"><b>Phone</b></font></th>
					<th><font face="arial" size="1"><b>Alias</b></font></th>
					
					<th><font face="arial" size="1"><b>Logo</b></font></th>
					<th colspan="2"><font face="arial" size="1"><b>Action</b></font></th>
				</tr>
						
				<form method="post" action="mscompany.php"  enctype="multipart/form-data">
				<?php 
					if ($statedit<>1)
					{
					?>
				<tr bgcolor="#CCCCCC">
					<td><input type="text" name="id" size="5"></td>
					<td><input type="text" name="company" size="15"></td>
					<td><textarea name="address"></textarea></td>
					<td><input type="text" name="phone" size="8"></td>
					<td><input type="text" name="alias" size="5"></td>
					
					<td><font face="arial" size="1"><input type="file" name="logo" size="5"></font></td>
					<td align="center"><input type="submit" value="Save"></td>
					<td align="center"><input type="reset" value="Reset"></td>	
				</tr>
				<?php
					}
					else
					{
						$lookdata = "select * from mscompany where idcompany = '$idactive'";
						$qlookdata = mysql_query($lookdata);
						$hlookdata = mysql_fetch_array($qlookdata);
				?>
				<tr bgcolor="#CCCCCC">
					<td><input type="hidden" name="id" size="10" value="<?php echo "$hlookdata[idcompany]"; ?>"><input type="text"  value="<?php echo "$hlookdata[idcompany]"; ?>" name="id2" size="10" disabled></td>
					<td><input type="hidden" name="edit" value="1"><input type="text" name="company" size="20" value="<?php echo "$hlookdata[company]"; ?>"></td>
					<td><textarea name="address"><?php echo "$hlookdata[address]"; ?></textarea></td>
					<td><input type="text" name="phone" size="10" value="<?php echo "$hlookdata[phone]"; ?>"></td>
					<td><input type="text" name="alias" size="7" value="<?php echo "$hlookdata[alias]"; ?>"></td>
					
					<td><font face="arial" size="1"><input type="hidden" name="logo2" size="10" value="<?php echo "$hlookdata[logo]"; ?>"><input type="file" name="logo" size="5" src="<?php echo "images/$hlookdata[logo]"; ?>"></font></td>
					<td align="center"><input type="submit" value="Update"></td>
					<td align="center"><a href="mscompany.php"><input type="reset" value="Cancel"></a></td>	
				</tr>
				<?php
					}
				?>
				</form>
				<?php
					$datacom = "select * from mscompany order by idcompany";
					$qdatacom = mysql_query($datacom);
					while ($hdatacom = mysql_fetch_array($qdatacom))
					{
						if ($hdatacom[active]=='Y')
						{
							$background = "white";
						}
						else
						{
							$background = "yellow";
						}
							
				?>
				<tr bgcolor="<?php echo "$background"; ?>">
					<td align="justify"><font face="arial" size="1"><?php echo "$hdatacom[idcompany]"; ?></font></td>
					<td align="justify"><font face="arial" size="1"><?php echo "$hdatacom[company]"; ?></font></td>
					<td align="justify"><font face="arial" size="1"><?php echo "$hdatacom[address]"; ?></font></td>
					<td align="justify"><font face="arial" size="1"><?php echo "$hdatacom[phone]"; ?></font></td>
					<td align="justify"><font face="arial" size="1"><?php echo "$hdatacom[alias]"; ?></font></td>
					
					<td align="justify"><font face="arial" size="1"><?php echo "$hdatacom[logo]"; ?></font></td>
					<td align="justify" colspan="2"> <div align="center"><font face="arial" size="1"> <?php if ($hdatacom[active]=='Y') { echo "|<a href='mscompany.php?idactive=$hdatacom[idcompany]&statedit=1'>Edit</a>|<br>|<a href='mscompany.php?idactive=$hdatacom[idcompany]&statactive=N'>Non Active</a>|<br>|<a href='mscompanyld.php?idactive=$hdatacom[idcompany]'>Detail Leader</a>|"; } else { echo "|Edit |<br>|<a href='mscompany.php?idactive=$hdatacom[idcompany]&statactive=Y'>Active</a>|<br>|Detail Leader|"; }  ?></font></div>	</td>
				</tr>
				<?php
					}
				?>
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