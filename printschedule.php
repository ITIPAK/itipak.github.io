<?php
include "koneksi.php";
$priod = $_GET['priod'];
$cetpriod = date ("M-Y", strtotime($priod));

session_start();
$getrrh = "select * from trrrhd where norr = '$no'";
$qgetrrh = mysql_query($getrrh);
$hgetrrh = mysql_fetch_array($qgetrrh);
 
?>
<div align="justify">

<table border="0" width="700">
	<tr>
		<td align="center"><font face="arial" size="2"><strong><em>Schedule of IT</em><br>
<?php echo "$cetpriod"; ?>
</strong></font></td>
	</tr>
</table>

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
					
					
					if(!empty($priod))
					{
						$periode = $priod;
					}
					else
					{
					}
					//echo "$priod, $periode, $idtech";
					?>
					<table width="700">
						
						
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
										$company = "";
										$nowr = "";
										$back = "white";
										$action = "";
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
					
					


</div>

