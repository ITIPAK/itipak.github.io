<?php
include "koneksi.php";
session_start();

$syncron = "select * from mslogin where idlogin = '$_SESSION[idlog]' and password = '$_SESSION[passwordlog]'";
$qsyncron = mysql_query($syncron);
$hsyncron = mysql_fetch_array($qsyncron);

$assign = $hsyncron[idlogin];


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
		$getcomp = "select * from mscompany where idcompany = '$hgetwr[idcompany]'";
		$qgetcomp = mysql_query($getcomp);
		$hgetcomp = mysql_fetch_array($qgetcomp);
		$getreceipt = "select * from msdivisi where idcompany = '$hgetwr[idcompany]' and iddivisi = '$hgetwr[iddivisi]'";
		$qgetreceipt = mysql_query($getreceipt);
		$hgetreceipt = mysql_fetch_array($qgetreceipt);
		$gettech = "select * from mstech where idtech = '$hgetwr[idtech]'";
		$qgettech = mysql_query($gettech);
		$hgettech = mysql_fetch_array($qgettech);
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
					<div align="center"><font face="arial" size="3"><b>Work Request Assign</b></font></div><br>
					<table width="100%">
						<tr>
						<td align="center" colspan="4"><font face="arial" size="1">WR No :<br><strong><?php echo "$no" ?></strong></font><br></td>
						</tr>
					<form method="post" action="assignwr.php">
						<tr>
							<input type="hidden" name="nowr" value="<?php echo "$no" ?>">
							<input type="hidden" name="sched" value="<?php echo "$schedule" ?>">
							<input type="hidden" name="first" value="<?php echo "$firstdate" ?>">
							<input type="hidden" name="status" value="<?php echo "$stat" ?>">
							<td width="10%"><font face="arial" size="1">Planning Date</font></td>
							<td width="2%"><font face="arial" size="1">:</font></td>
							<td width="25%"><input name="dateassign" type="text" value="<?php echo "$today"; ?>" class="tcal"/></td>
							<td><input type="submit" value="Assign WR"></td>
						</tr>
					</form>
					</table>
					<br>
					<table width="100%">
						<tr>
							<th colspan="7"><font face="arial" size="1"><b>Schedule for 15 Days</b></font></th>
						</tr>
						
						<tr bgcolor="#999999">
							<th><font face="arial" size="1"><b>No.</b></font></th>
							<th><font face="arial" size="1"><b>Date</b></font></th>
							<th><font face="arial" size="1"><b>Company</b></font></th>
							<th><font face="arial" size="1"><b>Request No</b></font></th>
							<th><font face="arial" size="1"><b>Action</b></font></th>
							
						</tr>
						
						<?php
						$now = date("Y-m-d");
						
									
						
						for ($n=1; $n<=15 ;$n++)
						{
						
								$cekschedule = "select * from wrschedule where date = '$now'";
								$qcekschedule = mysql_query($cekschedule);
								$rcekschedule = mysql_num_rows($qcekschedule);
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
							
						
							$printdate = date ("D, d-M-Y", strtotime($now));
							$c=1;
							if ($rcekschedule<>0)
							{
								while ($hcekschedule = mysql_fetch_array($qcekschedule))
								{
							
									$company = $hcekschedule[idcompany];
									$nowr = $hcekschedule[nowr];
									$action = "<a href=assignwr.php?no=$hcekschedule[nowr]&schedule=$hcekschedule[schedule]&firstdate=$hcekschedule[date]>Reschedule</a>";
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
								<th><font face="arial" size="1"><?php echo "$company"; ?></font></th>
								<th><font face="arial" size="1"><?php echo "$nowr"; ?></font></th>
								<th><font face="arial" size="1"><?php echo "$action"; ?></font></th>
								
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
								<th><font face="arial" size="1"><?php echo "$company"; ?></font></th>
								<th><font face="arial" size="1"><?php echo "$nowr"; ?></font></th>
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