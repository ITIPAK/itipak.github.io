<?php
include "koneksi.php";
session_start();

$syncron = "select * from mslogin where idlogin = '$_SESSION[idlog]' and password = '$_SESSION[passwordlog]'";
$qsyncron = mysql_query($syncron);
$hsyncron = mysql_fetch_array($qsyncron);
if (!empty($_SESSION[idlog]) and !empty($_SESSION[passwordlog]))
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
<table width="800" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td>
		<table width="90%" border="0" cellspacing="0" cellpadding="0">
		<?php
		include "atas.php";
		$edit = $_GET['edit'];
		if ($edit == '1')
		{
			$title = "Edit Computer";
		}
		else
		{
			$title = "Add Computer";
		}
		?>
			<tr>
			  <td>
					<div align="center"><font face="arial" size="3"><b><?php echo "$title" ?></b></font></div>
					<table width="90%" align="center">
						<tr></tr>
						<form method="post" action="mscpu.php">
						<?php
						if ($edit =='1')
						{
						$idedit = $_GET['idedit'];
						$getcpu = "select * from mscomputer where idcomputer = '$idedit'";
						$qgetcpu = mysql_query($getcpu);
						$hgetcpu = mysql_fetch_array($qgetcpu);
						?>
						<tr align="justify">
							<td><font face="arial" size="1">CPU ID</font></td> <td><font face="arial" size="1">:</font></td> <td><input type="hidden" name="statedit" value="1"> <input type="hidden" name="idcpu" value="<?php echo "$hgetcpu[idcomputer]"; ?>"> <input type="text" name="idcpu2" value="<?php echo "$hgetcpu[idcomputer]" ?>" size="7" disabled> </td>
							<td><font face="arial" size="1">IP Adress</font></td> <td><font face="arial" size="1">:</font></td> <td><input type="text" name="ip" size="7" value="<?php echo "$hgetcpu[ipaddress]"; ?>"> </td>
						</tr>
						
						<tr align="justify">	
							<td><font face="arial" size="1">CPU Name</font></td> <td><font face="arial" size="1">:</font></td> <td><input type="text" name="cpu" size="7"  value="<?php echo "$hgetcpu[computer]"; ?>"></td>
							<td><font face="arial" size="1">User</font></td> <td><font face="arial" size="1">:</font></td><td><input type="text" name="user" size="7" value="<?php echo "$hgetcpu[user]"; ?>"></td>
						</tr>
						
						<tr align="justify">	
							<td><font face="arial" size="1">OS</font></td> <td><font face="arial" size="1">:</font></td> <td><input type="text" name="os" size="7" value="<?php echo "$hgetcpu[os]"; ?>"></td>
							<td><font face="arial" size="1">Anti Virus</font></td> <td><font face="arial" size="1">:</font></td><td><input type="text" name="antivirus" size="7" value="<?php echo "$hgetcpu[antivirus]"; ?>"></td>
						</tr>
						
						<tr align="justify">	
							<td><font face="arial" size="1">Motherboard</font></td> <td><font face="arial" size="1">:</font></td> <td><input type="text" name="mobo" size="7" value="<?php echo "$hgetcpu[motherboard]"; ?>"></td>
							<td><font face="arial" size="1">Processor</font></td> <td><font face="arial" size="1">:</font></td><td><input type="text" name="proc" size="7" value="<?php echo "$hgetcpu[processor]"; ?>"></td>
						</tr>
						
						<tr align="justify">	
							<td><font face="arial" size="1">DDR Ram</font></td> <td><font face="arial" size="1">:</font></td><td><input type="text" name="ram" size="7" value="<?php echo "$hgetcpu[ram]"; ?>"></td>
							<td><font face="arial" size="1">Hardisk</font></td> <td><font face="arial" size="1">:</font></td><td><input type="text" name="hdd" size="7" value="<?php echo "$hgetcpu[hdd]"; ?>"></td>
						</tr>	
						
						<tr align="justify">	
							<td><font face="arial" size="1">VGA</font></td> <td><font face="arial" size="1">:</font></td> <td><input type="text" name="vga" size="7" value="<?php echo "$hgetcpu[vga]"; ?>"></td>
							<td><font face="arial" size="1">Casing</font></td> <td><font face="arial" size="1">:</font></td> <td><input type="text" name="casing" size="7" value="<?php echo "$hgetcpu[casing]"; ?>"></td>
						</tr>	
							
						<tr align="justify">	
							<td><font face="arial" size="1">Monitor</font></td> <td><font face="arial" size="1">:</font></td> <td><input type="text" name="monitor" size="7" value="<?php echo "$hgetcpu[monitor]"; ?>"></td>
							<td><font face="arial" size="1">Printer</font></td> <td><font face="arial" size="1">:</font></td> <td><input type="text" name="printer" size="7" value="<?php echo "$hgetcpu[printer]"; ?>"></td>
						</tr>	
							
						<tr align="justify">	
							<td><font face="arial" size="1">Keyboard</font></td> <td><font face="arial" size="1">:</font></td> <td><input type="text" name="keyboard" size="7" value="<?php echo "$hgetcpu[keyboard]"; ?>"></td>
							<td><font face="arial" size="1">Mouse</font></td> <td><font face="arial" size="1">:</font></td> <td><input type="text" name="mouse" size="7" value="<?php echo "$hgetcpu[mouse]"; ?>"></td>
						</tr>	
							
						<tr align="justify">
							<td><font face="arial" size="1">Other</font></td> <td><font face="arial" size="1">:</font></td> <td><input type="text" name="other" size="7" value="<?php echo "$hgetcpu[other]"; ?>"></td>
							<td><font face="arial" size="1">Company Owner</font></td> <td><font face="arial" size="1">:</font></td> <td>
							<?php
								$lookcompany = "select * from mscompany where idcompany = '$hgetcpu[idcompany]'";
								$qlookcompany = mysql_query($lookcompany);
								$hlookcompany = mysql_fetch_array($qlookcompany);
								$hlookcompany[company];
							?>
							
							<select name="company">
									<option value="<?php echo "$hlookcompany[idcompany]"; ?>"><?php echo "$hlookcompany[company]"; ?></option>							
									<?php
									 $optcompany = "select * from mscompany";
									 $qoptcompany = mysql_query($optcompany);
									 while ($hoptcompany=mysql_fetch_array($qoptcompany))
									 {
									 ?>
										<option value="<?php echo "$hoptcompany[idcompany]"; ?>"><?php echo "$hoptcompany[company]"; ?></option>
									<?php
									 }
									?>
								</select>
							
							</td>
						</tr>
						
						<tr align="justify">	
							<td><font face="arial" size="1">Remark</font></td> <td><font face="arial" size="1">:</font></td> <td><textarea name="remark"><?php echo "$hgetcpu[remark]"; ?></textarea></td>
							<td><font face="arial" size="1">Expired Antivirus</font></td> <td><font face="arial" size="1">:</font></td> <td><input type="text" name="expired" size="7" value="<?php echo "$hgetcpu[expired]"; ?>"><font face="arial" size="1">yyyy-mm-dd</font></td>
						</tr>
						
						<tr align="justify">	
							<td colspan="2"><input type="submit" value="Update"></td>
							<td colspan="2"><input type="reset" value="Batal"></td>
						</tr>
						<?php
						}
						else
						{
						?>
						
						
						<tr align="justify">
							<td><font face="arial" size="1">CPU ID</font></td> <td><font face="arial" size="1">:</font></td> <td><input type="text" name="idcpu" size="7"></td>
							<td><font face="arial" size="1">IP Address</font></td> <td><font face="arial" size="1">:</font></td> <td><input type="text" name="ip" size="7"></td>
						</tr>
						
						<tr align="justify">	
							<td><font face="arial" size="1">CPU Name</font></td> <td><font face="arial" size="1">:</font></td> <td><input type="text" name="cpu" size="7"></td>
							<td><font face="arial" size="1">User</font></td> <td><font face="arial" size="1">:</font></td><td><input type="text" name="user" size="7"></td>
						</tr>
						
						<tr align="justify">	
							<td><font face="arial" size="1">Motherboard</font></td> <td><font face="arial" size="1">:</font></td> <td><input type="text" name="mobo" size="7"></td>
							<td><font face="arial" size="1">Processor</font></td> <td><font face="arial" size="1">:</font></td><td><input type="text" name="proc" size="7"></td>
						</tr>
						
						<tr align="justify">	
							<td><font face="arial" size="1">OS</font></td> <td><font face="arial" size="1">:</font></td> <td><input type="text" name="os" size="7"></td>
							<td><font face="arial" size="1">Anti Virus</font></td> <td><font face="arial" size="1">:</font></td><td><input type="text" name="antivirus" size="7"></td>
						</tr>
						
						<tr align="justify">	
							<td><font face="arial" size="1">DDR Ram</font></td> <td><font face="arial" size="1">:</font></td><td><input type="text" name="ram" size="7"></td>
							<td><font face="arial" size="1">Hardisk</font></td> <td><font face="arial" size="1">:</font></td><td><input type="text" name="hdd" size="7"></td>
						</tr>	
						
						<tr align="justify">	
							<td><font face="arial" size="1">VGA</font></td> <td><font face="arial" size="1">:</font></td> <td><input type="text" name="vga" size="7"></td>
							<td><font face="arial" size="1">Casing</font></td> <td><font face="arial" size="1">:</font></td> <td><input type="text" name="casing" size="7"></td>
						</tr>	
							
						<tr align="justify">	
							<td><font face="arial" size="1">Monitor</font></td> <td><font face="arial" size="1">:</font></td> <td><input type="text" name="monitor" size="7"></td>
							<td><font face="arial" size="1">Printer</font></td> <td><font face="arial" size="1">:</font></td> <td><input type="text" name="printer" size="7"></td>
						</tr>	
							
						<tr align="justify">	
							<td><font face="arial" size="1">Keyboard</font></td> <td><font face="arial" size="1">:</font></td> <td><input type="text" name="keyboard" size="7"></td>
							<td><font face="arial" size="1">Mouse</font></td> <td><font face="arial" size="1">:</font></td> <td><input type="text" name="mouse" size="7"></td>
						</tr>	
							
						<tr align="justify">
							<td><font face="arial" size="1">Other</font></td> <td><font face="arial" size="1">:</font></td> <td><input type="text" name="other" size="7"></td>
							<td><font face="arial" size="1">Company Owner</font></td> <td><font face="arial" size="1">:</font></td> <td><select name="divisi">
									<option value="">=Location=</option>
									<?php
										$optcompany = "select * from msdivisi order by iddivisi";
										$qoptcompany = mysql_query($optcompany);
										 while ($hoptcompany=mysql_fetch_array($qoptcompany))
										 {
									?>
									<option value="<?php echo "$hoptcompany[iddivisi]"; ?>"><?php echo "$hoptcompany[iddivisi] / $hoptcompany[idcompany]"; ?></option>
									<?php
										 }
									?>
								</select>
							</td>
						</tr>
						
						<tr align="justify">	
							<td><font face="arial" size="1">Remark</font></td> <td><font face="arial" size="1">:</font></td> <td><textarea name="remark"></textarea></td>
							<td><font face="arial" size="1">Expired Antivirus</font></td> <td><font face="arial" size="1">:</font></td> <td><input type="text" name="expired" size="7"><font face="arial" size="1">yyyy-mm-dd</font></td>
						</tr>
						
						<tr align="justify">	
							<td colspan="2"><input type="submit" value="save"></td>
							<td colspan="2"><input type="reset" value="Batal"></td>
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
else
{
	header("location:index.php");
}
?>