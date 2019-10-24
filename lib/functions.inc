<?php

function makeModule( $row ) {
  $name = strtoupper( str_replace( ' ', '_', $row['NAME'] ) );
  
  $module = new stdClass();
  $module->NAME = $name;
  $module->TITLE = $row['TITLE'];
  $module->SUBTITLE = $row['SUBTITLE'];
  $module->BODYCOPY = $row['BODY COPY'];
  $module->IMAGE = $row['IMAGE'];
  $module->LINKURL = $row['LINK URL'];
  $module->TEMPLATE = strtolower($name).'.tpl';  
  return( $module );
}

?>