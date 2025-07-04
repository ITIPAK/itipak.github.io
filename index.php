<?php
//include "cekip.php";

session_start();
session_destroy();
error_reporting(E_ALL & ~E_NOTICE);
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
    <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td height="50" background="images/index_01.gif"></td>
      </tr>
      <tr>
        <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td width="37%" align="center"><table width="195" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td><img src="images/index_06.gif" width="195" height="26" alt=""></td>
              </tr>
              <tr>
                <td background="images/index_07.gif"><table width="100%" border="0" cellspacing="10" cellpadding="0">
                  <tr>
                    <td align="center" width="100" height="41" background="images/index_09.gif" style="background-repeat:no-repeat;"><font face="arial" color="#FFFFFF" size="3"><b> LOGIN</b></font></td>
                  </tr>
                  <tr>
                    <td class="white-text" align="center">
						<font face="arial" size="2"><b>
						<?php
							include "koneksi.php";
							$ip = $_SERVER['REMOTE_ADDR'];
							$cekdiv = "select * from msdivisi where ip='$ip'";
							$qcekdiv = mysql_query($cekdiv);
							$hcekdiv = mysql_num_rows($qcekdiv);
							if ($hcekdiv <>0)
							{
					
								$message = $_GET['message'];
								if ($message == '1')
								{
									$write = "Sory, Id or Password is invalid!!";
								}
								else if ($message == '2')
								{
									$write = "Sory, Id or Password must be Fill!!";
								}
								else if ($message == '3')
								{
									$write = "Login's Password have been Changed!<br> Please Relogin!";
								}
								else if ($message == '4')
								{
									$write = "Divisi's Password have been Changed!<br> Please Relogin!";
								}
								else
								{
									$write = "";
								}
							
							?>
							
							<form method="post" action="login.php">
								ID Company <br> <input type="text" name="id" size="18"> <br><br>
								Password <br> <input type="password" name="password" size="18"><br>
								<font face="arial" size="1" color="#FFFFFF"><?php echo "$write"; ?></font>
								<br><br>
							<input type="submit" value="Enter">
							</form>
								
								<?php
							}
							else
							{
							?>	
							Maaf, Anda Berada diluar Kantor!<br><br>
							Silahkan Login di Kantor
							<?php
							}
							
						?>
						
							
							
						</b></font>
					</td>
                  </tr>
                  
                </table></td>
              </tr>
              <tr>
                <td><img src="images/index_12.gif" width="195" height="25" alt=""></td>
              </tr>
            </table></td>
            <td width="63%" valign="top"><img src="images/index_03.jpg" width="491" height="395" alt=""></td>
          </tr>
        </table></td>
      </tr>
    </table></td>
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