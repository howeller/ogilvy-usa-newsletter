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

function sendMimeMail( $fromName, $fromEmail, $toEmail, $subject, $html ) {
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

function limitWidow( $string ) {
  return( preg_replace( '/[ ]([^ ]+)$/', '&nbsp;$1', $string ) );
}

?>