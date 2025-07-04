	<?php
include "koneksi.php";
session_start();
error_reporting(E_ALL & ~E_NOTICE);
$syncron = "select * from mslogin where idlogin = '$_SESSION[idlog]' and password = '$_SESSION[passwordlog]'";
$qsyncron = mysql_query($syncron);
$hsyncron = mysql_fetch_array($qsyncron);
date_default_timezone_set('Asia/Jakarta');
if ($_SESSION[idlog]=='' and $_SESSION[passwordlog]=='')
{
	header("location:index.php");
}
else
{

$selcompany = "select * from mscompany where idcompany = '$idcompany'";
$qselcompany = mysql_query($selcompany);

$nowr = $_POST['nowr'];
$date = $_POST['date'];
$simpan = $_POST['simpan'];
$idcomputer = $_POST['idcomputer'];
$request = $_POST['request'];
$divisi = $_POST['divisi'];
$idtech = $_POST['idtech'];
$issue = $_POST['issue'];
$statin = $_POST['statin'];
$statedit = $_POST['statedit'];
$wr = $_POST['wr'];
$idcom = $hsyncron[idcompany];

$no = $_GET['no'];

$getcompany = "select * from mscompany where idcompany = '$idcom'";
$qgetcompany = mysql_query($getcompany);
$hgetcompany = mysql_fetch_array($qgetcompany);
$idapp = $hgetcompany[idcompany];
//$leader = "select * from mscompanyld where idcompany='$idcom' and leader = '$sign'";
//$qleader = mysql_query($leader);
//$hleader = mysql_fetch_array($qleader);
$passapp = $hleader[pin];

//echo "$nowr, $date, $idcomputer, $request, $idtech, $issue";
if (!empty($nowr) and !empty($date) and !empty($idcomputer) and !empty($request) and !empty($idtech) and !empty($issue) and !empty($divisi))
{
$getdivisi = "select * from msdivisi where iddivisi = '$divisi'";
$qgetdivisi = mysql_query($getdivisi);
$hgetdivisi = mysql_fetch_array($qgetdivisi);
if (!preg_match("/^[a-zA-Z .]*$/",$request)) 
{
	$pes = "Nama Request Tidak boleh Angka atau Symbol!!";
}
else
{
	if (!empty(wr))
	{
		if ($statedit=='1')
		{
	
			$sql = "update trwr set idcomputer = '$idcomputer', iddivisi='$divisi', signature='$hgetdivisi[leader]', idtech = '$idtech', user =  '$request', issue =  '$issue' where nowr = '$nowr'";
			
			if(mysql_query($sql))
			{	
				$judul = "Work Request Edited";
				$subject = "Work Request IT Edited";
				$status="O";
				$maillead = "select email from msdivisi where idcompany = '$idcom' and iddivisi = '$divisi'";
				$qmaillead = mysql_query($maillead);
				$hmaillead = mysql_fetch_array($qmaillead);
				$tech1 = "select * from mstech where idtech = '$idtech'";
				$qtech1 = mysql_query($tech1);
				$htech1 = mysql_fetch_array($qtech1);
				include "sendmailH.php";
				
			}
			else
			{
		
			}
		
		}
		else
		{
			
			$sql = "insert into trwr (nowr, date, idcomputer, idtech, user, idcompany, issue, iddivisi, signature, status) 
			values ('$nowr', '$date', '$idcomputer', '$idtech', '$request', '$idcom', '$issue', '$divisi', '$hgetdivisi[leader]','O')";
			
			if(mysql_query($sql))
			{	
				$judul = "New Work Request";
				$subject = "New Work Request IT";
				$maillead = "select email from msdivisi where idcompany = '$idcom' and iddivisi = '$divisi'";
				$qmaillead = mysql_query($maillead);
				$hmaillead = mysql_fetch_array($qmaillead);
				$status="O";
				
				$tech1 = "select * from mstech where idtech = '$idtech'";
				$qtech1 = mysql_query($tech1);
				$htech1 = mysql_fetch_array($qtech1);
				
				include "sendmailH.php";
				
				
				$tech2 = "select * from mslogin where idtech = '$idtech'";
				$qtech2 = mysql_query($tech2);
				
				while ($htech2 = mysql_fetch_array($qtech2))
				{
					include "sendmailH2.php";
				}
				header ("location:wr.php");
				
			}
			else
			{
		
			}
		}
	
	}
	else
	{
		
	}
}
}
else
{
	if (!empty($simpan))
	{
		$mess = "All Field must be fill!!";
	}
	else
	{
	
	}
}







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
					<div align="center"><font face="arial" size="3"><b>Work Request</b></font></div>
					
				</td> 
			</tr>
        </table>
		

		
	</td>
  </tr>
</table>

		<table width="780" align="center">
		<center>
		<font face="arial" size="1" color="#FF0000"><?php echo "$mess"; ?></font>
		
		</center>				
		<form method="post" action="addwr2.php">
		<?php
			if (!empty($no))
			{
				
				$getwr = "select * from trwr where nowr = '$no'";
				$qgetwr = mysql_query($getwr);
				$hgetwr = mysql_fetch_array($qgetwr);
				$newno = $hgetwr[nowr];
				$printdate = $hgetwr[date];
				$idcom1 = $hgetwr[idcomputer];
				$getcpu = "select * from mscomputer where idcomputer = '$idcom1'";
				$qgetcpu = mysql_query($getcpu);
				$hgetcpu = mysql_fetch_array($qgetcpu);
				$com1 = $hgetcpu[computer];
				$request = $hgetwr[user];
				$issue = $hgetwr[issue];
				$idto1 = $hgetwr[idtech];
				$lead = $hgetwr[signature];
				$idlead = $hgetwr[iddivisi];
				$gettech = "select * from mstech where idtech = '$idto1'";
				$qgettech = mysql_query($gettech);
				$hgettech = mysql_fetch_array($qgettech);
				$to1 = $hgettech[tech];
				$nowdate = date("D, d-M-Y", strtotime($printdate));
		?>
			<input type="hidden" name="statedit" value="1">
		<?php
			}
			else
			{
				$nowdate = date("D, d-M-Y");
				$code = "WR";
				$idcom1 = "";
				$com1 = "== CPU ==";
				$printdate = date("Y-m-d H:i:s");
				$printdate2 = "2015-05-07";
				$getalias  = "select alias from mscompany where idcompany = '$idcom'";
				$qgetalias = mysql_query($getalias);
				$hgetalias = mysql_fetch_array($qgetalias);
				$alias = $hgetalias[alias];
				$year = date("Y");
				$month = date ("m");
				$begin = "$code$alias/$year-$month/";
				$cekno = "select * from trwr where nowr like '%$begin%'";
				$qcekno = mysql_query($cekno);
				$rcekno = mysql_num_rows($qcekno);
				$rcekno++;
				$request = "";
				$issue = "";
				$idto1 ="";
				$idlead = "";
				$lead = "=Sign by=";
				$to1 = "= Request =";
				
				
				if ($rcekno <10)
				{
					$zero = "000";
				}
				else if ($rcekno <100)
				{
					$zero = "00";
				}
				else if ($rcekno <100)
				{
					$zero = "0";
				}
				else if ($rcekno <1000)
				{
					$zero = "";
				}
				$nextno = "$zero$rcekno";
				$newno = "$begin$nextno";
			}
			
		
		?>
			
			<tr valign="middle" align="center">
				<td colspan="6"><br><br>
					<input type="hidden" name="statin" value="1">
					<input type="hidden" name="nowr2" value="<?php echo "$newno"; ?>">
					<input type="text" name="nowr" value="<?php echo "$newno"; ?>"> <br><br>

				</td>
			</tr>
			
			<tr align="justify">	
				<th><font face="Arial" size="1"><b>WR Date</b></font></th> <th><font face="Arial" size="1"><b>:</b></font></th> <td><input type="hidden" name="date2" value="<?php echo "$printdate"; ?>"><input type="text" name="date" value="<?php echo "$printdate"; ?>"></td> 	
				<th><font face="Arial" size="1"><b>Computer</b></font></th> <th><font face="Arial" size="1"><b>:</b></font></th> 
					<td>
						<select name="idcomputer">
							<option value="<?php echo "$idcom1"; ?>"><?php echo "$com1"; ?></option>
							<?php
								
									$getcpu = "select * from mscomputer where aktif ='Y' order by iddivisi";
									$qgetcpu = mysql_query($getcpu);
									while ($hgetcpu = mysql_fetch_array($qgetcpu))
									{
							?>
									<option value="<?php echo "$hgetcpu[idcomputer]"; ?>"><?php echo "$hgetcpu[computer]"; ?></option>
							<?php
									}
								
							?>
						</select>
					</td> 
			</tr>
			
			<tr align="justify"> 
				
				<th><font face="Arial" size="1"><b>Sign by</b></font></th> <th><font face="Arial" size="1"><b>:</b></font></th> 
					<td>
						
						<select name="divisi">
						<?php 
						if (!empty($divisi))
						{
							$lead1 = "select * from msdivisi where idcompany = '$idcom' and iddivisi = '$divisi'";
							$qlead1 = mysql_query($lead1);
							$hlead1 = mysql_fetch_array($qlead1);
						?>	
							<option value="<?php echo "$divisi"; ?>"><?php echo "$divisi / $hlead1[leader]"; ?></option>
						<?php
						}
						else
						{
							if ($no=="")
							{
						?>	
							<option value="<?php echo "$idlead"; ?>"><?php echo "$lead"; ?></option>
						<?php 
							}
							else
							{
						?>	
							<option value="<?php echo "$idlead"; ?>"><?php echo "$idlead / $lead"; ?></option>
						<?php 
							}
						}
								$lead = "select * from msdivisi where idcompany = '$idcom' order by iddivisi";
								$qlead = mysql_query($lead);
								while ($hlead = mysql_fetch_array($qlead))
								{
							?>
								<option value="<?php echo "$hlead[iddivisi]"; ?>"><?php echo "$hlead[iddivisi] / $hlead[leader]"; ?></option>
							<?php
							}
							?>
						</select>
					</td>
				<th><font face="Arial" size="1"><b>Request to</b></font></th> <th><font face="Arial" size="1"><b>:</b></font></th> 
					<td>
						<select name="idtech">
							<option value="<?php echo "$idto1"; ?>"><?php echo "$to1"; ?></option>
							<?php 
								$tech = "select * from mstech where active ='Y' order by idtech";
								$qtech = mysql_query($tech);
								while ($htech = mysql_fetch_array($qtech))
								{
							?>
								<option value="<?php echo "$htech[idtech]"; ?>"><?php echo "$htech[tech]"; ?></option>
							<?php
							}
							?>
						</select>
					</td> 
			</tr>
			
			<tr align="justify">
				<th><font face="Arial" size="1"><b>Request by</b></font></th> <th><font face="Arial" size="1"><b>:</b></font></th> <td><input type="text" name="request" value="<?php echo "$request"; ?>"><br>
				<font face="arial" size="1" color="#FF0000"><?php echo "$pes"; ?></font></td>
				<th><font face="Arial" size="1"><b>Issues</b></font></th> <th><font face="Arial" size="1"><b>:</b></font></th> <td><textarea name="issue" rows="4"><?php echo "$issue"; ?></textarea> </td> 
				
			
			<tr align="justify">
				<th colspan="3" align="right"><input name="simpan" type="submit" value="Save" name="wr"> </th></form> <form action="wr.php"><th colspan="3" align="left"> <input type="submit" value="Cancel"></a></th> 
			</tr>
				
		</form>
					</table>
	<?php
		include "bawah.php";
	?>
</body>
</html>

<?php
}
?>