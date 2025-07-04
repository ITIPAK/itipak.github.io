<?php
//============================================================================================================================================================
//============================================================================================================================================================
//New Request (Hold)
require_once('class.phpmailer.php');
$lokasi = $_GET['lokasi'];
$ip = $_SERVER['REMOTE_ADDR'];
$subject = "Update Lokasi dan IP";

$mail = new PHPMailer(true);
$mail->IsSMTP();
try {
    $mail->Host       = "smtp.gmail.com";
    $mail->SMTPAuth   = true;
    $mail->SMTPSecure = "ssl";
   
    $mail->Port       = 465;
    $mail->Username   = 'ipak.gps@gmail.com';  // isi dengan gmail anda
    $mail->Password   = '1p4k1p4k';       // isi dengan password gmail anda   
	$mail->AddReplyTo('it.vip001@gmail.com', 'Support GPS'); 
    $mail->AddAddress('it.vip001@gmail.com'); // isi alamat tujuan email, NB : khusus untuk mengirim dari gmail ke yahoo agak lama
    $mail->SetFrom('ipak.gps@gmail.com', 'Support GPS'); 
    $mail->Subject = $subject;
	$mail->SMTPDebug = 1;
	$mail->Header = "MIME-Version: 1.0" . "\r\n";
	$mail->Header = "Content-type:text/html;charset=iso-8859-1" . "\r\n";
    $mail->AltBody = 'Untuk melihat email ini, gunakan browser yang kompatibel dengan html';
    $mail->Body = 
	"
	Lokasi = $lokasi dengan IP Publik = $ip;
	";
   $mail->Send();
   
   header("location:http://www.google.co.id");
    
} catch (phpmailerException $e){
    echo $e;
} catch (Exception $e) {
    echo $e;
}



		


//$headers = "From : info@ipak.co.id";
//$headers = "MIME-Version: 1.0" . "\r\n";
//$headers = "Content-type:text/html;charset=iso-8859-1" . "\r\n";
//if ($status=='H')
//{
	//if (mail($receipt,$subject,$txt,$headers))

//}
//else
//{
//	mail($receipt,$subject,$txt,$headers)
//}

?>