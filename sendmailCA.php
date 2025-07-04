<?php
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
    $mail->AddAddress($htech[email], 'Tehnical Support'); // isi alamat tujuan email, NB : khusus untuk mengirim dari gmail ke yahoo agak lama
    $mail->SetFrom('sistem.konfigurasi@gmail.com', 'Support Ticket'); 
    $mail->Subject = $subject;
	$mail->Header = "MIME-Version: 1.0" . "\r\n";
	$mail->Header = "Content-type:text/html;charset=iso-8859-1" . "\r\n";
    $mail->AltBody = 'Untuk melihat email ini, gunakan browser yang kompatibel dengan html';
    $mail->Body = 
	 "
	<html>
	<head>
	  <title></title>
	</head>
	<body>
	  
	  <table border=1 width=750>
		<tr>
			<th colspan=6 align=center><font face=arial size=2><b>Work Request Canceled</b></font></th>
		</tr>
		
		<tr>
		  <th width=15% align=left><font face=arial size=1>No Request</font></th><th width=5% align=justify>:</th> <th width=30% align=left><font face=arial size=1>".$nocet."</font>
		  <th width=15% align=left><font face=arial size=1>Company</font></th><th width=5% align=justify>:</th> <th width=30% align=left><font face=arial size=1>".$hcekcomp[company]."</font></th>
		</tr>
		
		<tr>
		  <th width=15% align=left><font face=arial size=1>Request Date</th><th width=5% align=justify>:</th> <th width=30% align=left><font face=arial size=1>".$hwr[date]."</font></th>
		  <th width=15% align=left><font face=arial size=1>Request to</th><th width=5% align=justify>:</th> <th width=30% align=left><font face=arial size=1>".$htech[tech]."</font></th>
		</tr>
		
		<tr>
		  <th width=15% align=left><font face=arial size=1>CPU Name</th><th width=5% align=justify>:</th> <th width=30% align=left><font face=arial size=1>".$hwr[idcomputer]."</font></th>
		  <th width=15% align=left><font face=arial size=1>Request By</th><th width=5% align=justify>:</th> <th width=30% align=left><font face=arial size=1>".$hwr[user]."</font></th>
		</tr>
		
		<tr>
		  <th width=15% align=left><font face=arial size=1>Approve Date</th><th width=5% align=justify>:</th> <th width=30% align=left><font face=arial size=1>".$datesign."</font></th>
		  <th width=15% align=left><font face=arial size=1>Approve By</th><th width=5% align=justify>:</th> <th width=30% align=left><font face=arial size=1>".$hcekval[leader]."</font></th>
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

	$mail->Send();

} catch (phpmailerException $e){
    echo $e;
} catch (Exception $e) {
    echo $e;
}


?>