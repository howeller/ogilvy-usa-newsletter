<?php
function renderTemplate( $template, $data, $expand=true ) {
  try {
    $smarty = new Smarty();
    $smarty->error_reporting = E_ALL;
    $smarty->caching = 0;
    $smarty->left_delimiter = "{{"; 
    $smarty->right_delimiter = "}}";
    $smarty->error_unassigned = true;
  } catch( Exception $exception ) {
    $message = 'DXALib Utility renderTemplate() : '.$exception->getMessage();
    error_log( $message );
    die( $message );
  }
    
  if( $expand ) {
    foreach( $data as $name => $value ) {
      $smarty->assign( $name, $value );
    }
  } else {
    $smarty->assign( 'data', $data );
  }
  try {
    $code = $smarty->fetch( $template );
    return( $code );
  } catch( Exception $exception ) {
    $message = 'DXALib Utility renderTemplate() : '.$exception->getMessage() ;
    error_log( $message );
    die( $message );
  }
}

function showHeader( $type='html', $fileName='' ) {
  switch( $type ) {
    case 'text':
      header( 'Content-Type: text/plain; charset=utf-8' );
      break;
    
    case 'download':
      if( $fileName == '' ) {
        throw new Exception( 'DXALib Utility showHeader(): fileName parameter is required for download action' );
      }
      header( 'Content-disposition: attachment; charset=utf-8; filename=' . $fileName );
      break;
    
    case 'html':
      header( 'Content-Type: text/html; charset=utf-8' );
      break;
    
    case 'reload':
      header( 'Location: '.$_SERVER['PHP_SELF'] ); die;
      break;
  }
}

function showError( $message ) {
  showHeader( 'text' );
  die( 'Error: '.$message );
}

function doBasicAuth( $username, $password, $realm = 'DXA Site' ) {
  $sUser = $_SERVER['PHP_AUTH_USER'] ?? false;
  $sPass = $_SERVER['PHP_AUTH_PW'] ?? false;
  if( $sUser !== $username || $sPass !== $password ) {
    header( 'WWW-Authenticate: Basic realm="'.$realm.'"' );
    header( 'HTTP/1.0 401 Unauthorized' );
    showError( 'Username and Password required to access this page' );
  }
}
?>