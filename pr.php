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

$no = $_GET['no'];
$stat = $_GET['stat'];
if (!empty($no) and !empty($stat))
{
	$cancelpr = "update trprhd set status = 'CA' where nopr = '$no'";
	mysql_query($cancelpr);
}
else
{

}
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
					<div align="center"><font face="arial" size="3"><b>Part Request</b></font></div>
				</td> 
			</tr>
        </table>
		

		
	</td>
  </tr>
</table>

		<table width="900" align="center">
			<tr>
				<td colspan="7" align="right"><font face="arial" size="1"><a href="trpr.php?no=xxxx">Buka PR</a></font></td>
			</tr>			
			
			<tr align="center" bgcolor="#CCCCCC">
				<th width="10%"><font face="Arial" size="1"><b>Request No</b></font></th>
				<th width="10%"><font face="Arial" size="1"><b>Request Date</b></font></th>
				<th width="10%"><font face="Arial" size="1"><strong>WO No </strong></font></th>
				<th width="15%"><font face="Arial" size="1"><strong>Company </strong></font></th>
				<th width="10%"><font face="Arial" size="1"><b>Receiving No</b></font></th>
				<th width="10%"><font face="Arial" size="1"><b>Remark</b></font></th>	
				<th width="10%"><font face="Arial" size="1"><b>Action</b></font></th>	
			</tr>
			<?php
			$getpr = "select * from trprhd order by tanggal desc";
			$qgetpr = mysql_query($getpr);
			$col=1;
			while ($hgetpr = mysql_fetch_array($qgetpr))
			{
			?>
			<tr align="justify">
				<td><a href="<?php echo "printpr.php?nopr=$hgetpr[nopr]"; ?>"><font face="Arial" size="1"><?php echo "$hgetpr[nopr]"; ?></font></a></td>
				<td><font face="Arial" size="1"><?php echo Date("d-M-Y", strtotime($hgetpr[tanggal])); ?></font></td>
				<td>
				<?php 
				$wo = "select * from trwr where nowr ='$hgetpr[nowr]'";
				$qwo= mysql_query($wo);
				$hwo = mysql_fetch_array($qwo);
				?>
				<font face="arial" size="1">
				<a href="<?php echo "printwr.php?nowr=$hgetpr[nowr]"; ?>">
				<?php
				echo "$hwo[nowr]"; 
				?> 
				</a>
				</font>
				</td>
				<td><font face="Arial" size="1">
				<?php 
				$co = "select * from mscompany where idcompany ='$hwo[idcompany]'";
				$qco= mysql_query($co);
				$hco = mysql_fetch_array($qco);
				echo "$hco[company]"; ?>
				</font>
				</td>
				<td><font face="Arial" size="1">
				<?php
					$getrr = "select * from trrrhd where nopr = '$hgetpr[nopr]'";
					$qgetrr = mysql_query($getrr);
					$ngetrr = mysql_num_rows($qgetrr);
					if ($ngetrr == 0)
					{
						echo "No Record!";
					}
					else
					{
						while ($hgetrr = mysql_fetch_array($qgetrr))
						{
							echo "$hgetrr[norr]<br>";
						}
					}
				 	 
				?>
				
				</font></td>
				<td><font face="Arial" size="1"><?php echo "$hgetpr[remark]"; ?></font></td>
				<td align="center"><font face="Arial" size="1">
				<?php
				if ($hgetpr[status]=='O')
				{
				?>
				| <a href="<?php echo "trrr.php?no=$hgetpr[nopr]"; ?>">Create RR</a> |  <a href="<?php echo "pr.php?no=$hgetpr[nopr]&stat=CA"; ?>">Cancel RR</a> |  
				<?php
				}
				else
				{
					if ($hgetpr[status]=='CA')
					{
						echo "PR Cancel";
					}
					else
					{
						echo "PR Close";
					}
				}
				?>
				</font></td>
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