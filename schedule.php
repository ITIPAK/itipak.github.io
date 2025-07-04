<?php
include "koneksi.php";
session_start();
error_reporting(E_ALL & ~E_NOTICE);
$syncron = "select * from mslogin where idlogin = '$_SESSION[idlog]' and password = '$_SESSION[passwordlog]'";
$qsyncron = mysql_query($syncron);
$hsyncron = mysql_fetch_array($qsyncron);

if ($hsyncron[idtech]=='IT')
{
	$assign = 'Gofur';
}
else
{
	$assign = 'Timbul';
}

//variable===================================
$nowr = $_POST['nowr'];
$dateassign = $_POST['dateassign'];
$sched = $_POST['sched'];
$status = $_POST['status'];


if (!empty($nowr) and !empty($dateassign))
{
	$getwr = "select * from trwr where nowr = '$nowr'";
	$qgetwr = mysql_query($getwr);
	$hgetwr = mysql_fetch_array($qgetwr);
	if ($status=='N')
	{
		$sql = "insert into wrschedule (nowr, date, idcompany, schedule) values ('$nowr', '$dateassign', '$hgetwr[idcompany]', '$sched')";
	}
	else
	{
		$first = $_POST['first'];
		$sql = "update wrschedule set date = '$dateassign', schedule = '$sched' where nowr = '$nowr' and date = '$first'";
	}
	$sql2 = "update trwr set assign='$assign', status='A' where nowr='$nowr'";
	if (mysql_query($sql) and mysql_query($sql2))
	{	
		$getreceipt = "select * from mscompany where idcompany = '$hgetwr[idcompany]'";
		$qgetreceipt = mysql_query($getreceipt);
		$hgetreceipt = mysql_fetch_array($qgetreceipt);
		$receipt = $hgetreceipt[email];
		include "sendmailA.php";
		
	}
}
else
{
}


