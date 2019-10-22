<?php
$config = new stdClass();

$config->key = 'z8nbucmcqkbgrl67bc0svpm6q';
$config->contentSheetId = '4529001457837956';
$config->emailSheetID = '7500895488370564';

$config->mainTemplate = 'templates/email_template.tpl';
$config->errorTemplate = 'templates/errors.tpl';

$config->fromName = 'Ogilvy USA Email Preview';
$config->FromAddress = 'preview_noreply@dxa.ogilvy-digital.com';
$config->subjectPrefix = 'Ogilvy USA Newsletter Preview: ';
$config->downloadPrefix = 'Ogilvy_USA_Newsletter_';

$config->server = true;
if( strpos( $_SERVER['SERVER_NAME'], 'ogilvy-digital.com' ) === false ) {
  $config->server = false;
}

/*
$config->leftAllowed = ['MODULE_PIC_RIGHT', 'MODULE_PIC_LEFT', 'MODULE_SECTION_TITLE'];
$config->rightAllowed = ['MODULE_PIC_TOP', 'MODULE_SECTION_TITLE'];
*/

$GLOBALS['config'] = $config;
?>