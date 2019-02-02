<?php 

class Mail
{


function programacion($numero,$paciente,$correo,$nombre,$tipo)
{


//Create a new PHPMailer instance
$mail = new PHPMailer\PHPMailer\PHPMailer;

//Tell PHPMailer to use SMTP
$mail->isSMTP();

//Debug
$mail->SMTPDebug = 0;

//Set the hostname of the mail server
$mail->Host = 'smtp.gmail.com';

//Puerto
$mail->Port = 587;

//Códificación de Caracteres
$mail->CharSet = "utf-8";

//Set the encryption system to use - ssl (deprecated) or tls
$mail->SMTPSecure = 'tls';

//Whether to use SMTP authentication
$mail->SMTPAuth = true;

//Username to use for SMTP authentication - use full email address for gmail
$mail->Username = USER_MAIL;

//Password to use for SMTP authentication
$mail->Password = USER_PASS;

//Set who the message is to be sent from
$mail->setFrom(USER_MAIL, 'Soporte');

//Correo de Sistemas
//$mail->addAddress('soporte@promedonperu.com','Sistemas');

//Correo de Ventas
//$mail->addAddress('ventas@promedonperu.com','Ventas');

//PerúTec
//$mail->addAddress('luis.claudio@perutec.com.pe','PerúTEC');

//Ventas
$mail->addAddress($correo,$nombre);


//Set the subject line
$mail->Subject = $tipo.' Aprobada N° - '.$numero;

//Cuerpo del Correo 
$funciones =  new Funciones();
$query  = "SELECT * FROM plantilla_correo WHERE id=1";
$result = $funciones->query($query)[0];
$html = $result['seccion_1'].$result['seccion_2'];
$html = str_replace('#documento#',$tipo,$html);
$html = str_replace('#numero#',$numero,$html);
$html = str_replace('#tipo#',$tipo,$html);
$html = str_replace('#paciente#','<strong>'.$paciente.'</strong>',$html);
$mail->msgHTML($html);

//Adjunto
//$mail->addAttachment('images/phpmailer_mini.png');

//send the message, check for errors
if (!$mail->send()) 
{
$msg_mail = "Mailer Error: " . $mail->ErrorInfo;
} 
else 
{

$msg_mail =  "Message sent!";

}

return $msg_mail;


}



}


 ?>