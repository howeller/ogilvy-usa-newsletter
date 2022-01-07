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
// $data->body = [];
// $data->bottom = [];
$data->capabilities = [];
$data->careers = [];
$data->clients = [];
$data->community = [];
$data->creativity = [];

// $bodyModules = [];
$capabilitiesModules = [];
$careersModules = [];
$clientsModules = [];
$communityModules = [];
$creativityModules = [];


foreach( $sheet->getRowData() as $rowIndex => $row ) {
  $name = strtoupper( str_replace( ' ', '_', $row['NAME'] ) );
  switch( $row['SECTION'] ) {
    case 'GLOBAL':
      switch( $name ) {
        case 'HERO':
          $data->global->$name = makeModule( $row );
          break;

        case 'EXECUTIVE':
          $data->global->$name = makeModule( $row );
          break;
        
        case 'THEME':
          $data->global->$name = strtoupper( $row['TITLE'] );
          break;
        
        default:
          $data->global->$name = $row['TITLE'];
      }
      break;

    // case 'BODY':
    //   $bodyModules[] = makeModule( $row );
    //   break;

    // case 'BOTTOM':
    //   $data->bottom[] = makeModule( $row );
    //   break;

    case 'CAPABILITIES':
      $capabilitiesModules[] = makeModule( $row );
      break;

    case 'CAREERS':
      $careersModules[] = makeModule( $row );
      break;

    case 'CLIENTS':
      $clientsModules[] = makeModule( $row );
      break;

    case 'COMMUNITY':
      $communityModules[] = makeModule( $row );
      break;
    
    case 'CREATIVITY': 
      $creativityModules[] = makeModule( $row );

    case '':
      break;
    
    default:
      $data->errors[] = 'Unknown section '.$row['SECTION'].' in row '.($rowIndex+1);
      break;
  }
}

/* COUNT ALL MODULES IN ALL SECTIONS AND IF 0 THROW ERROR HERE  
if( empty( $bodyModules ) ) {
  $data->errors[] = 'No BODY (card) modules defined';
}*/

// $data->body = array_chunk( $bodyModules, 2 );
$data->capabilities = array_chunk( $capabilitiesModules, 2 );
$data->careers = array_chunk( $careersModules, 2 );
$data->clients = array_chunk( $clientsModules, 2 );
$data->community = array_chunk( $communityModules, 2 );
$data->creativity = array_chunk( $creativityModules, 2 );

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
    $emailCode = str_replace( '</head>', $config->ga.'</head>', $emailCode );
    print $emailCode;
    break;
  
  case 'email':
    $toEmail = getEmailAddresses( $config );
    sendMimeMail( $config->fromName, $config->FromAddress, $toEmail, $config->subjectPrefix.$version , $emailCode );
    showHeader( 'reload' );
    break;
  
  case 'export':
    $fileName = str_replace( ',', '_', $config->downloadPrefix.str_replace( ' ', '_', $version ).'.html' );
    showHeader( 'download', $fileName );
    print $emailCode;
    break;
  
  default:
    showError( 'Unknown action '.$action );
}

?>