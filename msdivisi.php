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
$divisi = $_POST['divisi'];
$company = $_POST['company'];
$address = $_POST['address'];
$leader = $_POST['leader'];
$pin = $_POST['pin'];
$pinok= md5($pin);
$email = $_POST['email'];

$edit = $_POST['edit'];

//Save New and Edit Data

if (!empty($id) and !empty($company) and !empty($address) and !empty($leader) and !empty($email))
{
	if (!empty($edit))
	{
		$update = "update msdivisi set idcompany = '$company', divisi = '$divisi', location = '$address', leader ='$leader', pin='$pinok', email = '$email' where iddivisi = '$id'";
		$qupdate = mysql_query($update);
		if ($qupdate)
		{
			$message = "Edit Succesfull!!";
		}
		else
		{
			$message = "Update has canceled!";
		}
	}
	else
	{
	//Save New Data

		
		$save = "insert into msdivisi (iddivisi, divisi, idcompany, location, leader, pin, email) values ('$id', '$divisi', '$company', '$address', '$leader', '$pinok', '$email')";
		$qsave = mysql_query($save);
		if ($qsave)
		{
			$message = "Insert Succesfull!!";
		}
		else
		{
			$message = "Update has canceled!";
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
			<div align="center"><font face="arial" size="3"><b>List of Divisi </b></font></div>
			<br>
			<table width="900">
				<tr>
					<td colspan="9" align="center"><font face="arial" size="2" color="#0000FF"><b><?php echo "$message"; ?></b></font></td>
				</tr>
					
				<tr bgcolor="#CCCCCC">
					<th><font face="arial" size="1"><b>No</b></font></th>
					<th><font face="arial" size="1"><b>Divisi<br>ID</b></font></th>
					<th><font face="arial" size="1"><b>Divisi<br>Name</b></font></th>
					<th><font face="arial" size="1"><b>Company<br>Name</b></font></th>
					<th><font face="arial" size="1"><b>Location</b></font></th>
					<th><font face="arial" size="1"><b>Leader</b></font></th>
					<th><font face="arial" size="1"><b>PIN</b></font></th>
					<th><font face="arial" size="1"><b>Email</b></font></th>
					<th colspan="2"><font face="arial" size="1"><b>Action</b></font></th>
				</tr>
						
				<form method="post" action="msdivisi.php">
				<?php 
					if ($statedit<>1)
					{
					?>
				<tr bgcolor="#CCCCCC">
					<td><font face="arial" size="1">New <br>Data</font></td>
					<td><input type="text" name="id" size="5"></td>
					<td><input type="text" name="divisi" size="5"></td>
					<td>
					<select name="company">
					<option value="">Company Name</option>
					<?php
					$company = "select * from mscompany where active = 'Y' order by idcompany";
					$qcompany = mysql_query($company);
					while($hcompany=mysql_fetch_array($qcompany))
					{
					?>
					<option value="<?php echo "$hcompany[idcompany]"; ?>"><?php echo "$hcompany[company]"; ?></option>
					<?php	
					}
					?>
					</select>
					</td>
					<td><textarea name="address"></textarea></td>
					<td><input type="text" name="leader" size="8"></td>
					<td><input type="password" name="pin" size="5"></td>
					<td><input type="text" name="email" size="5"></td>
					<td align="center"><input type="submit" value="Save"></td>
					<td align="center"><input type="reset" value="Reset"></td>	
				</tr>
				<?php
					}
					else
					{
						$lookdata = "select * from msdivisi where iddivisi = '$idactive'";
						$qlookdata = mysql_query($lookdata);
						$hlookdata = mysql_fetch_array($qlookdata);
				?>
				<tr bgcolor="#CCCCCC">
				<td><font face="arial" size="1">Edit <br>Data</font></td>
					<td><input type="hidden" name="id" size="10" value="<?php echo "$hlookdata[iddivisi]"; ?>"><input type="text"  value="<?php echo "$hlookdata[iddivisi]"; ?>" name="id2" size="10" disabled></td>
					<td><input type="text"  value="<?php echo "$hlookdata[divisi]"; ?>" name="divisi" size="10"></td>
					<td><input type="hidden" name="edit" value="1">
					<select name="company">
					<?php
					$company1 = "select * from mscompany where idcompany = '$hlookdata[idcompany]'";
					$qcompany1 = mysql_query($company1);
					$hcompany1=mysql_fetch_array($qcompany1);
					?>
					<option value="<?php echo "$hcompany1[idcompany]"; ?>"><?php echo "$hcompany1[company]"; ?></option>
					<?php
					$company = "select * from mscompany where active = 'Y' order by idcompany";
					$qcompany = mysql_query($company);
					while($hcompany=mysql_fetch_array($qcompany))
					{
					?>
					<option value="<?php echo "$hcompany[idcompany]"; ?>"><?php echo "$hcompany[company]"; ?></option>
					<?php	
					}
					?>
					</select>
					</td>
					<td><textarea name="address"><?php echo "$hlookdata[location]"; ?></textarea></td>
					<td><input type="text" name="leader" size="10" value="<?php echo "$hlookdata[leader]"; ?>"></td>
					<td><input type="password" name="pin" size="10" value="<?php echo "$hlookdata[pin]"; ?>"></td>
					<td><input type="text" name="email" size="7" value="<?php echo "$hlookdata[email]"; ?>"></td>
					<td align="center"><input type="submit" value="Update"></td>
					<td align="center"><a href="mscompany.php"><input type="reset" value="Cancel"></a></td>	
				</tr>
				<?php
					}
				?>
				</form>
				<?php
					$datacom = "select * from msdivisi order by idcompany";
					$qdatacom = mysql_query($datacom);
					$n=1;
					while ($hdatacom = mysql_fetch_array($qdatacom))
					{
						
							
				?>
				<tr>
					<td align="justify"><font face="arial" size="1"><?php echo "$n"; ?></font></td>
					<td align="justify"><font face="arial" size="1"><?php echo "$hdatacom[iddivisi]"; ?></font></td>
					<td align="justify"><font face="arial" size="1"><?php echo "$hdatacom[divisi]"; ?></font></td>
					<?php
					$company1 = "select * from mscompany where idcompany = '$hdatacom[idcompany]'";
					$qcompany1 = mysql_query($company1);
					$hcompany1=mysql_fetch_array($qcompany1);
					?>
					<td align="justify"><font face="arial" size="1"><?php echo "$hcompany1[company]"; ?></font></td>
					<td align="justify"><font face="arial" size="1"><?php echo "$hdatacom[location]"; ?></font></td>
					<td align="justify"><font face="arial" size="1"><?php echo "$hdatacom[leader]"; ?></font></td>
					<td align="justify"><font face="arial" size="1"><?php echo "$hdatacom[pin]"; ?></font></td>
					<td align="justify"><font face="arial" size="1"><?php echo "$hdatacom[email]"; ?></font></td>
					<td align="justify" colspan="2"> <div align="center"><font face="arial" size="1"> <?php echo "|<a href='msdivisi.php?idactive=$hdatacom[iddivisi]&statedit=1'>Edit</a>|";  ?></font></div>	</td>
				</tr>
				<?php
					$n++;
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