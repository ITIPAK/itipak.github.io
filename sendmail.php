<?php
//============================================================================================================================================================
//============================================================================================================================================================
//New Request (Hold)


		$receipt = $hgetcompany[email];
		
	
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
		  <th width=15% align=left><font face=arial size=1>No Request</font></th><th width=5% align=justify>:</th> <th width=30% align=left><font face=arial size=1>".$nowr."</font>
		  <th width=15% align=left><font face=arial size=1>Company</font></th><th width=5% align=justify>:</th> <th width=30% align=left><font face=arial size=1>".$hgetcompany[company]."</font></th>
		</tr>
		
		<tr>
		  <th width=15% align=left><font face=arial size=1>Request Date</th><th width=5% align=justify>:</th> <th width=30% align=left><font face=arial size=1>".$date."</font></th>
		  <th width=15% align=left><font face=arial size=1>Request to</th><th width=5% align=justify>:</th> <th width=30% align=left><font face=arial size=1>".$idtech."</font></th>
		</tr>
		
		<tr>
		  <th width=15% align=left><font face=arial size=1>CPU Name</th><th width=5% align=justify>:</th> <th width=30% align=left><font face=arial size=1>".$idcomputer."</font></th>
		  <th width=15% align=left><font face=arial size=1>Request By</th><th width=5% align=justify>:</th> <th width=30% align=left><font face=arial size=1>".$request."</font></th>
		</tr>
		
		<tr>
		  <th colspan=6> <font face=arial size=1>
		  <center>Issue of this Request :</center><br><br>
		  <div align=left>".$issue."</div>
		  </font>
		  </th>
		</tr>
	  </table><br>
	  <center>
	  Click The link to approve This Request<br>
	  http://support.ipak.co.id/approvewr.php?noapp=".$nowr."&idapp=".$idapp."&passapp=".$passapp."<br><br>
	  or Log In manually at <br> http://support.ipak.co.id
	  </center>
	</body>
	</html>
	";


$headers = "From : info@ipak.co.id";
$headers = "MIME-Version: 1.0" . "\r\n";
$headers = "Content-type:text/html;charset=iso-8859-1" . "\r\n";
//if ($status=='H')
//{
	if (mail($receipt,$subject,$txt,$headers))
	{
		header ("location:wr.php");
	}
	else
	{
	}
//}
//else
//{
//	mail($receipt,$subject,$txt,$headers)
//}

?>