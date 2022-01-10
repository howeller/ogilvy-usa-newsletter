<?php
$config = new stdClass();

$config->key = 'z8nbucmcqkbgrl67bc0svpm6q';
$config->contentSheetId = '3938413045933956';
// $config->contentSheetId = '4529001457837956';
$config->emailSheetID = '7500895488370564';

$config->mainTemplate = 'templates/email_template.tpl';
$config->errorTemplate = 'templates/errors.tpl';

$config->fromName = 'Ogilvy The Pulse Email Preview';
$config->FromAddress = 'preview_noreply@dxa.ogilvy-digital.com';
$config->subjectPrefix = 'Ogilvy The Pulse Newsletter Preview: ';
$config->downloadPrefix = 'Ogilvy_The_Pulse_Newsletter_';

$config->server = true;
if( strpos( $_SERVER['SERVER_NAME'], 'ogilvy-digital.com' ) === false ) {
  $config->server = false;
}

$config->ga = '
	<!-- Global site tag (gtag.js) - Google Analytics -->
	<script async src="https://www.googletagmanager.com/gtag/js?id=UA-174201828-1"></script>
	<script>
		window.dataLayer = window.dataLayer || [];
		function gtag(){dataLayer.push(arguments);}
		gtag(\'js\', new Date());

		gtag(\'config\', \'UA-174201828-1\');
	</script>';

$GLOBALS['config'] = $config;
?>