<?php

function makeModule( $row ) {
  $name = strtoupper( str_replace( ' ', '_', $row['NAME'] ) );
  
  $module = new stdClass();
  $module->NAME = $name;
  $module->TITLE = limitWidow( $row['TITLE'] );
  // $module->SUBTITLE = limitWidow( $row['SUBTITLE'] );
  $module->BODYCOPY = limitWidow( $row['BODY COPY'] );
  $module->IMAGE = $row['IMAGE'];
  $module->LINKURL = $row['LINK URL'];
  $module->TEMPLATE = strtolower($name).'.tpl';  
  return( $module );
}

function getEmailAddresses( $config ) {    
  try {
    $emailSheetRaw = new SS_Sheet( $config->key, $config->emailSheetID );
  } catch( Exception $e ) {
    showError( 'Error getting email addressess: '.$e->getMessage() );
    exit;
  }
  $emailSheet = $emailSheetRaw->getRowData();
  $emails = [];
  foreach( $emailSheet as $row ) {
    if( $row['Enable'] == 1 ) {
      $emails[] = $row['Email Address'];
    }
  }
  if( count( $emails ) == 0 ) {
    showError( 'Error getting email addressess: no email addresses enabled' );
    exit;
  }
  return( implode( ',', $emails ) );
}

function OLDsendMimeMail( $fromName, $fromEmail, $toEmail, $subject, $html ) {
	$boundary = uniqid('np');
	
  $headers  = "MIME-Version: 1.0\n";
  $headers .= "From: ".$fromName." <".$fromEmail.">\n";
  $headers .= "Reply-To: ".$fromEmail."\n";
  $headers .= "Return-Path: <".$fromEmail.">\n";
  $headers .= "Content-Type: multipart/alternative;boundary=" . $boundary . "\n";

	$message = "This is a MIME encoded message.";
	$message .= "\n\n--" . $boundary . "\n";
	$message .= "Content-type: text/html;charset=utf-8\n\n";
	$message .= $html;

  if( mail( $toEmail, $subject, $message, $headers ) == false ) {
    error_log( 'Failed sending email to '.$toEmail );
    return( false );
  } else {
    return( true );
  }
}

// New Mime sender using AWS 
function sendMimeMail( $fromName, $fromEmail, $toEmail, $subject, $html ) {
	$mail = new PHPMailer(true);

	try {
		//Server settings
		$mail->SMTPDebug = SMTP::DEBUG_OFF;
		$mail->isSMTP();
		$mail->Host = 'email-smtp.us-east-1.amazonaws.com';
		$mail->SMTPAuth = true;
		$mail->Username = 'AKIATM4PRBCM4OAPKHGU';
		$mail->Password = 'BGa98PxJeNYQf7lZKiFY7yAhKv090TrV3a94rDk6SiYb';
		$mail->SMTPSecure = PHPMailer::ENCRYPTION_STARTTLS;
		$mail->Port = 587;

		//Recipients
		$mail->setFrom( $fromEmail, $fromName );
		foreach( explode(',', $toEmail ) as $to ) {
			$mail->addAddress( trim($to) );
		}

		// Content
		$mail->CharSet = 'UTF-8';
		$mail->Encoding = 'base64';
		$mail->isHTML(true);
		$mail->Subject = $subject;
		$mail->Body = $html;
		
		$mail->send();
		error_log( 'Message has been sent' );
	} catch (Exception $e) {
		error_log( "Message could not be sent. Mailer Error: {$mail->ErrorInfo}" );
		return( false );
	}
	
	return( true );
}
?>

function limitWidow( $string ) {
  return( preg_replace( '/[ ]([^ ]+)$/', '&nbsp;$1', $string ) );
}

?>