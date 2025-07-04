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
$ip = $_POST['ip'];
$idcpu = $_POST['idcpu'];
$cpu = $_POST['cpu'];
$user = $_POST['user'];
$os = $_POST['os'];
$antivirus = $_POST['antivirus'];
$mobo = $_POST['mobo'];
$idcpu = $_POST['idcpu'];
$proc = $_POST['proc'];
$ram = $_POST['ram'];
$hdd = $_POST['hdd'];
$vga = $_POST['vga'];
$casing = $_POST['casing'];
$monitor = $_POST['monitor'];
$printer = $_POST['printer'];
$keyboard = $_POST['keyboard'];
$mouse = $_POST['mouse'];
$other = $_POST['other'];
$divisi = $_POST['divisi'];
$remark = $_POST['remark'];
$user = $_POST['user'];
$expired = $_POST['expired'];
$statedit = $_POST['statedit'];


$now = Date("Y-m-d");

$delete = $_GET['delete'];
$iddelete = $_GET['iddelete'];

if (!empty($idcpu) and !empty($cpu) and !empty($mobo) and !empty($proc) and !empty($ram) and !empty($hdd) and !empty($vga) and !empty($casing) and !empty($monitor) and !empty($printer) and
!empty($keyboard) and !empty($mouse) and !empty($other) and !empty($divisi))
{
	if ($statedit=='1')
	{
		$sql = "UPDATE mscomputer SET
				ipaddress = '$ip',
				computer = '$cpu',
				user = '$user',
				motherboard = '$mobo',
				os = '$os',
				antivirus = '$antivirus',
				processor = '$proc',
				ram = '$ram',
				hdd = '$hdd',
				vga = '$vga',
				casing = '$casing',
				monitor = '$monitor',
				printer = '$printer',
				keyboard = '$keyboard',
				mouse = '$mouse',
				other = '$other',
				iddivisi = '$divisi',
				remark = '$remark',
				updatedate = '$now',
				expired = '$expired'
				
				WHERE idcomputer = '$idcpu'";
	}
	else
	{
		$sql = "INSERT INTO mscomputer 
		(idcomputer, 
		ipaddress, 
		computer,
		user, 
		motherboard, 
		os, 
		antivirus, 
		processor, 
		ram, 
		hdd, 
		vga, 
		casing, 
		monitor, 
		printer, 
		keyboard, 
		mouse, 
		other, 
		iddivisi, 
		remark, 
		date, 
		expired)
		VALUES 
		('$idcpu', 
		'$ip', 
		'$cpu',
		'$user', 
		'$mobo', 
		'$os', 
		'$antivirus', 
		'$proc', 
		'$ram', 
		'$hdd', 
		'$vga', 
		'$casing', 
		'$monitor', 
		'$printer', 
		'$keyboard', 
		'$mouse', 
		'$other', 
		'$divisi', 
		'$remark', 
		'$now', 
		'$expired')";
	}
}
else
{
}	
if (mysql_query($sql))
{
	$message = "Command Succesfull!!";
}
else
{
}


?>

<?php
$selcompany = "select * from mscompany where idcompany = '$idcompany'";
$qselcompany = mysql_query($selcompany);
?>

