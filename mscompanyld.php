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
//variable
$idactive = $_GET['idactive'];
$lead = $_GET['lead'];

$idcompany = $_POST['idcompany'];
$leader = $_POST['leader'];
$email = $_POST['email'];
$pin = $_POST['pin'];
$state = $_POST['state'];
$stati = $_POST['stati'];
if (!empty($leader) and !empty($email) and !empty($pin))
{
	$pin = md5($pin);
	if ($state=='')
	{
		$sql = "insert into mscompanyld (idcompany, leader, email, pin) values ('$idcompany', '$leader', '$email', '$pin')";
	}
	else
	{
		$sql = "update mscompanyld set leader = '$leader', email='$email', pin='$pin' where idcompany='$idcompany' and leader='$state'";
	}
	if (mysql_query($sql))
	{
		$lead = "";
	}
	else
	{
	
	}
}
	else
{
	if ($stati==1)
	{
		$message = "Field Must Be Fill!!";
	}
	else
	{
		$message = "";
	}
}

$getdata = "select * from mscompanyld where idcompany='$idactive' and leader ='$lead'";
$qgetdata = mysql_query($getdata);
$hgetdata = mysql_fetch_array($qgetdata);
$selcompany = "select * from mscompany where idcompany = '$idcompany'";
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
<table width="900" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td>
		<table width="900" border="0" cellspacing="0" cellpadding="0" align="center">
		<?php
		include "atas.php";
		?>
			<tr>
				<td>
					<div align="center"><font face="arial" size="3"><b>Leader of <?php echo "$hselcompany[alias]"; ?></b></font>
					<br>
					<font face="arial" size="1" color="#FF0000"><?php echo "$message"; ?></font>
					</div>
					<table align="center" width="500">
						<tr align="justify" bgcolor="#999999">
							<th><font face="arial" size="1"><b>No. </b></font></th>
							<th><font face="arial" size="1"><b>Leader Name</b></font></th>
							<th><font face="arial" size="1"><b>Email</b></font></th>
							<th><font face="arial" size="1"><b>Paswword</b></font></th>
							<th colspan="2"><font face="arial" size="1"><b>Action</b></font></th>
						</tr>
						
					<form method="post">
					<input type="hidden" name="idcompany" value="<?php echo "$idactive"; ?>">	
					<input type="hidden" name="state" value="<?php echo "$lead"; ?>">	
					<input type="hidden" name="stati" value="<?php echo "1"; ?>">	
						<tr>
							<td><input type="text" size="1" value="##" disabled></td>
							<td><input type="text" name="leader" size="10" value="<?php echo "$hgetdata[leader]"; ?>"></td>
							<td><input type="text" name="email" size="18" value="<?php echo "$hgetdata[email]"; ?>"></td>
							<td><input type="password" name="pin" size="10" value="<?php echo "$hgetdata[pin]"; ?>"></td>
							<td><input type="submit" value="Save"></td>
							<td><input type="reset" value="Cancel"></td>
						</tr>
					</form>
					<?php
						$getleader = "Select * from mscompanyld where idcompany = '$idactive' order by leader";
						$qgetleader = mysql_query($getleader);
						$n=1;
						while ($hgetleader=mysql_fetch_array($qgetleader))
						{
						?>
						<tr>
							<td><font face="arial" size="1"><?php echo "$n"; ?></font></td>
							<td><font face="arial" size="1"><?php echo "$hgetleader[leader]"; ?></font></td>
							<td><font face="arial" size="1"><?php echo "$hgetleader[email]"; ?></font></td>
							<td><font face="arial" size="1"><?php echo "*******"; ?></font></td>
							<td colspan="2" align="center"><font face="arial" size="1"><?php echo "<a href=mscompanyld.php?lead=$hgetleader[leader]&idactive=$idactive>Edit</a>"; ?></font></td>
						</tr>
						<?php
						
						}	
					?>
						
					</table>
					
					<div align="center"><font face="arial" size="2"><a href="mscompany.php"><< Back to Company's Master</a></font></div>
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