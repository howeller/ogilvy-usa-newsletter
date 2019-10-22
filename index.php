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

showHeader( 'text' );

print_r( $sheet->getRowData() );


?>