<html>
<head>
<title>IT Ticketing - Data of CPU</title>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1251">
<link href="style.css" rel="stylesheet" type="text/css">
</head>
<body bgcolor="#FFFFFF" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
<table width="900" border="0" align="center" cellpadding="0" cellspacing="0" align="center">
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
					<div align="center"><font face="arial" size="3"><b>List of CPU</b></font></div>
					<table width="100%" align="center">
						<tr>
							<td colspan="16" align="center"><font face="arial" size="2" color="#0000FF"><b><?php echo "$message"; ?></b></font></td>
							<td colspan="8" align="center"><font face="arial" size="1"><div align="right"><a href="addcpu.php">Add Computer</a>
							</div></font></td>
						</tr>
					<?php
						$com = "select * from mscompany where active='Y' order by idcompany";
						$qcom = mysql_query($com);
						while ($hcom = mysql_fetch_array($qcom))
						{
					?>
						<tr bgcolor="#999999">
								<th colspan="24" align="center">
								<font face="arial" size="3"><b><?php echo "$hcom[company]"; ?></b></font>
								</th>
						</tr>
						
						<tr bgcolor="#999999" align="center">
								<th colspan="12" align="center"><a href="<?php echo "cetakcpu.php?company=$hcom[idcompany]"; ?>">
								<font face="arial" size="1"><b>Print List CPU</b></font>
								</a></th>
								
								<th colspan="12" align="center">
								<font face="arial" size="1"><b>
								<form method="get" action="riwayatcpu.php">	
								<input type="hidden" name="company" value="<?php echo "$hcom[idcompany]"; ?>">							
							Print Riwayat Perbaikan : 
								<?php 
									$periode = date("Y-m");
									$periodemin1 = strtotime('-1 month', strtotime($periode));
									$periodemin2 = strtotime('-2 month', strtotime($periode));
									$periodemin3 = strtotime('-3 month', strtotime($periode));
									$periodemin4 = strtotime('-4 month', strtotime($periode));
									$periodemin5 = strtotime('-5 month', strtotime($periode));
									$periodemin6 = strtotime('-6 month', strtotime($periode));
									$periodemin7 = strtotime('-7 month', strtotime($periode));
									$min1= date("Y-m", $periodemin1);
									$min2= date("Y-m", $periodemin2);
									$min3= date("Y-m", $periodemin3);
									$min4= date("Y-m", $periodemin4);
									$min5= date("Y-m", $periodemin5);
									$min6= date("Y-m", $periodemin6);
									$min7= date("Y-m", $periodemin7);
									$printmin1= date("M Y", $periodemin1);
									$printmin2= date("M Y", $periodemin2);
									$printmin3= date("M Y", $periodemin3);
									$printmin4= date("M Y", $periodemin4);
									$printmin5= date("M Y", $periodemin5);
									$printmin6= date("M Y", $periodemin6);
									$printmin7= date("M Y", $periodemin7);
									
								?>
							<select name="priod" onChange="submit()">
							<option value="<?php echo "$periode"; ?>"><?php echo date("M Y", strtotime($periode)); ?></option>
							<option value="<?php echo "$min1"; ?>"><?php echo "$printmin1"; ?></option>
							<option value="<?php echo "$min2"; ?>"><?php echo "$printmin2"; ?></option>
							<option value="<?php echo "$min3"; ?>"><?php echo "$printmin3"; ?></option>
							<option value="<?php echo "$min4"; ?>"><?php echo "$printmin4"; ?></option>
							<option value="<?php echo "$min5"; ?>"><?php echo "$printmin5"; ?></option>
							<option value="<?php echo "$min6"; ?>"><?php echo "$printmin6"; ?></option>
							<option value="<?php echo "$min7"; ?>"><?php echo "$printmin7"; ?></option>
							
							</select>
							</form>
								</b></font>
								</th>
						</tr>
						
						<tr bgcolor="#666666">
							<th><font face="arial" size="1"><b>Address<br>IP</b></font></th>
							<th><font face="arial" size="1"><b>Computer<br>ID</b></font></th>
							<th><font face="arial" size="1"><b>Computer<br>Name</b></font></th>
							<th><font face="arial" size="1"><b>User</b></font></th>
							<th><font face="arial" size="1"><b>Operating System</b></font></th>
							<th><font face="arial" size="1"><b>Anti Virus</b></font></th>
							<th><font face="arial" size="1"><b>Expired Anti Virus</b></font></th>
							<th><font face="arial" size="1"><b>Motherboard</b></font></th>
							<th><font face="arial" size="1"><b>Processor</b></font></th>
							<th><font face="arial" size="1"><b>RAM</b></font></th>
							<th><font face="arial" size="1"><b>Harddisk</b></font></th>
							<th><font face="arial" size="1"><b>VGA<br>Card</b></font></th>
							<th><font face="arial" size="1"><b>Casing</b></font></th>
							<th><font face="arial" size="1"><b>Monitor</b></font></th>
							<th><font face="arial" size="1"><b>Printer</b></font></th>
							<th><font face="arial" size="1"><b>Keyboard</b></font></th>
							<th><font face="arial" size="1"><b>Mouse</b></font></th>
							<th><font face="arial" size="1"><b>Other</b></font></th>
							<th><font face="arial" size="1"><b>Remark</b></font></th>
							<th><font face="arial" size="1"><b>Create Date</b></font></th>
							<th><font face="arial" size="1"><b>Last<br>Update / Maintenance</b></font></th>
							<th colspan="3"><font face="arial" size="1"><b>Action</b></font></th>
						</tr>
						<?php
						$div = "select * from msdivisi where idcompany = '$hcom[idcompany]' and utama = 'Y' order by iddivisi";
						$qdiv = mysql_query($div);
						while ($hdiv=mysql_fetch_array($qdiv))
						{	
						?>
							<tr>
								<th colspan="24" align="justify">
								<font face="arial" size="2"><?php echo "$hdiv[divisi]"; ?></font>
								</th>
							</tr>
						<?php
							$mscpu = "select * from mscomputer where iddivisi='$hdiv[iddivisi]' and aktif = 'Y' order by ipaddress";
							$qmscpu = mysql_query($mscpu);
							while ($hmscpu = mysql_fetch_array($qmscpu))
							{
							
								?>
								<tr bgcolor="#CCCCCC">
									<td align="justify"><font face="arial" size="1"><?php echo "$hmscpu[ipaddress]"; ?></font></td>	
									<td align="justify"><font face="arial" size="1"><?php echo "$hmscpu[idcomputer]"; ?></font></td>
									<td align="justify"><font face="arial" size="1"><?php echo "$hmscpu[computer]"; ?></font></td>
									<td align="justify"><font face="arial" size="1"><?php echo "$hmscpu[user]"; ?></font></td>
									<td align="justify"><font face="arial" size="1"><?php echo "$hmscpu[os]"; ?></font></td>
									<td align="justify"><font face="arial" size="1"><?php echo "$hmscpu[antivirus]"; ?></font></td>
									<td align="justify"><font face="arial" size="1"><?php echo "$hmscpu[expired]"; ?></font></td>
									<td align="justify"><font face="arial" size="1"><?php echo "$hmscpu[motherboard]"; ?></font></td>
									<td align="justify"><font face="arial" size="1"><?php echo "$hmscpu[processor]"; ?></font></td>
									<td align="justify"><font face="arial" size="1"><?php echo "$hmscpu[ram]"; ?></font></td>
									<td align="justify"><font face="arial" size="1"><?php echo "$hmscpu[hdd]"; ?></font></td>
									<td align="justify"><font face="arial" size="1"><?php echo "$hmscpu[vga]"; ?></font></td>
									<td align="justify"><font face="arial" size="1"><?php echo "$hmscpu[casing]"; ?></font></td>
									<td align="justify"><font face="arial" size="1"><?php echo "$hmscpu[monitor]"; ?></font></td>
									<td align="justify"><font face="arial" size="1"><?php echo "$hmscpu[printer]"; ?></font></td>
									<td align="justify"><font face="arial" size="1"><?php echo "$hmscpu[keyboard]"; ?></font></td>
									<td align="justify"><font face="arial" size="1"><?php echo "$hmscpu[mouse]"; ?></font></td>
									<td align="justify"><font face="arial" size="1"><?php echo "$hmscpu[other]"; ?></font></td>
									<td align="justify"><font face="arial" size="1"><?php echo "$hmscpu[remark]"; ?></font></td>
									<td align="justify"><font face="arial" size="1"><?php echo Date("d-M-y",strtotime($hmscpu[date])); ?></font></td>
									<td align="justify"><font face="arial" size="1"><?php echo Date("d-M-y",strtotime($hmscpu[updatedate])); ?></font></td>
									<td align="justify"><font face="arial" size="1"><a href="<?php echo "addcpu.php?edit=1&idedit=$hmscpu[idcomputer]"; ?>">Edit</a></font></td>
									<td align="justify"><font face="arial" size="1"><a href="<?php echo "disscpu.php?idcpu=$hmscpu[idcomputer]"; ?>">Change To Part</a></font></td>
									<td align="justify"><font face="arial" size="1"><a href="<?php echo "history.php?id=$hmscpu[idcomputer]&company=$hcom[idcompany]"; ?>">History Perbaikan</a></font></td>									
								</tr>
							<?php
							}
							
						}
						?>
								<tr>
									<td colspan="23"><br></td>
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