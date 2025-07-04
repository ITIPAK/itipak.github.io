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
$getcompany = "select * from mscompany where idcompany = '$hsyncron[idcompany]'";
$qgetcompany = mysql_query($getcompany);
$hgetcompany = mysql_fetch_array($qgetcompany);

//variabel Get
$edit = $_GET['edit'];
$idedit = $_GET['idedit'];




?>
<html>
<head>
<title>IT Ticketing - Master Part</title>
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
					<div align="center"><font face="arial" size="3"><b> Divisions of <?php echo "$hgetcompany[company]"; ?></b></font></div>
					<table width="100%">
						<tr>
							<td colspan="7" align="center"><font face="arial" size="2" color="#0000FF"><b><?php echo "$message"; ?></b></font></td>
						</tr>
						
						<tr bgcolor="#CCCCCC">
							<th width="15%"><font face="arial" size="1"><b>ID Division</b></font></th>
							<th width="25%"><font face="arial" size="1"><b>Division Name</b></font></th>
							<th width="30%"><font face="arial" size="1"><b>Location</b></font></th>
							<th width="30%"><font face="arial" size="1"><b>Leader</b></font></th>
							<th width="10%"><font face="arial" size="1"><b>Email</b></font></th>
							
						</tr>
							
						<?php
						if ($hsyncron[idtech]=="ALL")
						{
							$msdiv = "select * from msdivisi order by iddivisi";
						}
						else
						{
							$msdiv = "select * from msdivisi where idcompany = '$hgetcompany[idcompany]' order by iddivisi";
						}
						$qmsdiv = mysql_query($msdiv);
						while ($hmsdiv = mysql_fetch_array($qmsdiv))
						{
						
						?>
						<tr>
							<td width="15%"><font face="arial" size="1"><?php echo "$hmsdiv[iddivisi]"; ?></font></td>
							<td width="25%"><font face="arial" size="1"><?php echo "$hmsdiv[divisi]"; ?></font></td>
							<td width="30%"><font face="arial" size="1"><?php echo "$hmsdiv[location]"; ?></font></td>
							<td width="25%"><font face="arial" size="1"><?php echo "$hmsdiv[leader]"; ?></font></td>
							<td width="30%"><font face="arial" size="1"><?php echo "$hmsdiv[email]"; ?></font></td>
							
							<!--
							<td align="justify"><font face="arial" size="1"><a href="<?php echo "divisi.php?edit=1&idedit=$hmsdiv[iddivisi]"; ?>">Edit</a></font></td>
							<td align="justify"><font face="arial" size="1"><a href="<?php echo "divisi.php?delete=1&iddelete=$hmsdiv[iddivisi]"; ?>">Hapus</a></font></td>							
						-->
						</tr>
						<?php
						}
						?>
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