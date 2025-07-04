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
					<div align="center"><font face="arial" size="3"><b>Work Request</b></font></div>
				</td> 
			</tr>
        </table>
		

		
	</td>
  </tr>
</table>

		<table width="900" align="center">
						
			<tr>
				<td colspan="16" align="right"><font face="arial" size="1"><a href="addwr.php">Create Work Request</a></font></td>
			</tr>
						
			<tr align="center" bgcolor="#CCCCCC">
				<th width="9%"><font face="Arial" size="1"><b>WR No</b></font></th>
				<th width="5%"><font face="Arial" size="1"><b>WR Date</b></font></th>
				<th width="6%"><font face="Arial" size="1"><b>Computer</b></font></th>
				<th width="5%"><font face="Arial" size="1"><b>Request by</b></font></th>
				<th width="5%"><font face="Arial" size="1"><b>Request to</b></font></th>
				<th width="5%"><font face="Arial" size="1"><b>Knowladge</b></font></th>
				<th width="12%"><font face="Arial" size="1"><b>Issues</b></font></th>
				<th width="6%"><font face="Arial" size="1"><b>Assign By</b></font></th>
				<th width="12%"><font face="Arial" size="1"><b>Solution</b></font></th>
				<th width="6%"><font face="Arial" size="1"><b>Solution Date</b></font></th>
				<th width="6%"><font face="Arial" size="1"><b>Status</b></font></th>
				<th width="6%"><font face="Arial" size="1"><b>Closed / Cancel Date</b></font></th>
				<th width="6%"><font face="Arial" size="1"><b>Relation</b></font></th>	
				<th width="11%" colspan="2"><font face="Arial" size="1"><b>Action</b></font></th>	
			</tr>
			<?php
			$getwr = "select * from trwr where idcompany = '$hsyncron[idcompany]' order by date asc";
			$qgetwr = mysql_query($getwr);
			$col=1;
			while ($hgetwr = mysql_fetch_array($qgetwr))
			{
			?>
			<tr align="justify">
				<td><a href="<?php echo "printwr.php?nowr=$hgetwr[nowr]"; ?>"><font face="Arial" size="1"><?php echo "$hgetwr[nowr]"; ?></font></a></td>
				<td><font face="Arial" size="1"><?php echo Date("d-M-Y H:s:i", strtotime($hgetwr[date])); ?></font></td>
				<td><font face="Arial" size="1"><?php 
				$cpu = "select * from mscomputer where idcomputer ='$hgetwr[idcomputer]'";
				$qcpu= mysql_query($cpu);
				$hcpu = mysql_fetch_array($qcpu);
				echo "$hcpu[computer]"; ?></font></td>
				<td><font face="Arial" size="1"><?php echo "$hgetwr[user]"; ?></font></td>
				<td><font face="Arial" size="1"><?php 
				$to = "select * from mstech where idtech ='$hgetwr[idtech]'";
				$qto= mysql_query($to);
				$hto = mysql_fetch_array($qto);
				echo "$hto[tech]"; ?></font></td>
				<td><font face="Arial" size="1"><?php echo "$hgetwr[signature]"; ?></font></td>
				<td><font face="Arial" size="1"><?php echo "$hgetwr[issue]"; ?></font></td>
				<td><font face="Arial" size="1"><?php echo "$hgetwr[assign]"; ?></font></td>
				<td><font face="Arial" size="1">
				<?php 
				$act1 = "select * from actionwr where nowr = '$hgetwr[nowr]' order by schedule";
				$qact1 = mysql_query($act1);
				while ($hact1 = mysql_fetch_array($qact1))
				{
				echo "$hact1[schedule] - $hact1[action]<br>"; 
				}
				?>
				</font></td>
				<td><font face="Arial" size="1">
				<?php 
				$act1 = "select * from actionwr where nowr = '$hgetwr[nowr]' order by schedule";
				$qact1 = mysql_query($act1);
				while ($hact1 = mysql_fetch_array($qact1))
				{
				echo "$hact1[actiondate]<br>"; 
				}
				?>
				</font></td>
				<td><font face="Arial" size="1"><?php 
				if ($hgetwr[status]=='O')
				{
					$status="Open";
				} 
				else if ($hgetwr[status]=='CO')
				{
					$status="Closed";
				}
				else if ($hgetwr[status]=='CA')
				{
					$status="Cancel";
				}
				
				echo "$status"; ?></font></td>
				<td><font face="Arial" size="1"><?php echo "$hgetwr[closedate]"; ?></font></td>
				<td><font face="Arial" size="1"><?php echo "No Relation"; ?></font></td>
				<?php				
				if ($hgetwr[status]=='O')
				{
				?>	
					<td><font face="Arial" size="1"><a href="<?php echo "addwr.php?no=$hgetwr[nowr]"; ?>">Edit</a></font></td>
					<td><font face="Arial" size="1"><a href="<?php echo "cancelwr.php?cancel=1&no=$hgetwr[nowr]"; ?>">Cancel</a></font></td>
				<?php	
				} 
				else if ($hgetwr[status]=='CA' or $hgetwr[status]=='CO')
				{
				?>	
					<td colspan="2"><font face="Arial" size="1">No Action</font></td>
				<?php	

				}
				?>
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