<?php
require_once( 'lib/dxa_smartsheet.inc' );
require_once( 'lib/dxa_utility.inc' );
require_once( 'lib/config.inc' );
$config = $GLOBALS['config'];

try {
  $sheet = new SS_Sheet( $config->key, $config->contentSheetId );
} catch( Exception $e ) {
  print 'Error: '.$e->getMessage();
  exit;
}

$data = new stdClass();
$data->global = new stdClass();

showHeader( 'text' );

print_r( $sheet->getRowData() );
foreach( $sheet->getRowData() as $row ) {
  $name = strtoupper( str_replace( ' ', '_', $row['NAME'] ) );
  switch( $row['SECTION'] ) {
    case 'GLOBAL':
      $data->global->$name = $row['TITLE'];
      break;
    
    case 'BODY':
      $module = new stdClass();
      $module->name = $name;
      $module->title = $row['TITLE'];
      $module->subtitle = $row['SUBTITLE'];
      $module->bodycopy = $row['BODY COPY'];
      $module->image = $row['IMAGE'];
      $module->linkurl = $row['LINK URL'];
      $data->modules[] = $module;
      break;
    
    default:
      // ERROR
      break;
  }
}

print_r( $data );


?>