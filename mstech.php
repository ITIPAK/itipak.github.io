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

$selcompany = "select * from mscompany where idcompany = '$idcompany'";
$qselcompany = mysql_query($selcompany);

//Variable
$id = $_GET['id'];
$active = $_GET['active'];
$edit = $_GET['edit'];

$idtech = $_POST['idtech'];
$tech = $_POST['tech'];
$email = $_POST['email'];
$remark = $_POST['remark'];
$fill = $_POST['fill'];
$statedit = $_POST['statedit'];


if ($edit==1)
{
	$gettech = "select * from mstech where idtech = '$id'";
	$qgettech = mysql_query($gettech);
	$hgettech = mysql_fetch_array($qgettech);
	$submit = "Update";
}
else
{
	$submit = "Save";
}

//save new and update data
if (!empty($idtech) and !empty($tech) and !empty($email))
{
	if ($statedit=='1')
	{
		$save = "update mstech set tech='$tech', email='$email', remark='$remark' where idtech = '$idtech'";
	}
	else
	{
		$save = "insert into mstech (idtech, tech, email, remark, active) values ('$idtech', '$tech', '$email', '$remark', 'Y')";
	}
	
	mysql_query($save);
}
else
{
	if ($fill == '1')
	{
		$message = "All Field must be Filled ";
	}
	else
	{
	}
}

//Active and Non Active
if (!empty($id) and !empty($active))
{
	$changestatus = "update mstech set active='$active' where idtech='$id'";
	mysql_query($changestatus);
}
else
{

} 


$mstech = "select * from mstech order by idtech";
$qmstech = mysql_query($mstech);
?>

<html>
<head>
<title>IT Ticketing</title>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1251">
<link href="style.css" rel="stylesheet" type="text/css">
</head>
<body bgcolor="#FFFFFF" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
<table width="900" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td>
		<table width="900" border="0" cellspacing="0" cellpadding="0">
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
					<div align="center"><font face="arial" size="3"><b>Data Technical</b></font></div>
					<br>
					<table width="100%">
						<tr bgcolor="#999999">
							<th width="80"><font face="arial" size="1"><b>Id Technical</b></font></th>
							<th width="100"><font face="arial" size="1"><b>Techical</b></font></th>
							<th width="150"><font face="arial" size="1"><b>Email</b></font></th>
							<th width="200"><font face="arial" size="1"><b>Remark</b></font></th>
							<th width="200" colspan="2"><font face="arial" size="1"><b>Action</b></font></th>
						</tr>
					<form method="post" action="mstech.php">
					<input type="hidden" name="fill" value="1">
						<tr>
						<td>
							<?php
							if ($edit==1)
							{
							?>
							<input type="hidden" name="idtech" value="<?php echo "$id"; ?>">
							<input type="hidden" name="statedit" value="1">
							<input type="text" name="idtech2" size="10" disabled value="<?php echo "$id"; ?>">
							<?php
							}
							else
							{
							?>
								<input type="text" name="idtech" size="10">
							<?php
							}
							?>
						</td>
						<td><input type="text" name="tech" size="15" value="<?php echo "$hgettech[tech]"; ?>"></td>
						<td><input type="text" name="email" size="20"  value="<?php echo "$hgettech[email]"; ?>"></td>
						<td><input type="text" name="remark" size="30"  value="<?php echo "$hgettech[remark]"; ?>"></td>
						<td><input type="submit" value="<?php echo "$submit"; ?>" size="15"></td>
						<td><input type="reset" value="Cancel" size="15"></td>
						</tr>
					</form>	
					<?php
					while ($hmstech = mysql_fetch_array($qmstech))
					{
						if ($hmstech[active]=='N')
						{
							$back = "#CCCCCC";
						}
						else
						{
							$back = "white";
						}
					?>
						<tr bgcolor="<?php echo "$back"; ?>">
							<td><font face="arial" size="1"><?php echo "$hmstech[idtech]"; ?></font></td>
							<td><font face="arial" size="1"><?php echo "$hmstech[tech]"; ?></font></td>
							<td><font face="arial" size="1"><?php echo "$hmstech[email]"; ?></font></td>
							<td><font face="arial" size="1"><?php echo "$hmstech[remark]"; ?></font></td>
							<td><font face="arial" size="1">
								<?php 
								if ($hmstech[active]=='N')
								{
									echo "no edit"; 
								}
								else
								{
									echo "<a href=mstech.php?id=$hmstech[idtech]&edit=1>edit</a>";
								}
								?>
								</font>
							</td>
							<td><font face="arial" size="1">
								<?php 
								if ($hmstech[active]=='N')
								{
									echo "<a href=mstech.php?id=$hmstech[idtech]&active=Y>Activated</a>"; 
								}
								else
								{
									echo "<a href=mstech.php?id=$hmstech[idtech]&active=N>UnActivated</a>";
								}
								?>
							
							
							</font></td>
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