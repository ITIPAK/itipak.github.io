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
$nama = $_POST['nama'];
$password = $_POST['password'];
$company = $_POST['company'];
$tech = $_POST['tech'];
$email = $_POST['email'];
$edit = $_POST['edit'];

//Reset Password
if (!empty($idactive) and !empty($reset))
{
	$newpassword = md5('123456');
	$changepassword = "update mslogin set password='$newpassword' where idlogin = '$idactive'";
	$qchangepassword = mysql_query($changepassword);
	if ($qchangepassword)
	{
		$message = "Password $idactive have been change with 123456";
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
	$change = "update mslogin set active='$statactive' where idlogin = '$idactive'";
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

if (!empty($id) and !empty($password) and !empty($company))
{
	

	if ($edit==1)
	{

//Edit Data
		$update = "update mslogin set idcompany = '$company', idtech='$tech', email='$email', nama='$nama' where idlogin = '$id'";
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
//Save New Data
		$passok= md5($password);
		$save = "insert into mslogin (idlogin, nama, password, active, idcompany, idtech, email) values ('$id', '$nama', '$passok', 'Y', '$company', '$tech', '$email')";
		$qsave = mysql_query($save);
		if ($qsave)
		{
		$message = "Insert Succesfull!!";
		}
		else
		{
		$message = "Insert Fail!!";
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
<title>IT Ticketing - Data of Login</title>
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
					<div align="center"><font face="arial" size="3"><b>Login of Company</b></font></div><br>
					
					<table width="900">
						<tr>
							<td colspan="6" align="center"><font face="arial" size="2" color="#0000FF"><b><?php echo "$message"; ?></b></font></td>
						</tr>
					
						<tr bgcolor="#CCCCCC">
							<th width="15%"><font face="arial" size="2"><b>Login ID</b></font></th>
							<th width="15%"><font face="arial" size="2"><b>Nama ID</b></font></th>
							<th width="20%"><font face="arial" size="2"><b>Password</b></font></th>
							<th width="15%"><font face="arial" size="2"><b>Status</b></font></th>
							<th width="25%"><font face="arial" size="2"><b>Company</b></font></th>
							<th width="25%"><font face="arial" size="2"><b>Tehnical</b></font></th>
							<th width="25%"><font face="arial" size="2"><b>Email</b></font></th>
							<th width="25%" colspan="2"><font face="arial" size="2"><b>Action</b></font></th>
						</tr>
						
						<form method="post" action="mslogin.php">
						<?php 
						if ($statedit<>1)
						{
						?>
						<tr bgcolor="#CCCCCC">
						
							<td><input type="text" name="id" size="10"></td>
							<td><input type="text" name="nama" size="12"></td>
							<td><input type="password" name="password" size="15"></td>
							<td><input type="text" name="active" size="10" value="Active" disabled></td>
							<td>
								<select name="company">
									<option value="ALL">Technical / Admin</option>
									<?php
									 $optcompany = "select * from mscompany";
									 $qoptcompany = mysql_query($optcompany);
									 while ($hoptcompany=mysql_fetch_array($qoptcompany))
									 {
									 ?>
										<option value="<?php echo "$hoptcompany[idcompany]"; ?>"><?php echo "$hoptcompany[company]"; ?></option>
									<?php
									 }
									?>
								</select>
							</td>
							<td>
								<select name="tech">
									<option value="">No Tech</option>
									<option value="ALL">Admin</option>
									<?php
									$opttech = "select * from mstech where active='Y' order by idtech";
									$qopttech = mysql_query($opttech);
									while ($hopttech = mysql_fetch_array($qopttech))
									{
									?>
									<option value="<?php echo "$hopttech[idtech]"; ?>"><?php echo "$hopttech[tech]"; ?></option>
									<?php
									}
									?>
								</select>
							</td>
							<td><input type="text" name="email" size="10"></td>
							<td align="center"><input type="submit" value="Save"></td>
							<td align="center"><input type="reset" value="Reset"></td>	
						</tr>
						<?php
						}
						else
						{
						$lookdata = "select * from mslogin where idlogin = '$idactive'";
						$qlookdata = mysql_query($lookdata);
						$hlookdata = mysql_fetch_array($qlookdata);
						?>
						<tr bgcolor="#CCCCCC">
							<td><input type="hidden" name="id" size="10" value="<?php echo "$hlookdata[idlogin]"; ?>"><input type="text"  value="<?php echo "$hlookdata[idlogin]"; ?>" name="id2" size="10" disabled></td>
							<td><input type="text"  value="<?php echo "$hlookdata[nama]"; ?>" name="nama" size="12"></td>
							<td><input type="hidden" name="edit" value="1"> <input type="hidden" name="password" value="<?php echo "$hlookdata[password]"; ?>"> <input disabled type="password" name="password2" size="15" value="<?php echo "$hlookdata[password]"; ?>"></td>
							<td><input type="text" name="active" size="10" value="Active" disabled></td>
							<td>
							<?php
							$valuecom  = $hlookdata[idcompany];
							if ($hlookdata[idcompany]=="ALL")
							{
								
								$labelcom = "==ALL Company==";
							}
							else
							{
								$lookcompany = "select * from mscompany where idcompany = '$hlookdata[idcompany]'";
								$qlookcompany = mysql_query($lookcompany);
								$hlookcompany = mysql_fetch_array($qlookcompany);
								$labelcom = $hlookcompany[company];
							}
							
							?>
								<select name="company">
									<option value="<?php echo "$valuecom"; ?>"><?php echo "$labelcom"; ?></option>
									<option value="ALL">==ALL Company==</option>									
									<?php
									 $optcompany = "select * from mscompany";
									 $qoptcompany = mysql_query($optcompany);
									 while ($hoptcompany=mysql_fetch_array($qoptcompany))
									 {
									 ?>
										<option value="<?php echo "$hoptcompany[idcompany]"; ?>"><?php echo "$hoptcompany[company]"; ?></option>
									<?php
									 }
									?>
								</select>
							</td>
							
							<td>
							<?php
							$valuetech  = $hlookdata[idtech];
							if ($hlookdata[idtech]=="")
							{
								
								$labeltech = "No Tech";
							}
							else if ($hlookdata[idtech]=="ALL")
							{
								
								$labeltech = "Admin";
							}
							else
							{
								$looktech = "select * from mstech where idtech = '$hlookdata[idtech]'";
								$qlooktech = mysql_query($looktech);
								$hlooktech = mysql_fetch_array($qlooktech);
								$labeltech = $hlooktech[tech];
							}
							
							?>
								<select name="tech">
									<option value="<?php echo "$valuetech"; ?>"><?php echo "$labeltech"; ?></option>
									<option value="ALL">==ALL Company==</option>									
									<?php
									$opttech = "select * from mstech where active='Y' order by idtech";
									$qopttech = mysql_query($opttech);
									while ($hopttech = mysql_fetch_array($qopttech))
									{
									?>
									<option value="<?php echo "$hopttech[idtech]"; ?>"><?php echo "$hopttech[tech]"; ?></option>
									<?php
									}
									?>
								</select>
							</td>
							<td> <input type="text" name="email" size="15" value="<?php echo "$hlookdata[email]"; ?>"></td>
							
							<td align="center"><input type="submit" value="Update"></td>
							<td align="center"><a href="mslogin.php"><input type="reset" value="Cancel"></a></td>	
						</tr>
						<?php
						}
						?>
						
						</form>
						<?php
							$datalog = "select * from mslogin order by idlogin";
							$qdatalog = mysql_query($datalog);
							while ($hdatalog = mysql_fetch_array($qdatalog))
							{
								if ($hdatalog[active]=='Y')
								{
									$background = "white";
								}
								else
								{
									$background = "yellow";
								}
							
						?>
						<tr bgcolor="<?php echo "$background"; ?>">
							<td align="justify"><font face="arial" size="1"><?php echo "$hdatalog[idlogin]"; ?></font></td>
							<td align="justify"><font face="arial" size="1"><?php echo "$hdatalog[nama]"; ?></font></td>
							<td align="justify"><font face="arial" size="1">**********</font></td>
							<td align="justify"><font face="arial" size="1"><?php if ($hdatalog[active]=='Y') { echo "Active"; } else { echo "Non Active"; }  ?></font></td>
							<td align="justify"><font face="arial" size="1"><?php 
							if ($hdatalog[idcompany]=='ALL')
							{
								echo "All Access";
							}
							else
							{
								$getcompany = "select * from mscompany where idcompany = '$hdatalog[idcompany]'";
								$qgetcompany = mysql_query($getcompany);
								$hgetcompany = mysql_fetch_array ($qgetcompany);
								echo "$hgetcompany[company]";
							}
							 ?></font>
							 </td>
							 
							 <td align="justify"><font face="arial" size="1">
							 <?php 
							if ($hdatalog[idtech]=='')
							{
								echo "No Technical";
							}
							else if ($hdatalog[idtech]=='ALL')
							{
								echo "Admin";
							}
							else
							{
								$gettech = "select * from mstech where idtech = '$hdatalog[idtech]'";
								$qgettech = mysql_query($gettech);
								$hgettech = mysql_fetch_array ($qgettech);
								echo "$hgettech[tech]";
							}
							 ?></font>
							 </td>
							 <td align="justify"><font face="arial" size="1"><?php echo "$hdatalog[email]"; ?></font></td>
							<td colspan="2"><div align="center"><font face="arial" size="1"> <?php if ($hdatalog[active]=='Y') { echo "| <a href='mslogin.php?idactive=$hdatalog[idlogin]&statedit=1'>Edit</a> | <a href='mslogin.php?idactive=$hdatalog[idlogin]&statactive=N'>Non Active</a> | <a href='mslogin.php?idactive=$hdatalog[idlogin]&reset=Y'>Resset Password</a> |"; } else { echo "| Edit | <a href='mslogin.php?idactive=$hdatalog[idlogin]&statactive=Y'>Active</a> | Resset Password |"; }  ?></font></div></td>
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