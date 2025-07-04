<?php
//include "cekip.php";
include "koneksi.php";
session_start();
$log = "select * from mslogin where idlogin = '$_SESSION[idlog]' and password = '$_SESSION[passwordlog]'";
$qlog = mysql_query($log);
$hlog = mysql_fetch_array($qlog);

if ($hlog[idcompany] <> 'ALL')
{
	$pt = "select * from mscompany where idcompany = '$hlog[idcompany]'";
	$qpt = mysql_query($pt);
	$hpt = mysql_fetch_array($qpt);
	
	$namawelcome = $hpt[company];
}
else
{
	$namawelcome = "Admin ". $hlog[idtech];
}




?>

<html>
<head>
<title>IT Ticketing</title>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1251">
<link href="style.css" rel="stylesheet" type="text/css">
</head>
<body bgcolor="#FFFFFF" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
<table width="780" align="center">
	<tr>
		<td align="right"><font face="arial" color="#0000FF" size="1">Welcome <?php echo "$namawelcome"; ?></font></td>
	</tr>
</table>
<table width="780" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td height="75" align="center" background="images/index_32.gif">Copyright &copy; <a href="" style="color:blue; text-decoration:none;">IPAK Group</a>. Design by Stylish <a href="http://www.stylishtemplate.com" style="color:#8A8A8A; text-decoration:none;">Web Templates</a><br>
      Analysis & Program By <a href="" style="color:blue; text-decoration:none;">Achmad Gofur</a></td>
  </tr>
</table>
</body>
</html>