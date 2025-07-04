<?php
include "koneksi.php";
session_start();
error_reporting(E_ALL & ~E_NOTICE);
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
$selcompany = "select * from mscompany where idcompany = '$idcompany'";
$qselcompany = mysql_query($selcompany);
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
					<div align="center"><font face="arial" size="3"><b>Opname Stok</b></font></div>
				</td> 
			</tr>
        </table>
		

		
	</td>
  </tr>
</table>

		<table width="900" align="center">
						
			<tr align="center" bgcolor="#CCCCCC">
				<th width="10%"><font face="Arial" size="1"><b>Opname No</b></font></th>
				<th width="10%"><font face="Arial" size="1"><b>Date</b></font></th>
				<th width="10%"><font face="Arial" size="1"><b>Remark</b></font></th>		
			</tr>
			<?php
			$get = "select * from opnamehd order by tanggal desc";
			$qget = mysql_query($get);
			$col=1;
			while ($hget = mysql_fetch_array($qget))
			{
			?>
			<tr align="justify">
				<td><a href="<?php echo "printop.php?noop=$hget[noop]"; ?>"><font face="Arial" size="1"><?php echo "$hget[noop]"; ?></font></a></td>
				<td><font face="Arial" size="1"><?php echo Date("d-M-Y", strtotime($hget[tanggal])); ?></font></td>
				
				<td><font face="Arial" size="1"><?php echo "$hget[keterangan]"; ?></font></td>
			</tr>
			<?php
			$col++;
			}
			?>
			
		</table>
	<?php
		include "bawah.php";
	?>
</body>
</html>

<?php
}
?>