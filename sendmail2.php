<?php
		$txt = "
	<html>
	<head>
	  <title></title>
	</head>
	<body>
	  
	  <table border=1 width=750>
		<tr>
			<th colspan=6 align=center><font face=arial size=2><b>Work Request</b></font></th>
		</tr>
		
		<tr>
		  <th width=15% align=left><font face=arial size=1>No Request</font></th><th width=5% align=justify>:</th> <th width=30% align=left><font face=arial size=1>".$nocet."</font>
		  <th width=15% align=left><font face=arial size=1>Company</font></th><th width=5% align=justify>:</th> <th width=30% align=left><font face=arial size=1>".$hcekval[company]."</font></th>
		</tr>
		
		<tr>
		  <th width=15% align=left><font face=arial size=1>Request Date</th><th width=5% align=justify>:</th> <th width=30% align=left><font face=arial size=1>".$hwr[date]."</font></th>
		  <th width=15% align=left><font face=arial size=1>Request to</th><th width=5% align=justify>:</th> <th width=30% align=left><font face=arial size=1>".$hwr[idtech]."</font></th>
		</tr>
		
		<tr>
		  <th width=15% align=left><font face=arial size=1>CPU Name</th><th width=5% align=justify>:</th> <th width=30% align=left><font face=arial size=1>".$hwr[idcomputer]."</font></th>
		  <th width=15% align=left><font face=arial size=1>Request By</th><th width=5% align=justify>:</th> <th width=30% align=left><font face=arial size=1>".$hwr[user]."</font></th>
		</tr>
		
		<tr>
		  <th width=15% align=left><font face=arial size=1>Approve Date</th><th width=5% align=justify>:</th> <th width=30% align=left><font face=arial size=1>".$datesign."</font></th>
		  <th width=15% align=left><font face=arial size=1>Approve By</th><th width=5% align=justify>:</th> <th width=30% align=left><font face=arial size=1>".$hcekval[signature]."</font></th>
		</tr>
		
		<tr>
		  <th colspan=6> <font face=arial size=1>
		  <center>Issue of this Request :</center><br><br>
		  <div align=left>".$hwr[issue]."</div>
		  </font>
		  </th>
		</tr>
	  </table><br>
	  
	</body>
	</html>
	";




$headers = "From : info@ipak.co.id";
$headers = "MIME-Version: 1.0" . "\r\n";
$headers .= "Content-type:text/html;charset=iso-8859-1" . "\r\n";

mail($receipt,$subject,$txt,$headers)

?>