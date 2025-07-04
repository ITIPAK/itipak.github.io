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
					<div align="center"><font face="arial" size="3"><b>Part Receive</b></font></div>
				</td> 
			</tr>
        </table>
		

		
	</td>
  </tr>
</table>

		<table width="900" align="center">
						
			<tr align="center" bgcolor="#CCCCCC">
				<th width="10%"><font face="Arial" size="1"><b>Receive No</b></font></th>
				<th width="10%"><font face="Arial" size="1"><b>Receive Date</b></font></th>
				<th width="10%"><font face="Arial" size="1"><strong>Request No </strong></font></th>
				<th width="10%"><font face="Arial" size="1"><b>Remark</b></font></th>	
				
			</tr>
			<?php
			$getrr = "select * from trrrhd order by norr asc";
			$qgetrr = mysql_query($getrr);
			$col=1;
			while ($hgetrr = mysql_fetch_array($qgetrr))
			{
			?>
			<tr align="justify">
				<td><a href="<?php echo "printrr.php?norr=$hgetrr[norr]"; ?>"><font face="Arial" size="1"><?php echo "$hgetrr[norr]"; ?></font></a></td>
				<td><font face="Arial" size="1"><?php echo Date("d-M-Y", strtotime($hgetrr[tanggal])); ?></font></td>
				<td>
				<?php 
				$wo = "select * from trprhd where nopr ='$hgetrr[nopr]'";
				$qwo= mysql_query($wo);
				$hwo = mysql_fetch_array($qwo);
				?>
				<font face="arial" size="1">
				<a href="<?php echo "printpr.php?nopr=$hgetrr[nopr]"; ?>">
				<?php
				echo "$hwo[nopr]"; 
				?> 
				</a>
				</font>
				</td>
				
				<td><font face="Arial" size="1"><?php echo "$hgetrr[remark]"; ?></font></td>
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