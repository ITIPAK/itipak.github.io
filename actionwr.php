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
$nowr = $_POST['nowr'];
$schedule = $_POST['schedule'];
$actdate = $_POST['actdate'];
$action = $_POST['action'];
$close = $_POST['close'];
$reason = $_POST['reason'];

if (!empty($nowr) and !empty($schedule) and !empty($actdate) and !empty($action) and !empty($close))
{
	
	$saveact = "insert into actionwr (nowr, schedule, action, actiondate, close)
		values ('$nowr', '$schedule', '$action', '$actdate', '$close')";
	if (mysql_query($saveact))
	{
	
		if ($close =='Y')
		{
			$updatewr = "update trwr set status='CO', alasan='$reason', closedate='$actdate' where nowr = '$nowr'";
			mysql_query($updatewr);
			header ("location:requestc.php");
		}
		else
		{
			$updatewr = "update trwr set alasan='$reason' where nowr = '$nowr'";
			mysql_query($updatewr);

			header ("location:requestp.php");
		}
	}
	else
	{
	
	}
}
else
{
}

$selcompany = "select * from mscompany where idcompany = '$idcompany'";
$qselcompany = mysql_query($selcompany);
$no = $_GET['no'];
$getwr = "select * from trwr where nowr = '$no'";
$qgetwr = mysql_query($getwr);
$hgetwr = mysql_fetch_array($qgetwr);

$getsched = "select * from wrschedule where nowr = '$no'";
$qgetsched = mysql_query($getsched);
?>

