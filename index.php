<?php
require_once( 'lib/dxa_smartsheet.inc' );
require_once( 'lib/dxa_utility.inc' );
require_once( 'lib/config.inc' );
require( 'vendor/autoload.php' );

$config = $GLOBALS['config'];

function makeModule( $row ) {
  $name = strtoupper( str_replace( ' ', '_', $row['NAME'] ) );
  
  $module = new stdClass();
  $module->NAME = $name;
  $module->TITLE = $row['TITLE'];
  $module->SUBTITLE = $row['SUBTITLE'];
  $module->BODYCOPY = $row['BODY COPY'];
  $module->IMAGE = $row['IMAGE'];
  $module->LINKURL = $row['LINK URL'];
  
  return( $module );
}

try {
  $sheet = new SS_Sheet( $config->key, $config->contentSheetId );
} catch( Exception $e ) {
  print 'Error: '.$e->getMessage();
  exit;
}

$data = new stdClass();
$data->global = new stdClass();
$data->body = [];
$data->bottom = [];


foreach( $sheet->getRowData() as $row ) {
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
      $data->body[] = makeModule( $row );
      break;
    
    case 'BOTTOM':
      $data->bottom[] = makeModule( $row );
      break;
    
    default:
      // ERROR
      break;
  }
}

showHeader( 'text' );
print_r( $data );
exit;
print renderTemplate( 'templates/email_template_sc.tpl', $data );


?>