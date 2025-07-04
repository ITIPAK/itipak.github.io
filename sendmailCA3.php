<?php
//============================================================================================================================================================
//============================================================================================================================================================
//(Hold)

if ($status=='H')
{
		$receipt = $hselcompany[email];
		$txt = "
	<html>
	<head>
	  <title></title>
	</head>
	<body>
	  
	  <table border=1 width=750>
		<tr>
			<th colspan=6 align=center><font face=arial size=2><b>".$judul."</b></font></th>
		</tr>
		
		<tr>
		  <th width=15% align=left><font face=arial size=1>No Request</font></th><th width=5% align=justify>:</th> <th width=30% align=left><font face=arial size=1>".$hcekstatuswr[nowr]."</font>
		  <th width=15% align=left><font face=arial size=1>Company</font></th><th width=5% align=justify>:</th> <th width=30% align=left><font face=arial size=1>".$hselcompany[company]."</font></th>
		</tr>
		
		<tr>
		  <th width=15% align=left><font face=arial size=1>Request Date</th><th width=5% align=justify>:</th> <th width=30% align=left><font face=arial size=1>".$hcekstatuswr[date]."</font></th>
		  <th width=15% align=left><font face=arial size=1>Request to</th><th width=5% align=justify>:</th> <th width=30% align=left><font face=arial size=1>".$hcekstatuswr[idtech]."</font></th>
		</tr>
		
		<tr>
		  <th width=15% align=left><font face=arial size=1>CPU Name</th><th width=5% align=justify>:</th> <th width=30% align=left><font face=arial size=1>".$hcekstatuswr[idcomputer]."</font></th>
		  <th width=15% align=left><font face=arial size=1>Request By</th><th width=5% align=justify>:</th> <th width=30% align=left><font face=arial size=1>".$hcekstatuswr[user]."</font></th>
		</tr>
		
		<tr>
		  <th colspan=6> <font face=arial size=1>
		  <center>Issue of this Request :</center><br><br>
		  <div align=left>".$hcekstatuswr[issue]."</div>
		  </font>
		  </th>
		</tr>
	  </table><br>
	  
	</body>
	</html>
	";
}


//============================================================================================================================================================
//============================================================================================================================================================
// (Get Approval)
else if($status =='G')
{
		$tech = "select * from mstech where idtech = '$hcekstatuswr[idtech]'";
		$tech = mysql_query($tech);
		$tech = mysql_fetch_array($tech);
		
		$email1 = "opunk_muda@yahoo.com";
		$receipt = "$hgetcompany[email], $tech[email], $email1";
		$txt = "
	<html>
	<head>
	  <title></title>
	</head>
	<body>
	  
	  <table border=1 width=750>
		<tr>
			<th colspan=6 align=center><font face=arial size=2><b>".$judul."</b></font></th>
		</tr>
		
		<tr>
		  <th width=15% align=left><font face=arial size=1>No Request</font></th><th width=5% align=justify>:</th> <th width=30% align=left><font face=arial size=1>".$hcekstatuswr[nowr]."</font>
		  <th width=15% align=left><font face=arial size=1>Company</font></th><th width=5% align=justify>:</th> <th width=30% align=left><font face=arial size=1>".$hselcompany[company]."</font></th>
		</tr>
		
		<tr>
		  <th width=15% align=left><font face=arial size=1>Request Date</th><th width=5% align=justify>:</th> <th width=30% align=left><font face=arial size=1>".$hcekstatuswr[date]."</font></th>
		  <th width=15% align=left><font face=arial size=1>Request to</th><th width=5% align=justify>:</th> <th width=30% align=left><font face=arial size=1>".$tech[tech]."</font></th>
		</tr>
		
		<tr>
		  <th width=15% align=left><font face=arial size=1>CPU Name</th><th width=5% align=justify>:</th> <th width=30% align=left><font face=arial size=1>".$hcekstatuswr[idcomputer]."</font></th>
		  <th width=15% align=left><font face=arial size=1>Request By</th><th width=5% align=justify>:</th> <th width=30% align=left><font face=arial size=1>".$hcekstatuswr[user]."</font></th>
		</tr>
		
		<tr>
		  <th width=15% align=left><font face=arial size=1>Approve Date</th><th width=5% align=justify>:</th> <th width=30% align=left><font face=arial size=1>".$hcekstatuswr[signature]."</font></th>
		  <th width=15% align=left><font face=arial size=1>Approve By</th><th width=5% align=justify>:</th> <th width=30% align=left><font face=arial size=1>".$hcekstatuswr[datesignature]."</font></th>
		</tr>
		
		<tr>
		  <th colspan=6> <font face=arial size=1>
		  <center>Issue of this Request :</center><br><br>
		  <div align=left>".$hcekstatuswr[issue]."</div>
		  </font>
		  </th>
		</tr>
		
		
	  </table><br>
	</body>
	</html>
	";
}

$headers = "From : info@ipak.co.id";
$headers = "MIME-Version: 1.0" . "\r\n";
$headers = "Content-type:text/html;charset=iso-8859-1" . "\r\n";

	if (mail($receipt,$subject,$txt,$headers))
	{
		header ("location:wr.php");
	}
	else
	{
	}


?>