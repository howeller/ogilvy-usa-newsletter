{{$COLOR_OFF_WHITE = '#F0F0F0'}}
{{if $global->THEME=='BLACK'}}
	{{$THEME_BACKGROUND_COLOR = '#000000'}}
	{{$THEME_TXT_COLOR = '#ffffff'}}
	{{$THEME_TARTAN_IMG = 'https://sf-asset-manager.s3.amazonaws.com/97311/586/687.png'}}
	{{$THEME_TITLE_IMG = 'https://sf-asset-manager.s3.amazonaws.com/97311/586/682.png'}}
	{{$THEME_LOGO_IMG = 'https://sf-asset-manager.s3.amazonaws.com/97311/586/687.png'}}
{{elseif ($global->THEME=='LIGHT GRAY') or ($global->THEME=='LIGHT GREY')}}
	{{$THEME_BACKGROUND_COLOR = '#A6A6A8'}}
	{{$THEME_TXT_COLOR = '#000000'}}
	{{$THEME_TARTAN_IMG = 'https://sf-asset-manager.s3.amazonaws.com/97311/586/686.png'}}
	{{$THEME_TITLE_IMG = 'https://sf-asset-manager.s3.amazonaws.com/97311/586/680.png'}}
	{{$THEME_LOGO_IMG = 'https://sf-asset-manager.s3.amazonaws.com/97311/586/684.png'}}
{{elseif $global->THEME=='DARK ROSE'}}
	{{$THEME_BACKGROUND_COLOR = '#F58E8F'}}
	{{$THEME_TXT_COLOR = '#000000'}}
	{{$THEME_TARTAN_IMG = 'https://sf-asset-manager.s3.amazonaws.com/97311/586/686.png'}}
	{{$THEME_TITLE_IMG = 'https://sf-asset-manager.s3.amazonaws.com/97311/586/680.png'}}
	{{$THEME_LOGO_IMG = 'https://sf-asset-manager.s3.amazonaws.com/97311/586/684.png'}}
{{elseif $global->THEME=='LIGHT ROSE'}}
	{{$THEME_BACKGROUND_COLOR = '#FBCECE'}}
	{{$THEME_TXT_COLOR = '#eb3f43'}}
	{{$THEME_TARTAN_IMG = 'https://sf-asset-manager.s3.amazonaws.com/97311/586/686.png'}}
	{{$THEME_TITLE_IMG = 'https://sf-asset-manager.s3.amazonaws.com/97311/586/683.png'}}
	{{$THEME_LOGO_IMG = 'https://sf-asset-manager.s3.amazonaws.com/97311/586/685.png'}}
{{else}}
	{{$THEME_BACKGROUND_COLOR = '#eb3f43'}}
	{{$THEME_TXT_COLOR = '#ffffff'}}
	{{$THEME_TARTAN_IMG = 'https://sf-asset-manager.s3.amazonaws.com/97311/586/686.png'}}
	{{$THEME_TITLE_IMG = 'https://sf-asset-manager.s3.amazonaws.com/97311/586/682.png'}}
	{{$THEME_LOGO_IMG = 'https://sf-asset-manager.s3.amazonaws.com/97311/586/687.png'}}
{{/if}}
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html lang="en">

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1" />
	<meta name="format-detection" content="telephone=no, address=no, email=no, date=no" />
	<meta name="color-scheme" content="light dark">
	<meta name="supported-color-schemes" content="light dark">
	<meta name="x-apple-disable-message-reformatting" />
	<!--[if !mso]><!-->
	<meta http-equiv="X-UA-Compatible" content="IE=edge" />
	<!--<![endif]-->
	<title>The Pulse : Ogilvy {{$global->VERSION}}</title>
	<!--[if (gte mso 9)|(IE)]>
	<xml xmlns:v="urn:schemas-microsoft-com:vml" xmlns:o="urn:schemas-microsoft-com:office:office" xmlns:w="urn:schemas-microsoft-com:office:word">
		<o:OfficeDocumentSettings>
		<o:AllowPNG/>
		<o:PixelsPerInch>96</o:PixelsPerInch>
		</o:OfficeDocumentSettings>
	</xml>
	<![endif]-->
	<!--[if gte mso 9]>
	<style> 
		.vml-p {
			margin:0;
			font-size:0;
			line-height:0;
		} 
		v\:* {
			behavior:url(#default#VML);
		}
	</style>
	<![endif]-->
	<!-- styles will be inlined -->
	<link rel="stylesheet" type="text/css" href="moduleStyles.css"><link rel="stylesheet" type="text/css" href="inlinedStyles.css"><link rel="stylesheet" type="text/css" href="inlinedTextStyles.css">
	<!-- styles will be embedded and not inlined -->
	<link rel="stylesheet" type="text/css" href="embeddedStyles.css" data-embed>
</head>

<body>
	<div class="hide">{{$global->HEADER_PREHEADER_TEXT}}</div>
	<center>
		<!-- Email Header : BEGIN -->
		{{include file='module_header.tpl'}}
		<!-- Email Header : End -->
		{{include file='module_executive.tpl'}}
		<!-- Email Body : BEGIN -->
		<table class="body-container" align="center" border="0" cellspacing="0" cellpadding="0" role="presentation">
			{{foreach $sections as $section_index => $section}}
			{{assign var=sectionTitle value=$section[0]}}
			{{assign var=mySection value=$section[1]}}
			{{if !empty( $mySection )}}<tr>
				<td class="section-title-container">
					<table border="0" cellspacing="0" cellpadding="0" role="presentation">
						<tr>
							<td><img src="https://sf-asset-manager.s3.amazonaws.com/97311/586/681.png" alt="" class="tartan4" width="277"/></td>
						</tr>
						<tr>
							<td class="section-title-text">
								{{$sectionTitle}}
							</td>
						</tr>
					</table>
				</td>
			</tr>
			{{*assign var=moduleCount value=0*}}
			{{foreach $mySection as $modulePair}}
			<!-- {{strtoupper($section_index)}} CARD ROW : Start -->
			{{if count($modulePair) == 2}}
			<tr>
				<td class="body-container-inner" align="center" valign="top" width="100%">
					{{* Begin Module pair wrapper *}}
					<!--[if (gte mso 9)|(IE)]><table align="left" border="0" cellpadding="0" cellspacing="0"  style="border-spacing: 0; border-collapse: collapse; mso-table-lspace: 0pt; mso-table-rspace: 0pt; vertical-align: top; display: inline-table;"><tr><td><![endif]-->
					<!-- Card Module Left: Start -->
					{{*assign var=moduleCount value=$moduleCount+1*}}{{assign var=module value=$modulePair[0]}}{{include file=$modulePair[0]->TEMPLATE}}
					<!-- Card Module Left: End -->
					{{* Divider for module pairs *}}
					<!--[if (gte mso 9)|(IE)]></td><td><![endif]-->
					<!-- Card Module Right : Start -->
					{{*assign var=moduleCount value=$moduleCount+1*}}{{assign var=module value=$modulePair[1]}}{{include file=$modulePair[1]->TEMPLATE}}
					<!-- Card Module Right : End -->
					{{* End Module pair wrapper *}}
					<!--[if (gte mso 9)|(IE)]></td></tr></table><![endif]-->
				</td>
			</tr>
			{{else}}
			<tr>
				<td class="body-container-inner" align="center" valign="top" width="100%">
					{{*assign var=moduleCount value=$moduleCount+1*}}{{assign var=module value=$modulePair[0]}}{{include file='module_card_fullwidth.tpl'}}
				</td>
			</tr>
			{{/if}}
			<!-- {{strtoupper($section_index)}} CARD ROW : End -->
			{{/foreach}}
			<tr>
				<td class="gap30">&nbsp;</td>
			</tr>
			{{/if}}
			{{/foreach}}

		</table>
		<!-- Email Body : End -->
		<!-- Footer : Start -->
		<table class="fullbleed-container" align="center" bgcolor="{{$COLOR_OFF_WHITE}}" border="0" cellspacing="0" cellpadding="0" width="100%" role="presentation">
			<tr>
				<td align="center" bgcolor="{{$COLOR_OFF_WHITE}}" valign="top">
					<table class="email-container" align="center" border="0" cellspacing="0" cellpadding="0" role="presentation">
						<tr>
							<td class="gap20">&nbsp;</td>
						</tr>
						<tr>
							<td class="email-container-inner">
								<table border="0" cellspacing="0" cellpadding="0" width="100%" role="presentation">
									<tr>
										<th class="footer-item-container" valign="top" align="left" role="presentation">
											<table border="0" cellspacing="0" cellpadding="0" role="presentation">
												<tr>
													<td class="footer-txt" valign="top">
														Contributions, questions, feedback,<br />
														Please email <a class="footer-txt" href="{{$global->FOOTER_LINK}}" target="_blank"><span class="footer-txt">{{$global->FOOTER_LINK_TEXT}}</span></a>
													</td>
												</tr>
											</table>
										</th>
										<th class="footer-item-container" align="left" role="presentation">
											<table border="0" cellspacing="0" cellpadding="0" role="presentation">
												<tr>
													<td class="social-txt" valign="top">
														<a href="https://www.facebook.com/ogilvy" class="social-txt" target="_blank"><span class="social-txt">Facebook</span></a><br />
														<a href="https://twitter.com/Ogilvy" class="social-txt" target="_blank"><span class="social-txt">Twitter</span></a><br />
														<a href="https://instagram.com/ogilvy/" class="social-txt" target="_blank"><span class="social-txt">instagram</span></a><br />
														<a href="https://www.linkedin.com/company/ogilvy/" class="social-txt" target="_blank"><span class="social-txt">LinkedIn</span></a><br />
													</td>
												</tr>
											</table>
										</th>
									</tr>
								</table>
							</td>
						</tr>
						<tr>
							<td class="gap20">&nbsp;</td>
						</tr>
						<tr>
							<td><img src="https://sf-asset-manager.s3.amazonaws.com/97311/586/686.png" alt="" class="tartan8" width="277" height="8"/></td>
						</tr>
					</table>
				</td>
			</tr>
		</table>
		<!-- Footer : End -->
	</center>
</body>