<?php
if ($sched=='1')
{
		$judul = "Work Request has Assigned on Schedule";
		$subject = "Work Request has Assigned on Schedule";
		$body = "
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
		  <th width=15% align=left><font face=arial size=1>No Request</font></th><th width=5% align=justify>:</th> <th width=30% align=left><font face=arial size=1>".$hgetwr[nowr]."</font>
		  <th width=15% align=left><font face=arial size=1>Company</font></th><th width=5% align=justify>:</th> <th width=30% align=left><font face=arial size=1>".$hgetcomp[company]."</font></th>
		</tr>
		
		<tr>
		  <th width=15% align=left><font face=arial size=1>Request Date</th><th width=5% align=justify>:</th> <th width=30% align=left><font face=arial size=1>".$hgetwr[date]."</font></th>
		  <th width=15% align=left><font face=arial size=1>Request to</th><th width=5% align=justify>:</th> <th width=30% align=left><font face=arial size=1>".$hgettech[tech]."</font></th>
		</tr>
		
		<tr>
		  <th width=15% align=left><font face=arial size=1>CPU Name</th><th width=5% align=justify>:</th> <th width=30% align=left><font face=arial size=1>".$hgetwr[idcomputer]."</font></th>
		  <th width=15% align=left><font face=arial size=1>Request By</th><th width=5% align=justify>:</th> <th width=30% align=left><font face=arial size=1>".$hgetwr[user]."</font></th>
		</tr>
		
		<tr>
		  <th width=15% align=left><font face=arial size=1>Approve By</th><th width=5% align=justify>:</th> <th width=30% align=left><font face=arial size=1>".$hgetwr[signature]."</font></th>
		  <th width=15% align=left><font face=arial size=1>Approve Date</th><th width=5% align=justify>:</th> <th width=30% align=left><font face=arial size=1>".$hgetwr[datesignature]."</font></th>
		</tr>
		
		<tr>
		  <th colspan=6> <font face=arial size=1>
		  <center>Issue of this Request :</center><br><br>
		  <div align=left>".$hgetwr[issue]."</div>
		  </font>
		  </th>
		</tr>
	  </table><br>
	 
	 
	 <table border=1 width=750>
		
		<tr>
			<th colspan=6 align=center><font face=arial size=2><b>Schedule Work</b></font></th>
		</tr>
		
		<tr>
		  <th width=15% align=left><font face=arial size=1>Assign By</th><th width=5% align=justify>:</th> <th width=30% align=left><font face=arial size=1>".$assign."</font></th>
		  <th width=15% align=left><font face=arial size=1>Schedule Date</th><th width=5% align=justify>:</th> <th width=30% align=left><font face=arial size=1>".$dateassign."</font></th>
		</tr>
	  </table>
	  
	  
	</body>
	</html>
		";
}
else
{
	$judul = "Reschedule Work Request";
	$subject = "Reschedule Work Request";
	$body = "
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
		  <th width=15% align=left><font face=arial size=1>No Request</font></th><th width=5% align=justify>:</th> <th width=30% align=left><font face=arial size=1>".$hgetwr[nowr]."</font>
		  <th width=15% align=left><font face=arial size=1>Company</font></th><th width=5% align=justify>:</th> <th width=30% align=left><font face=arial size=1>".$hgetcomp[company]."</font></th>
		</tr>
		
		<tr>
		  <th width=15% align=left><font face=arial size=1>Request Date</th><th width=5% align=justify>:</th> <th width=30% align=left><font face=arial size=1>".$hgetwr[date]."</font></th>
		  <th width=15% align=left><font face=arial size=1>Request to</th><th width=5% align=justify>:</th> <th width=30% align=left><font face=arial size=1>".$hgettech[tech]."</font></th>
		</tr>
		
		<tr>
		  <th width=15% align=left><font face=arial size=1>CPU Name</th><th width=5% align=justify>:</th> <th width=30% align=left><font face=arial size=1>".$hgetwr[idcomputer]."</font></th>
		  <th width=15% align=left><font face=arial size=1>Request By</th><th width=5% align=justify>:</th> <th width=30% align=left><font face=arial size=1>".$hgetwr[user]."</font></th>
		</tr>
		
		<tr>
		  <th width=15% align=left><font face=arial size=1>Approve By</th><th width=5% align=justify>:</th> <th width=30% align=left><font face=arial size=1>".$hgetwr[signature]."</font></th>
		  <th width=15% align=left><font face=arial size=1>Approve Date</th><th width=5% align=justify>:</th> <th width=30% align=left><font face=arial size=1>".$hgetwr[datesignature]."</font></th>
		</tr>
		
		<tr>
		  <th colspan=6> <font face=arial size=1>
		  <center>Issue of this Request :</center><br><br>
		  <div align=left>".$hgetwr[issue]."</div>
		  </font>
		  </th>
		</tr>
	  </table><br>
	 
	 
	 <table border=1 width=750>
		
		<tr>
			<th colspan=6 align=center><font face=arial size=2><b>Schedule Work</b></font></th>
		</tr>
		
		<tr>
		  <th width=15% align=left><font face=arial size=1>Assign By</th><th width=5% align=justify>:</th> <th width=30% align=left><font face=arial size=1>".$assign."</font></th>
		  <th width=15% align=left><font face=arial size=1>Schedule Date</th><th width=5% align=justify>:</th> <th width=30% align=left><font face=arial size=1>".$dateassign."</font></th>
		</tr>
	  </table>
	  
	  
	</body>
	</html>
	";

}	
require_once('class.phpmailer.php');
$mail = new PHPMailer(true);
$mail->IsSMTP();
try {
    $mail->Host       = "gmail.com"; // isi dengan host sesuai keinginan Anda
    $mail->SMTPAuth   = true;
    $mail->SMTPSecure = "ssl";
    $mail->Host       = "smtp.gmail.com";
    $mail->Port       = 465;
    $mail->Username   = 'sistem.konfigurasi@gmail.com';  // isi dengan gmail anda
    $mail->Password   = 's1st3m1234';       // isi dengan password gmail anda
    $mail->AddReplyTo('sistem.konfigurasi@gmail.com', 'Support Ticket');      
    $mail->AddAddress($receipt, 'Leader of '.$hgetwr[iddivisi]); // isi alamat tujuan email, NB : khusus untuk mengirim dari gmail ke yahoo agak lama
    $mail->SetFrom('sistem.konfigurasi@gmail.com', 'Support Ticket'); 
    $mail->Subject = $subject;
	$mail->Header = "MIME-Version: 1.0" . "\r\n";
	$mail->Header = "Content-type:text/html;charset=iso-8859-1" . "\r\n";
    $mail->AltBody = 'Untuk melihat email ini, gunakan browser yang kompatibel dengan html';
    $mail->Body = $body;
	$mail->Send();

} catch (phpmailerException $e){
    echo $e;
} catch (Exception $e) {
    echo $e;
}




//$headers = "From : info@ipak.co.id";
//$headers = "MIME-Version: 1.0" . "\r\n";
//$headers = "Content-type:text/html;charset=iso-8859-1" . "\r\n";

	
		header ("location:request.php");



?>