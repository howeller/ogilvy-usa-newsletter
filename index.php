<?php
require( 'lib/dxa_smartsheet.inc' );
require( 'lib/dxa_utility.inc' );
require( 'lib/config.inc' );
require( 'lib/functions.inc' );
require( 'vendor/autoload.php' );

$config = $GLOBALS['config'];

$action = $_REQUEST['action'] ?? 'html';

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
      if( $name == 'HERO' ) {
        $data->global->$name = makeModule( $row );
      } else {
        $data->global->$name = $row['TITLE'];
      }
      break;

    case 'BODY':
      $bodyModules[] = makeModule( $row );
      break;
    
    case 'BOTTOM':
      $data->bottom[] = makeModule( $row );
      break;
    
    default:
      $data->errors[] = 'Unknown section '.$row['SECTION'].' in row '.($rowIndex+1);
      break;
  }
}

if( empty( $bodyModules ) ) {
  $data->errors[] = 'No BODY (card) modules defined';
}

if( !empty( $data->errors ) ) {
  print renderTemplate( $config->errorTemplate, $data );
  exit;
}

$data->body = array_chunk( $bodyModules, 2 );

switch( $action ) {
  case 'debug':
    showHeader( 'text' );
    print_r( $data );
    exit;
  
  case 'html':
    print renderTemplate( $config->mainTemplate, $data );
    break;
  
  default:
    showError( 'Unknown action '.$action );
}

?>