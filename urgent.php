<?php
include "koneksi.php";
?>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<title>IT Ticketing</title>
</head>

<body>
<form method="post">

<table width="400" align="center">
	<tr align="center">
		<th colspan="3"><font face="arial" size="2"><strong>Fill Request Data</strong></font></th>
	</tr>
	
	<tr align="justify">
		<th width="13%"><font face="arial" size="1">Choode Location</font></th>
		<th width="2%"><font face="arial" size="1">:</font></th>
		<td width="85%"><select name="idcompany">
<?php
$getcompany = "select * from mscompany order by idcompany";
$qgetcompany = mysql_query($getcompany);
while ($hgetcompany = mysql_fetch_array($qgetcompany))
{
	$getdiv = "select * from msdivisi where idcompany = '$hgetcompany[idcompany]' order by iddivisi";
	$qgetdiv = mysql_query($getdiv);	
	while ($hgetdiv = mysql_fetch_array($qgetdiv))
	{

?>
	<option value="<?php echo "$hgetdiv[iddivisi]"; ?>"><?php echo "$hgetdiv[iddivisi] - $hgetcompany[company]"; ?></option>
<?php
	}
}
?>
</select></td>
	</tr>
	
	<tr align="justify">
		<th width="22%"><font face="arial" size="1">Issue Of Request</font></th>
		<th width="1%"><font face="arial" size="1">:</font></th>
		<td width="77%"><textarea name="issue">- Internet Putus Semua</textarea></td>
	</tr>
	
	<tr align="justify">
		<th width="13%"><font face="arial" size="1">Report By</font></th>
		<th width="2%"><font face="arial" size="1">:</font></th>
		<td width="85%"><input type="text" name="user"></td>
	</tr>
	
	<tr align="justify">
		<th width="13%"><font face="arial" size="1">Password Login</font></th>
		<th width="2%"><font face="arial" size="1">:</font></th>
		<td width="85%"><input type="password" name="password"></td>
	</tr>
	
	<tr align="center">
		<td width="85%" colspan="3"><input width="100" type="submit" value="Kirim Ticket"></td>
	</tr>
</table>
</form>
</body>
</html>
