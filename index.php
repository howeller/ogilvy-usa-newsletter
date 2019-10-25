<?php
require( 'lib/dxa_smartsheet.inc' );
require( 'lib/dxa_utility.inc' );
require( 'lib/config.inc' );
require( 'lib/functions.inc' );
require( 'vendor/autoload.php' );

$config = $GLOBALS['config'];

$action = $_REQUEST['action'] ?? 'html';
if( $action == 'email' && $config->server === false ) {
	showError( 'Cannot send preview email from local machine' );
	exit;
}

try {
  $sheet = new SS_Sheet( $config->key, $config->contentSheetId );
} catch( Exception $e ) {
  showError( 'Error: '.$e->getMessage() );
  exit;
}

$data = new stdClass();
$data->errors = [];
$data->global = new stdClass();
$data->body = [];
$data->bottom = [];
$bodyModules = [];

foreach( $sheet->getRowData() as $rowIndex => $row ) {
  $name = strtoupper( str_replace( ' ', '_', $row['NAME'] ) );
  switch( $row['SECTION'] ) {
    case 'GLOBAL':
      switch( $name ) {
        case 'HERO':
          $data->global->$name = makeModule( $row );
          break;
        
        case 'THEME':
          $data->global->$name = strtoupper( $row['TITLE'] );
          break;
        
        default:
          $data->global->$name = $row['TITLE'];
      }
      break;

    case 'BODY':
      $bodyModules[] = makeModule( $row );
      break;
    
    case 'BOTTOM':
      $data->bottom[] = makeModule( $row );
      break;
    
    case '':
      break;
    
    default:
      $data->errors[] = 'Unknown section '.$row['SECTION'].' in row '.($rowIndex+1);
      break;
  }
}

if( empty( $bodyModules ) ) {
  $data->errors[] = 'No BODY (card) modules defined';
}

$data->body = array_chunk( $bodyModules, 2 );

if( $action == 'debug' ) {
  showHeader( 'text' );
  print_r( $data );
  exit;
}

if( !empty( $data->errors ) ) {
  print renderTemplate( $config->errorTemplate, $data );
  exit;
}

$emailCode = renderTemplate( $config->mainTemplate, $data );
$version = str_replace( ' ', '_', $data->global->VERSION ); // for export action

switch( $action ) {
  case 'html':
    print $emailCode;
    break;
  
  case 'email':
    $toEmail = getEmailAddresses( $config );
    sendMimeMail( $config->fromName, $config->FromAddress, $toEmail, $config->subjectPrefix.$version , $emailCode );
    print 'Email sent';
    break;
  
  case 'export':
    showHeader( 'download', $config->downloadPrefix.str_replace( ' ', '_', $version ).'.html' );
    print $emailCode;
    break;
  
  default:
    showError( 'Unknown action '.$action );
}

?>