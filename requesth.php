<?php
include "koneksi.php";
session_start();
date_default_timezone_set('Asia/Jakarta');
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

$wr = $_GET['wr'];
$div = $_GET['div'];
if (!empty($wr))
{
	$cekdiv = "select * from msdivisi where iddivisi = '$div'";
	$qcekdiv = mysql_query($cekdiv);
	$hcekdiv = mysql_fetch_array($qcekdiv);
	$hari = date("Y-m-d");
	
	$cekschedule = "select * from wrschedule where nowr = '$wr' order by schedule desc";
	$qcekschedule = mysql_query($cekschedule);
	$rcekschedule = mysql_num_rows($qcekschedule);
	if ($rcekschedule <> 0 )
	{
		$hcekschedule = mysql_fetch_array($qcekschedule);
		$jadwal = $hcekschedule[schedule]+1;
	}
	else
	{
		$jadwal = 1;
	}
	$in = "insert into wrschedule (nowr, date, idcompany, iddivisi, schedule) value ('$wr', '$hari', '$hcekdiv[idcompany]', '$div', '$jadwal')";	
	if (mysql_query($in))
	{
		if ($jadwal=='1')
		{
			$uwr = "update trwr set assign = '$_SESSION[idlog]', status='P' where nowr = '$wr'";
			mysql_query($uwr);
			
		}
		else
		{
		
		}
		header ("location:requestp.php");
	}
	else
	{
	
	}
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
					<div align="center"><font face="arial" size="3"><b>Work Request<br>
					
					</b></font></div>
				</td> 
			</tr>
        </table>
		

		
	</td>
  </tr>
</table>

		<table width="900" align="center">
						
			<tr>
				<td colspan="18" align="right"><font face="arial" size="1"> <a href="scheduleit.php">Print Schedule</a></font></td>
			</tr>
						
			<tr align="center" bgcolor="#CCCCCC">
				<th width="9%"><font face="Arial" size="1"><b>WR No</b></font></th>
				<th width="5%"><font face="Arial" size="1"><b>WR Date</b></font></th>
				<th width="6%"><font face="Arial" size="1"><b>Computer</b></font></th>
				<th width="5%"><font face="Arial" size="1"><b>Request by</b></font></th>
				<th width="5%"><font face="Arial" size="1"><b>Request to</b></font></th>
				<th width="5%"><font face="Arial" size="1"><b>Knowladge</b></font></th>
				<th width="12%"><font face="Arial" size="1"><b>Issues</b></font></th>
				<th width="6%"><font face="Arial" size="1"><b>Status</b></font></th>
				<th width="11%"><font face="Arial" size="1"><b>Action</b></font></th>	
			</tr>
			<?php
			$getwr = "select * from trwr where status = 'O' order by nowr";
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
				
					<td colspan="1"><font face="Arial" size="1"><a href="<?php echo "requesth.php?wr=$hgetwr[nowr]&div=$hgetwr[iddivisi]"; ?>">Pick WR</a></font></td>
				
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