if ($_SESSION[idlog]=='' and $_SESSION[passwordlog]=='')
{
	header("location:index.php");
}
else
{
$no = $_GET['no'];
$schedule = $_GET['schedule'];
if (!empty($schedule))
{
	$firstdate=$_GET['firstdate'];
	$today = date("Y-m-d", strtotime($firstdate));
	$stat = "R";
}
else
{
	$today = date("Y-m-d");
	$ceksched = "select * from wrschedule where nowr = '$no'";
	$qceksched = mysql_query($ceksched);
	$rceksched = mysql_num_rows($qceksched);
	$schedule = $rceksched+1;
	$stat = "N";
}



$selcompany = "select * from mscompany where idcompany = '$idcompany'";
$qselcompany = mysql_query($selcompany);
?>

<html>
<head>
<title>IT Ticketing</title>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1251">
<link href="style.css" rel="stylesheet" type="text/css">

<link rel="stylesheet" type="text/css" href="tcal.css" />
<script type="text/javascript" src="tcal.js"></script> 
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
					<div align="center"><font face="arial" size="3"><b>Support Schedule</b></font></div><br>
					<table width="100%">
						
					<form method="post" action="schedule.php">
						<tr>
						<?php
							
							
							//echo "$min, $plus, $printmin, $printplus";
							/*?>
							<td width="10%"><font face="arial" size="1">Team Support</font></td>
							<td width="2%"><font face="arial" size="1">:</font></td>
							<td width="25%">
							
							<select name="idtech">
							<option value="IT">IT Support</option>
							<option value="MN">Maintenance</option>
							</select></td>
							<?php
							*/
							
							$periode = date("Y-m");
							$periodemin = strtotime('-1 month', strtotime($periode));
							$periodeplus1 = strtotime('+1 month', strtotime($periode));
							$periodeplus2 = strtotime('+2 month', strtotime($periode));
							$periodeplus3 = strtotime('+3 month', strtotime($periode));
							$min= date("Y-m", $periodemin);
							$plus1= date("Y-m", $periodeplus1);
							$plus2= date("Y-m", $periodeplus2);
							$plus3= date("Y-m", $periodeplus3);
							$printmin= date("M Y", $periodemin);
							$printplus1= date("M Y", $periodeplus1);
							$printplus2= date("M Y", $periodeplus2);
							$printplus3= date("M Y", $periodeplus3);
							?>
							<td width="10%"><font face="arial" size="1">Periode :</font></td>
							<td width="2%"><font face="arial" size="1">:</font></td>
							<td width="25%"><select name="priod">
							<option value="<?php echo "$min"; ?>"><?php echo "$printmin"; ?></option>
							<option value="<?php echo "$periode"; ?>"><?php echo date("M Y", strtotime($periode)); ?></option>
							<option value="<?php echo "$plus1"; ?>"><?php echo "$printplus1"; ?></option>
							<option value="<?php echo "$plus2"; ?>"><?php echo "$printplus2"; ?></option>
							<option value="<?php echo "$plus3"; ?>"><?php echo "$printplus3"; ?></option>			
							</select></td>
							<td><input type="submit" value="Filter Schedule"></td>
						</tr>
					</form>
					</table>
					<br>
					<?php
					$m = date("m");
					$y = date("Y");
					
					
					$maksdate = array(0,31,28,31,30,31,30,31,31,30,31,30,31);
					$mont = array (0,1,2,3,4,5,6,7,8,9,10,11,12);
		
					
					if ($m=='01')
					{
						$maks = '31';
					}
					else if ($m=='02')
					{
						$balance = $y%4;
						if ($balance == '0')
						{
							$maks = '29';
						}
						else
						{
							$maks = '28';
						}
					}
					else if ($m=='03')
					{
						$maks = '31';
					}
					else if ($m=='04')
					{
						$maks = '30';
					}
					else if ($m=='05')
					{
						$maks = '31';
					}
					else if ($m=='06')
					{
						$maks = '30';
					}
					else if ($m=='07')
					{
						$maks = '31';
					}
					else if ($m=='08')
					{
						$maks = '31';
					}
					else if ($m=='09')
					{
						$maks = '30';
					}
					else if ($m=='10')
					{
						$maks = '31';
					}
					else if ($m=='11')
					{
						$maks = '30';
					}
					else if ($m=='12')
					{
						$maks = '31';
					}
					
					$priod = $_POST['priod'];
					$idtech = $_POST['idtech'];
					if(!empty($priod))
					{
						$periode = $priod;
					}
					else
					{
					}
					//echo "$priod, $periode, $idtech";
					?>
					<table width="100%">
						<tr>
							<th colspan="7"><font face="arial" size="1"><b>Schedule for this month</b></font></th>
						</tr>
						
						<tr bgcolor="#999999">
							<th width="2%"><font face="arial" size="1"><b>No.</b></font></th>
							<th width="15%"><font face="arial" size="1"><b>Date</b></font></th>
							<th width="20%"><font face="arial" size="1"><b>Request No</b></font></th>
							<th width="20%"><font face="arial" size="1"><b>Company</b></font></th>
							<th width="15%"><font face="arial" size="1"><b>Request To</b></font></th>
						</tr>
						
						<?php
						
						
									
						
						for ($n=1; $n<=$maks ;$n++)
						{
							$datenow = "$periode-$n";
							$now = date("Y-m-d", strtotime($datenow));
						
								$cekschedule = "select * from wrschedule where date = '$now'";
								$qcekschedule = mysql_query($cekschedule);
								$rcekschedule = mysql_num_rows($qcekschedule);
								
								/*if(!empty($idtech))
								{
									if ($rcekschedule<>0)
									{
										$back = "white";
									}
									else
									{
										$company = "Empty";
										$nowr = "Empty";
										$back = "red";
										$action = "No Schedule!!";
									} 

								}
								else
								{*/
									if ($rcekschedule<>0)
									{
										$back = "white";
											
									}
									else
									{
										$company = "Empty";
										$nowr = "Empty";
										$back = "red";
										$action = "No Schedule!!";
									} 

								//}							
						
							$printdate = date ("D, d-M-Y", strtotime($now));
							$c=1;
							if ($rcekschedule<>0)
							{
								while ($hcekschedule = mysql_fetch_array($qcekschedule))
								{
							
									$company = $hcekschedule[idcompany];
									$nowr = $hcekschedule[nowr];
									//$action = "<a href=assignwr.php?no=$hcekschedule[nowr]&schedule=$hcekschedule[schedule]&firstdate=$hcekschedule[date]>Reschedule</a>";
							?>
							<tr align="justify" bgcolor="<?php echo "$back"; ?>">
								<th><font face="arial" size="1"><?php 
								if ($c==1)
								{
									echo "$n";
								}
								else
								{
								}
								 ?></font></th>
								<th><font face="arial" size="1"><?php
								if ($c==1)
								{
									echo "$printdate";
								}
								else
								{
								}
								 ?></font></th>
								<th><font face="arial" size="1"><?php echo "$nowr"; ?></font></th>
								<?php
								$getcomp = "select * from mscompany where idcompany = '$company'";
								$qgetcomp = mysql_query($getcomp);
								$hgetcomp = mysql_fetch_array ($qgetcomp);
								?>
								
								<th><font face="arial" size="1"><?php echo "$hgetcomp[company]"; ?></font></th>
								<?php
								$gettech = "select * from trwr where nowr = '$nowr'";
								$qgettech = mysql_query($gettech);
								$hgettech = mysql_fetch_array ($qgettech);
								
								$gettech2 = "select * from mstech where idtech = '$hgettech[idtech]'";
								$qgettech2 = mysql_query($gettech2);
								$hgettech2 = mysql_fetch_array ($qgettech2);
								?>
								<th><font face="arial" size="1"><?php echo "$hgettech2[tech]"; ?></font></th>
							
								
							</tr>
							<?php
							$c++;
							}
						}
						else
						{
						?>
						<tr align="justify" bgcolor="<?php echo "$back"; ?>">
								<th><font face="arial" size="1"><?php echo "$n"; ?></font></th>
								<th><font face="arial" size="1"><?php echo "$printdate"; ?></font></th>
								<th><font face="arial" size="1"><?php echo "$nowr"; ?></font></th>
								<th><font face="arial" size="1"><?php echo "$company"; ?></font></th>
								<th><font face="arial" size="1"><?php echo "$action"; ?></font></th>
								
							</tr>
						<?php
						}
					$now = strtotime('+1 day', strtotime($now));
					$now = date("Y-m-d", $now);		
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