<?php
session_start();
include "koneksi.php";
$sistem = "select * from sistem";
$qsistem = mysql_query($sistem);
$hsistem = mysql_fetch_array($qsistem);
if (!empty ($_SESSION[namauser]) AND !empty ($_SESSION[passuser]))
{
$userid = $_GET['userid'];
$reset = $_GET['reset'];
$hapus = $_GET['hapus'];
$level = $_GET['level'];

$id = $_POST['id'];
$pass = $_POST['password'];
$level = $_POST['level'];
// Script untuk Save Baru
if(!empty($id) and !empty($pass) and !empty($level))
{
	$passid = md5($pass);
	$simpan = "insert into admin (UserID, PassID, level, FgActive) values ('$id', '$passid', '$level', 'Y')";
	if (mysql_query($simpan))
	{
	 $pesanerror = "Simpan Sukses";
	}
	else
	{
	 $pesanerror = "Simpan Gagal";
	}
}
else
{
}
//Script Simpan Data Baru sampai Sini

//echo "$userid<br>$reset<br>$hapus<br>$level";
// Script Hapus
if ($hapus==1 and !empty($userid))
{
 $hapus = "Update admin set FgActive = 'N' where UserID ='$userid'";
 if (mysql_query($hapus))
 {
 $pesanerror = "Hapus Sukses";
 }
 else
 {
 $pesanerror = "Hapus GAGAL";
 }
 
}
else
{
}
//Script Hapus Sampe Sini!!
?>


<?php
//Scrip Edit Level
if (!empty($level) and !empty($userid))
{
if ($level=='1')
{
$update = "Update admin set level = '2' where UserID = '$userid'";
}
else
{
$update = "Update admin set level = '1' where UserID = '$userid'";
}
if(mysql_query($update))
{
	$pesanerror = "Ubah Level Sukses";
}
else
{
	$pesanerror = "Ubah Level Gagal";
}
}
else
{
}
//Script Ubah Level Sampe Sini!!!
?>

<?php
//Scrip Reset Password
if ($reset=='1' and !empty($userid))
{
$newpass="123456";
$passnew = md5($newpass);
$ubahpass = "Update admin set PassID = '$passnew' where UserID = '$userid' ";
if (mysql_query($ubahpass))
{
  $pesanerror = "User ID : '$userid', Password Sudah di Reset Menjadi '$newpass'";
}
else
{
}
}
else
{
}
//Script Reset Pass!!!
?>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<title><?php echo "$hsistem[judul]";  ?></title>
<link rel="stylesheet" type="text/css" href="tcal.css" />
<script type="text/javascript" src="tcal.js"></script> 
</head>

<body>
<?php
include "atas.php";
?>
<center>

<table>
<tr>
<th> <img src="<?php echo "$hsistem[path]$hsistem[logo]";  ?>" width="700" height="150"></th>
</tr>
<?php
include "menu.php";
?>
<tr>
<th align="center"><br><font face="Arial" size="5"><b>Data Admin</b></font><br>
<font size="1" face="arial"><?php echo "$pesanerror"; ?></font>
<br>
<?php
$admin = "select * from admin order by UserID desc";
?>
<table>
<tr>
<th bgcolor="#999999" width="40"><font face="arial" size="2"><b>No</b></font></th>
<th bgcolor="#999999"><font face="arial" size="2"><b>User ID</b></font></th>
<th bgcolor="#999999" width="130"><font face="arial" size="2"><b>Password</b></font></th>
<th bgcolor="#999999" width="130"><font face="arial" size="2"><b>Level</b></font></th>
<th bgcolor="#999999" colspan="3" width="130"><font face="arial" size="2"><b>Action</b></font></th>
</tr>

		<form method="post" action="admin.php">
	<tr>
	<td>##</td>
	<td><input type="text" size="20"  name="id"></td>
	<td><input type="password" size="15" name="password"></td>
	<td>
	<select name="level">
		<option value="">== Pilih Level Admin ==</option>
		<option value="1">Super User</option>
		<option value="2">General User</option>
	</select></td>
	<td colspan="3" align="center"><input type="submit" value="Simpan"> <a href="admin.php"><input type="reset" value="Batal"></a></td>
	</tr>
	
	</form>
<?php


$qadmin = mysql_query($admin);

 $n=1;
while ($hadmin=mysql_fetch_array($qadmin))
{
		if ($n%2==0)
		{
			if ($hadmin[FgActive]=='N')
			{
				$back="#00FF00";
			}
			else
			{
				$back="#FFFFFF";
			}
		}
		else
		{
			if ($hadmin[FgActive]=='N')
			{
				$back="#00FF00";
			}
			else
			{		
				$back="#CCCCCC";
			}
		}
?>
<tr bgcolor="<?php echo "$back"; ?>" align="justify">
<td><font face="arial" size="1"><?php echo "$n"; ?></font></td>
<td><font face="arial" size="1"><?php echo "$hadmin[UserID]"; ?></font></td>
<td><font face="arial" size="1"><?php echo "***************"; ?></font></td>
<td><font face="arial" size="1">
<?php
	if ($hadmin[level]==1)
	{
		echo "Super User";
	}
	else	
	{
		echo "General User";
	}
?>
</font></td>
<?php
if ($hadmin[FgActive]=='N')
		{
		?>
			<td colspan="2" align="center"><font face="arial" size="1" color="#0000FF"><b><i>Deleted</i></b></font></td>
		<?php
		}
		else
		{
		?>
			<td><font face="arial" size="1"><a href="<?php echo "admin.php?reset=1&userid=$hadmin[UserID]"; ?>">Reset Pasword</a></font></td>
			<td><font face="arial" size="1"><a href="<?php echo "admin.php?level=$hadmin[level]&userid=$hadmin[UserID]"; ?>">Ubah Level User</a></font></td>
			<td><font face="arial" size="1"><a href="<?php echo "admin.php?hapus=1&userid=$hadmin[UserID]"; ?>">Hapus</a></font></td>
			<?php /* ?
			>
			<td><font face="arial" size="1"><a href="<?php echo "libur.php?hapus=1&idlibur=$hholiday[HOLIDAYID]"; ?>">Hapus</a></font></td>
			
			*/?>
		<?php
		}
		?>

</tr>

<?php
$n++;
}

?>
</table>
</th>
</tr>
</table>
<br><br><br>
<hr>
<?php include "bawah.php"; ?>
</center>
</body>
</html>
<?php
}
else
{
?>
<iframe frameborder="0" src="boong.php" width="100%" height="100%"></iframe>
<?php
}
?>
