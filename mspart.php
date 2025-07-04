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
?>

<?php
$selcompany = "select * from mscompany where idcompany = '$idcompany'";
$qselcompany = mysql_query($selcompany);

// ALL Variable
$idpart = $_POST['idpart'];
$part = $_POST['part'];
$unit = $_POST['unit'];
$remark = $_POST['remark'];
$idtech = $_POST['idtech'];
$statedit = $_POST['statedit'];

$delete = $_GET['delete'];
$iddelete = $_GET['iddelete'];
$edit = $_GET['edit'];
$idedit = $_GET['idedit'];


//delete
if ($delete=='1')
{
	$sql = "update mspart set active = 'N' where idpart = '$iddelete'";
}
else if ($delete=='2')
{
	$sql = "update mspart set active = 'Y' where idpart = '$iddelete'";
}
else
{
}
//save and edit
if (!empty($idpart) and !empty($part) and !empty($remark) and !empty($idtech))
{
	if ($statedit =='1')
	{
		$sql = "update mspart set part='$part', idunit='$unit', remark='$remark', idtech='$idtech' where idpart = '$idpart'";
	}
	else
	{
		$sql = "insert into mspart (idpart, part, idunit, remark, idtech, active) values ('$idpart', '$part', '$unit', '$remark', '$idtech', 'Y')";
	}
}
else
{
}

if (mysql_query($sql))
{
	$message = "Command Succesfull!!";
	if ($statedit =='1')
	{
	}
	else
	{
		$comp = "select * from mscompany order by idcompany";
		$qcomp = mysql_query($comp);
		while ($hcomp = mysql_fetch_array($qcomp))
		{
			$today = date("Y-m-d");
			$instock = "insert into mspartstock (idpart, date, idcompany, stock, idunit) values ('$idpart', '$today', '$hcomp[idcompany]', 0, '$unit')";
			mysql_query($instock);
		}
	
	
	}

}
else
{
}
?>