<html>
<head>
<title>IT Ticketing</title>
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
					<div align="center"><font face="arial" size="3"><b>Action of Request</b></font></div><br>
		
		<table border="1" width="750">
		
		<tr>
			<th colspan="6" align="center"><font face="arial" size="2"><b>Request Detail</b></font></th>
		</tr>
		
		<tr>
		  <th width="15%" align="left"><font face="arial" size="1">No Request</font></th><th width="5%" align="justify">:</th> <th width="30%" align="left"><font face="arial" size="1"><?php echo "$hgetwr[nowr]"; ?></font>
		  <th width="15%" align="left"><font face="arial" size="1">Company</font></th><th width="5%" align="justify">:</th> <th width="30%" align="left"><font face="arial" size="1"><?php echo "$hgetwr[idcompany]"; ?></font></th>
		</tr>
		
		<tr>
		  <th width="15%" align="left"><font face="arial" size="1">Request Date</font></th><th width="5%" align="justify">:</th> <th width="30%" align="left"><font face="arial" size="1"><?php echo "$hgetwr[date]"; ?></font></th>
		  <th width="15%" align="left"><font face="arial" size="1">Request to</font></th><th width="5%" align="justify">:</th> <th width="30%" align="left"><font face="arial" size="1"><?php echo "$hgetwr[idtech]"; ?></font></th>
		</tr>
		
		<tr>
		  <th width="15%" align="left"><font face="arial" size="1">CPU Name</font></th><th width="5%" align="justify">:</th> <th width="30%" align="left"><font face="arial" size="1"><?php echo "$hgetwr[idcomputer]"; ?></font></th>
		  <th width="15%" align="left"><font face="arial" size="1">Request By</font></th><th width="5%" align="justify">:</th> <th width="30%" align="left"><font face="arial" size="1"><?php echo "$hgetwr[user]"; ?></font></th>
		</tr>
		
		<tr>
		  <th width="15%" align="left"><font face="arial" size="1">Approve Date</font></th><th width="5%" align="justify">:</th> <th width="30%" align="left"><font face="arial" size="1"><?php echo "$hgetwr[signature]"; ?></font></th>
		  <th width="15%" align="left"><font face="arial" size="1">Approve By</font></th><th width="5%" align="justify">:</th> <th width="30%" align="left"><font face="arial" size="1"><?php echo "$hgetwr[datesignature]"; ?></font></th>
		</tr>
		
		<tr>
		  <th colspan="6"> <font face="arial" size="1">
		  <center>Issue of this Request :</center><br><br>
		  <div align="left"><?php echo "$hgetwr[issue]"; ?></div>
		  </font>
		  </th>
		</tr>
	  </table><br>
	 
	 
	 <table border="1" width="750">
		
		<tr>
			<th colspan="6" align="center"><font face="arial" size="2"><b>Planning Work</b></font></th>
		</tr>
		
		<tr>
		  <th width="15%" align="left"><font face="arial" size="1">Assign By</font></th><th width="5%" align="justify">:</th> <th width="30%" align="left"><font face="arial" size="1"><?php echo "$hgetwr[assign]"; ?></font></th>
		  <th width="15%" align="left"><font face="arial" size="1">Schedule Date</font></th><th width="5%" align="justify">:</th> <th width="30%" align="left"><font face="arial" size="1"><?php 
		  while ($hgetsched = mysql_fetch_array($qgetsched))
		  {
		  	echo "$hgetsched[schedule] - ".date("D, d-M-Y", strtotime($hgetsched[date]))."<br>";
		  }
		 ?></font></th>
		</tr>
	  </table>
	  <br>
	  
	  <table border="1" width="750">
		<form method="post" action="actionwr.php">
		<tr>
			<th colspan="6" align="center"><font face="arial" size="2"><b>Action Work</b></font></th>
		</tr>
		<?php
		$getaction = "select * from actionwr where nowr = '$no' order by schedule desc";
		$qgetaction = mysql_query($getaction);
		$hgetaction = mysql_fetch_array($qgetaction);
		$plandate = "select * from wrschedule where nowr = '$no' order by schedule desc";
		$qplandate = mysql_query($plandate);
		$hplandate = mysql_fetch_array($qplandate);
		?>
		<tr>
		  <th width="15%" align="left"><font face="arial" size="1">Last Planning Date</font></th><th width="5%" align="justify">:</th> <th width="30%" align="left"><font face="arial" size="1"><?php 
		  if ($hplandate[schedule] <> $hgetaction[schedule])
		  {
		  	echo date("D, d-M-Y", strtotime($hplandate[date]));
		  }
		  else
		  {
		  	echo "No Planning";
		  }
		   ?></font></th>
		  <th width="15%" align="left"><font face="arial" size="1">Action Date</font></th><th width="5%" align="justify">:</th> <th width="30%" align="left"><font face="arial" size="1" color="#FF0000"><?php 
		   if ($hplandate[schedule] <> $hgetaction[schedule])
		  {
		  $today = date("Y-m-d H:i:s");
		  ?>
		  <input type="hidden" name="nowr" value="<?php echo "$no"; ?>">
		   <input type="hidden" name="schedule" value="<?php echo "$hplandate[schedule]"; ?>">
		  <input type="hidden" name="actdate" value="<?php echo "$today"; ?>">
		  <input type="text" name="actdate2" value="<?php echo "$today"; ?>" disabled>
		  <?php
		  }
		  else
		  {
		  	echo "Create Planning Date Before Action!";
		  }
		   ?></font>
		 </th>
		</tr>
		
		<tr>
		
		<th width="15%" align="left"><font face="arial" size="1">Issue Reason</font></th><th width="5%" align="justify">:</th> <th width="30%" align="left"><font face="arial" size="1" color="#FF0000">
		<?php 
		   if ($hplandate[schedule] <> $hgetaction[schedule])
		  {
		  ?>
		  <textarea name="reason"><?php echo "$hgetwr[alasan]"; ?></textarea>
		  <?php
		  }
		  else
		  {
		  	echo "Create Planning Date Before Action!";
		  }
		   ?></font>
		 </th>
		 
		 <th width="15%" align="left"><font face="arial" size="1">Action</font></th><th width="5%" align="justify">:</th> <th width="30%" align="left"><font face="arial" size="1" color="#FF0000"><?php 
		   if ($hplandate[schedule] <> $hgetaction[schedule])
		  {
		  ?>
		  <textarea name="action"></textarea>
		  <?php
		  }
		  else
		  {
		  	echo "Create Planning Date Before Action!";
		  }
		   ?></font>
		 </th>
		</tr>	
		<tr>
			<th colspan="2" width="15%" align="left"><font face="arial" size="1">Close WR</font></th><th width="5%" align="justify">:</th> <th width="30%" align="left"><font face="arial" size="1" color="#FF0000"><?php 
		   if ($hplandate[schedule] <> $hgetaction[schedule])
		  {
		  ?>
		  <select name="close">
		  <option value="Y">Yes</option>
		  <option value="N">No</option>
		  </select>
		  <?php
		  }
		  else
		  {
		  	echo "Create Planning Date Before Action!";
		  }
		   ?></font>
		 	</th>
		</tr>	
		<?php
		  if ($hplandate[schedule] <> $hgetaction[schedule])
		  {
		  ?>
		  <tr>
		  <th colspan="6"><input type="submit" value="Save Action"></th>
		  </tr>
		  <?php
		  }
		  else
		  {
		  ?>
		  <tr>
		  <th colspan="6"><font face="arial" size="1" color="#FF0000">Create Planning Date Before Action!</font></th>
		  </tr>
		  <?php
		  	
		  }
		
		?>
		</form>
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