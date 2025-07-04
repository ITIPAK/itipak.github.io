<?php
include "koneksi.php";
$no = $_GET['nowr'];
if (!empty($no))
{
$getwr = "select * from trwr where nowr = '$no'";
$qgetwr = mysql_query($getwr);
$hgetwr = mysql_fetch_array($qgetwr);

$company = "select * from mscompany where idcompany = '$hgetwr[idcompany]'";
$qcompany = mysql_query($company);
$hcompany = mysql_fetch_array($qcompany);

$tech = "select * from mstech where idtech = '$hgetwr[idtech]'";
$qtech = mysql_query($tech);
$htech = mysql_fetch_array($qtech);
 
$cpu = "select * from mscomputer where idcomputer = '$hgetwr[idcomputer]'";
$qcpu = mysql_query($cpu);
$hcpu = mysql_fetch_array($qcpu);


?>
<div align="justify">
<table border="0" width="500">
	<tr>
		<td align="right"><font face="arial" size="1"><strong>FO.IT.03.00</strong></font></td>
	</tr>
</table>

<table width="500" border="2">
	<tr>
		<th colspan="5">
			<table align="left" width="100%">
				<tr align="justify">
					<th width="20%"><font face="arial" size="1"><strong>Request No.</strong></font></th>
					<th width="1%"><font face="arial" size="1"><strong>:</strong></font></th>
					<td width="36%"><font face="arial" size="1"><?php echo "$no"; ?></font></td>
					
					<th width="13%"><font face="arial" size="1"><strong>Company</strong></font></th>
					<th width="1%"><font face="arial" size="1"><strong>:</strong></font></th>
					<td width="30%"><font face="arial" size="1"><?php echo "$hcompany[company]"; ?></font></td>
				</tr>
				
				<tr align="justify">
					<th width="20%"><font face="arial" size="1"><strong>Request Date.</strong></font></th>
					<th width="1%"><font face="arial" size="1"><strong>:</strong></font></th>
					<td width="36%"><font face="arial" size="1"><?php $printdate = date("l, d F Y", strtotime($hgetwr[date])); echo "$printdate"; ?></font></td>
					
					<th width="13%"><font face="arial" size="1"><strong>Request to</strong></font></th>
					<th width="1%"><font face="arial" size="1"><strong>:</strong></font></th>
					<td width="30%"><font face="arial" size="1"><?php echo "$htech[tech]"; ?></font></td>
				</tr>
				
				<tr align="justify">
					<th width="20%"><font face="arial" size="1"><strong>Computer Name</strong></font></th>
					<th width="1%"><font face="arial" size="1"><strong>:</strong></font></th>
					<td width="36%"><font face="arial" size="1"><?php echo "$hcpu[computer]"; ?></font></td>
				</tr>
			</table>
		</th>
	</tr>
	
	<tr>
		<th width="20%" height="10"><font face="arial" size="1"><strong>Request by</strong></font></th>
		<th width="20%" height="10"><font face="arial" size="1"><strong>Approve by</strong></font></th>
		<th width="20%" rowspan="2" colspan="2"><font face="arial" size="7"><strong>WR</strong></font></th>
		<th width="40%" height="10"><font face="arial" size="1"><strong>Action By</strong></font></th>
	</tr>
	
	<tr align="center">
		<td width="20%" height="45" valign="bottom"><font face="arial" size="1"><?php echo "$hgetwr[user]"; ?></font></td>
		<td width="20%" height="45" valign="bottom"><font face="arial" size="1"><?php echo "$hgetwr[signature]"; ?></font></td>
		<?php
		$cek1 = "select * from mslogin where idlogin = '$hgetwr[assign]'";
		$qcek1 = mysql_query($cek1);
		$hcek1 = mysql_fetch_array($qcek1);
		?>
		<td width="40%" height="45" valign="bottom"><img src="images/paraf.png" width="15" height="20"><br><font face="arial" size="1"><?php echo "$hcek1[nama]"; ?></font></td>
	</tr>
	
	<tr>
		<td colspan="3" align="justify" height="280" valign="top">
			<font face="arial" size="1"><strong>Issue of request :</strong></font><br><br>
			<font face="arial" size="1">
			<?php echo "$hgetwr[issue]"; ?>
			</font><br></br><br></br>
			<font face="arial" size="1"><strong>Reason :</strong></font><br><br>
			<font face="arial" size="1">
			<?php echo "$hgetwr[alasan]"; ?>
			</font>
			
		</td>
		
		<td colspan="3" align="justify" height="280" valign="top">
			<font face="arial" size="1"><strong>Planning and Action of request :</strong><br>
			<br><br>
			<strong>Planning :</strong><br>
			<?php
				$plan = "select * from wrschedule where nowr = '$no' order by schedule";
				$qplan = mysql_query($plan);
				$rplan = mysql_num_rows($qplan);
				if ($rplan<>'0')
				{
					while ($hplan = mysql_fetch_array($qplan))
					{
						echo "- Schedule $hplan[schedule] : ".date("D, d M Y", strtotime($hplan[date]))."<br>";
					}
				}
				else
				{
					echo "No Schedule!!";
				}
			?>
			<br><br>
			<strong>Action :</strong><br>
			<?php 
				$action = "select * from actionwr where nowr = '$no' order by schedule";
				$qaction = mysql_query($action);
				$raction = mysql_num_rows($qaction);
				
				if ($raction <> '0')
				{
					while ($haction = mysql_fetch_array($qaction))
					{
						if ($haction[close]=='Y')
						{
							$close = " - Close";
							$closedate = "$haction[actiondate]";
						}
						else
						{
						}
						echo "- $haction[action], (".date("D, d M Y", strtotime($haction[actiondate])).")$close<br>";
					}
				}
				else
				{
					echo "No Action!!";
				}
				
			?>
			
			<br><br>
			<strong>Part Use</strong><br>
						
			<?php
				$trget = "select * from trgetparthd where nowr='$hgetwr[nowr]'";
				$qtrget = mysql_query($trget);
				$htrget = mysql_fetch_array($qtrget);
				
				$trget2 = "select * from trgetpartdt where nogp='$htrget[nogp]'";
				$qtrget2 = mysql_query($trget2);
				while ($htrget2 = mysql_fetch_array($qtrget2))
				{
					$getpart = "select * from mspart where idpart='$htrget2[idpart]'";
					$qgetpart = mysql_query($getpart);
					$hgetpart = mysql_fetch_array($qgetpart);
					echo "- $hgetpart[part]<br>";

				}

			
			?>
			
		  </font>
	  </td>
	</tr>
	<?php
		if ($hgetwr[status]=='CO')
		{
			$stat="Closed";
		}
		else if ($hgetwr[status]=='CA')
		{
			$stat="Cancel";
		}
		else if ($hgetwr[status]=='H')
		{
			$stat="Hold";
		}
		else if ($hgetwr[status]=='G')
		{
			$stat="Approve";
		}
		else if ($hgetwr[status]=='A')
		{
			$stat="Assign";
		}
		
	?>
	<tr>
		<td colspan="2" rowspan="2" valign="top"><font face="arial" size="1"><b>This Request has been <?php echo "$stat"; ?>!</b><br> Close Date : <?php echo "$closedate"; ?></font></td>
		<td colspan="2" valign="top" align="center"><font face="arial" size="1"><b>IT Dept</b></font></td>
		<td colspan="2" rowspan="2" valign="top"><font face="arial" size="1"><b>Relation File :</b><br>
			<?php
			if ($hgetwr[getpart]=="" and $hgetwr[request]=="" and $hgetwr[vendor]=="")
			{
				echo "- No Documents Use!";
			}
			else
			{
								
			}
			if (!empty($hgetwr[getpart]))
			{
				echo "Part Use : $hgetwr[getpart]<br>";
			}
			else 
			{
			}
			
			if (!empty($hgetwr[request]))
			{
				echo "Request No : $hgetwr[request]<br>";
			}
			else 
			{
			}
			
			if (!empty($hgetwr[vendor]))
			{
				echo "Maintenance Ext : $hgetwr[vendor]<br>";
			}
			else 
			{
			}
			?>
		</font></td>
	</tr>
	
	<tr>
		<td colspan="2" height="40" valign="bottom" align="center"><img src="images/ttdit.png" width="35" height="25"><br><font face="arial" size="1"><?php echo "$htech[leader]";   ?></font></td>
	</tr>
</table>
<table border="0" width="500">
	<tr>
		<td align="right"><font face="arial" size="1"><strong>Rev.00</strong></font></td>
	</tr>
</table>


</div>
<?php
}
else
{
header("Location:index.php");
}
?>