<html>
<head>
<title>IT Ticketing - Master Part</title>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1251">
<link href="style.css" rel="stylesheet" type="text/css">
</head>
<body bgcolor="#FFFFFF" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
<table width="900" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td>
		<table width="900" align="center" border="0" cellspacing="0" cellpadding="0">
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
					<div align="center"><font face="arial" size="3"><b>List Of Part</b></font></div>
					<table width="900" align="center">
						<tr>
							<td colspan="7" align="center"><font face="arial" size="2" color="#0000FF"><b><?php echo "$message"; ?></b></font></td>
						</tr>
						<tr>
							<form method="get" action="stockreport.php">
							<td colspan="7" align="right"><font face="arial" size="1"><b><a href="stockreport.php">Laporan Stock Sparepart</a> : 
								<select name="company" onChange="submit()">
									<option value="">=Commpany=</option>
									<option value="ipak">IPAK</option>
									<option value="vip">VIP</option>
								</select></b></font></td>
								
							</form>
						</tr>
						<tr bgcolor="#CCCCCC">
							<th width="15%"><font face="arial" size="1"><b>ID Sparepart</b></font></th>
							<th width="25%"><font face="arial" size="1"><b>Sparepart Name</b></font></th>
							<th width="30%"><font face="arial" size="1"><b>Unit</b></font></th>
							<th width="30%"><font face="arial" size="1"><b>Remark</b></font></th>
							<th width="10%"><font face="arial" size="1"><b>Assign to</b></font></th>
							<th width="20%" colspan="2"><font face="arial" size="1"><b>Action</b></font></th>
						</tr>
					<form method="post" action="mspart.php">
					<?php
					if ($edit=='1')
					{
					$getpart = "select * from mspart where idpart = '$idedit'";
					$qgetpart = mysql_query($getpart);
					$hgetpart = mysql_fetch_array($qgetpart);
					?>
					
					<tr>	
							<td><input type="hidden" name="idpart" value="<?php echo "$idedit"; ?>"><input type="text" name="idpart2" size="5" value="<?php echo "$idedit"; ?>"></td>
							<td><input type="hidden" name="statedit" value="1"><input type="text" name="part" size="10" value="<?php echo "$hgetpart[part]"; ?>"></td>
							<td><input type="text" name="unit" size="10" value="<?php echo "$hgetpart[idunit]"; ?>"></td>
							<td><input type="text" name="remark" size="15"  value="<?php echo "$hgetpart[remark]"; ?>"></td>
							<td>
							<?php
								if ($hsyncron[idtech] == "ALL")
								{
								$cektech = "select * from mstech where idtech = '$hgetpart[idtech]'";
								$qcektech = mysql_query($cektech);
								$hcektech = mysql_fetch_array($qcektech);
							?>
								<select name="idtech">
									<option value="<?php echo "$hcektech[idtech]"; ?>"><?php echo "$hcektech[tech]"; ?></option>
							<?php	
								$gettech = "select * from mstech order by idtech";
								$qgettech = mysql_query($gettech);
								while ($hgettech = mysql_fetch_array($qgettech))
								{
							?>	
									<option value="<?php echo "$hgettech[idtech]"; ?>"><?php echo "$hgettech[tech]"; ?></option>
							<?php	
								}
							?>
								</select>
								<?php
								}
								else
								{
								?>
								<input type="hidden" name="idtech" value="<?php echo "$hsyncron[idtech]"; ?>"> <input type="text" name="idtech2" disabled value="<?php echo "$hsyncron[idtech]"; ?>">
								<?php
								}
								?>
							</td>
							<td><input type="submit" value="Update"></td>
							<td><input type="reset" value="Cancel"></td>
					  </tr>
											
					<?php
					}
					else
					{
					?>	
						
						<tr>
							<td><input type="text" name="idpart" size="5"></td>
							<td><input type="text" name="part" size="10"></td>
							<td><input type="text" name="unit" size="10"></td>
							<td><input type="text" name="remark" size="15"></td>
							<td>
							<?php
								if ($hsyncron[idtech] == "ALL")
								{
							?>
								<select name="idtech">
									<option value="">== Own of This Part==</option>
							<?php	
								$gettech = "select * from mstech order by idtech";
								$qgettech = mysql_query($gettech);
								while ($hgettech = mysql_fetch_array($qgettech))
								{
							?>	
									<option value="<?php echo "$hgettech[idtech]"; ?>"><?php echo "$hgettech[tech]"; ?></option>
							<?php	
								}
							?>
								</select>
								<?php
								}
								else
								{
								?>
								<input type="hidden" name="idtech" value="<?php echo "$hsyncron[idtech]"; ?>"> <input type="text" name="idtech2" disabled value="<?php echo "$hsyncron[idtech]"; ?>">
								<?php
								}
								?>
							</td>
							<td><input type="submit" value="Save"></td>
							<td><input type="reset" value="Cancel"></td>
						</tr>
						
					<?php
					}
					?>
					</form>
						
						<?php
						if ($hsyncron[idtech]=="ALL")
						{
							$mspart = "select * from mspart order by idtech";
						}
						else
						{
							$mspart = "select * from mspart where idtech = '$hsyncron[idtech]' order by idpart";
						}
						$qmspart = mysql_query($mspart);
						while ($hmspart = mysql_fetch_array($qmspart))
						{
						if ($hmspart[active]=='Y')
						{
							$back = "white";
						}
						else
						{
							$back = "yellow";
						}
						?>
						<tr bgcolor="<?php echo "$back"; ?>">
							<td width="15%"><font face="arial" size="1"><?php echo "$hmspart[idpart]"; ?></font></td>
							<td width="25%"><font face="arial" size="1"><?php echo "$hmspart[part]"; ?></font></td>
							<td width="25%"><font face="arial" size="1"><?php echo "$hmspart[idunit]"; ?></font></td>
							<td width="30%"><font face="arial" size="1"><?php echo "$hmspart[remark]"; ?></font></td>
							<td width="10%"><font face="arial" size="1"><?php
							$tech = "Select * from mstech where idtech = '$hmspart[idtech]'";
							$qtech = mysql_query($tech);
							$htech = mysql_fetch_array($qtech);
							
							echo "$htech[tech]"; ?></font></td>
							<?php
							if ($hmspart[active]=='Y')
							{
							?>
							<td align="justify"><font face="arial" size="1"><a href="<?php echo "mspart.php?edit=1&idedit=$hmspart[idpart]"; ?>">Edit</a></font></td>
							<td align="justify"><font face="arial" size="1"><a href="<?php echo "mspart.php?delete=1&iddelete=$hmspart[idpart]"; ?>">Hapus</a></font></td>
							<?php	
							}
							else
							{
							?>
							<td colspan="2" align="justify"><font face="arial" size="1"><a href="<?php echo "mspart.php?delete=2&iddelete=$hmspart[idpart]"; ?>">Deleted</a></font></td>
							<?php
							}
							?>							
							
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