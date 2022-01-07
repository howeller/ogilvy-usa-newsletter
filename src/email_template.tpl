{{$COLOR_OFF_WHITE = '#F0F0F0'}}
{{if $global->THEME=='BLACK'}}
	{{$THEME_BACKGROUND_COLOR = '#000000'}}
	{{$THEME_TXT_COLOR = '#ffffff'}}
	{{$THEME_TARTAN_IMG = 'templates/images/tartan8_black_2x.png'}}
	{{$THEME_TITLE_IMG = 'templates/images/header_title_white_2x.png'}}
	{{$THEME_LOGO_IMG = 'https://assets.ogilvy.com/ogassets/ogmega/d894819bf1e4736a88e5ecabcb3e777375a24e04/1572037841-header_logo_white_2x.png'}}
{{elseif ($global->THEME=='LIGHT GRAY') or ($global->THEME=='LIGHT GREY')}}
	{{$THEME_BACKGROUND_COLOR = '#A6A6A8'}}
	{{$THEME_TXT_COLOR = '#000000'}}
	{{$THEME_TARTAN_IMG = 'templates/images/tartan8_2x.png'}}
	{{$THEME_TITLE_IMG = 'templates/images/header_title_black_2x.png'}}
	{{$THEME_LOGO_IMG = 'templates/images/header_logo_black_2x.png'}}
{{elseif $global->THEME=='DARK ROSE'}}
	{{$THEME_BACKGROUND_COLOR = '#F58E8F'}}
	{{$THEME_TXT_COLOR = '#000000'}}
	{{$THEME_TARTAN_IMG = 'templates/images/tartan8_2x.png'}}
	{{$THEME_TITLE_IMG = 'templates/images/header_title_red_2x.png'}}
	{{$THEME_LOGO_IMG = 'https://assets.ogilvy.com/ogassets/ogmega/d894819bf1e4736a88e5ecabcb3e777375a24e04/1572037865-header_logo_red_2x.png'}}
{{elseif $global->THEME=='LIGHT ROSE'}}
	{{$THEME_BACKGROUND_COLOR = '#FBCECE'}}
	{{$THEME_TXT_COLOR = '#eb3f43'}}
	{{$THEME_TARTAN_IMG = 'templates/images/tartan8_2x.png'}}
	{{$THEME_TITLE_IMG = 'templates/images/header_title_red_2x.png'}}
	{{$THEME_LOGO_IMG = 'https://assets.ogilvy.com/ogassets/ogmega/d894819bf1e4736a88e5ecabcb3e777375a24e04/1572037865-header_logo_red_2x.png'}}
{{else}}
	{{$THEME_BACKGROUND_COLOR = '#eb3f43'}}
	{{$THEME_TXT_COLOR = '#ffffff'}}
	{{$THEME_TARTAN_IMG = 'templates/images/tartan8_2x.png'}}
	{{$THEME_TITLE_IMG = 'templates/images/header_title_white_2x.png'}}
	{{$THEME_LOGO_IMG = 'https://assets.ogilvy.com/ogassets/ogmega/d894819bf1e4736a88e5ecabcb3e777375a24e04/1572037841-header_logo_white_2x.png'}}
{{/if}}
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html lang="en">

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1" />
	<meta name="format-detection" content="telephone=no, address=no, email=no, date=no" />
	<meta name="x-apple-disable-message-reformatting" />
	<!--[if !mso]><!-->
	<meta http-equiv="X-UA-Compatible" content="IE=edge" />
	<!--<![endif]-->
	<title>The Pulse : Ogilvy</title>
	<!--[if (gte mso 9)|(IE)]>
	<xml xmlns:v="urn:schemas-microsoft-com:vml" xmlns:o="urn:schemas-microsoft-com:office:office" xmlns:w="urn:schemas-microsoft-com:office:word"><o:OfficeDocumentSettings><o:AllowPNG/><o:PixelsPerInch>96</o:PixelsPerInch></o:OfficeDocumentSettings></xml>
	<![endif]-->
	<!--[if gte mso 9]>
	<style> .vml-p {margin:0;font-size:0;line-height:0;} v\:* {behavior:url(#default#VML);}</style>
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
		<table class="fullbleed-container" align="center" bgcolor="{{$THEME_BACKGROUND_COLOR}}" border="0" cellspacing="0" cellpadding="0" width="100%" role="main">
			<tr>
				<td align="center" bgcolor="{{$THEME_BACKGROUND_COLOR}}" valign="top">
					<table class="email-container" align="center" border="0" cellspacing="0" cellpadding="0" role="presentation">
						<tr>
							<td>
								<img src="{{$THEME_TARTAN_IMG}}" alt="" class="tartan8" width="277">
							</td>
						</tr>
						<tr>
							<td class="gap40">&nbsp;</td>
						</tr>
						<tr>
							<td class="email-container-inner">
								<table border="0" cellspacing="0" cellpadding="0" width="100%" role="presentation">
									<tr>
										<td align="left">
											<a href="{{$global->HEADER_LINK}}" target="_blank">
												<img class="header-title header-alt-txt" src="{{$THEME_TITLE_IMG}}" alt="The Pulse" width="123" height="61" style="color:{{$THEME_TXT_COLOR}};" />
											</a>
										</td>
										<td align="right" valign="middle">
											<a href="{{$global->HEADER_LINK}}" target="_blank">
												<img class="header-logo header-alt-txt" src="{{$THEME_LOGO_IMG}}" alt="Ogilvy" width="120" height="47" style="color:{{$THEME_TXT_COLOR}};" />
											</a>
										</td>
									</tr>
								</table>
							</td>
						</tr>
						<tr>
							<td class="gap40">&nbsp;</td>
						</tr>
						<!-- Hero : Start -->
						{{if isset($global->HERO->IMAGE)}}<tr>
							<td align="center">
								<!--[if (gte mso 9)|(IE)]><table width="580" border="0" cellpadding="0" cellspacing="0" style="border-spacing:0;width:580px;"><tbody><tr><td width="580" style="padding:0;width:580px;"><![endif]-->
								<table class="hero-img-wrapper" width="580" border="0" cellpadding="0" cellspacing="0" role="presentation">
									<tr>
										<td class="hero-img-wrapper" width="580" align="left" valign="top">
											<a href="{{$global->HERO->LINKURL}}" target="_blank">
												<img src="{{$global->HERO->IMAGE}}" alt="{{$global->HERO->TITLE}}" class="hero-img hero-alt-txt" width="580" border="0" style="color:{{$THEME_TXT_COLOR}};" />
											</a>
										</td>
									</tr>
								</table>
								<!--[if (gte mso 9)|(IE)]></td></tr></tbody></table><![endif]-->
							</td>
						</tr>
						<tr>
							<td class="gap20">&nbsp;</td>
						</tr>{{/if}}
						{{if isset($global->HERO->TITLE)}}<tr>
							<td class="email-container-inner" align="left" valign="top">
								<table border="0" cellpadding="0" cellspacing="0" width="100%" role="presentation">
									<tr>
										<td class="hero-h1" style="color:{{$THEME_TXT_COLOR}};">
											<a href="{{$global->HERO->LINKURL}}" target="_blank" style="color:{{$THEME_TXT_COLOR}};">{{$global->HERO->TITLE}}</a>
										</td>
									</tr>
									<tr>
										<td class="hero-body-txt" style="color:{{$THEME_TXT_COLOR}};">{{$global->HERO->BODYCOPY}}</td>
									</tr>
								</table>
							</td>
						</tr>
						<tr>
							<td class="gap20">&nbsp;</td>
						</tr>{{/if}}
						<!-- Hero : End -->
					</table>
				</td>
			</tr>
		</table>
		<!-- Email Header : End -->
		{{include file='module_executive.tpl'}}
		<!-- Email Body : BEGIN -->
		<table class="body-container" align="center" border="0" cellspacing="0" cellpadding="0" role="presentation">
			{{if !empty($creativity)}}<tr>
				<td class="section-title-container">
					<table border="0" cellspacing="0" cellpadding="0" role="presentation">
						<tr>
							<td><img src="templates/images/tartan4_2x.png" alt="" class="tartan4" width="277"></td>
						</tr>
						<tr>
							<td class="section-title-text">
								<span>OUR</span> CREATIVITY
							</td>
						</tr>
					</table>
				</td>
			</tr>
			{{*assign var=moduleCount value=0*}}
			{{foreach $creativity as $modulePair}}
			<!-- CREATIVITY CARD ROW : Start -->
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
			<!-- CREATIVITY CARD ROW : End -->
			{{/foreach}}
			<tr>
				<td class="gap30">&nbsp;</td>
			</tr>
			{{/if}}
			{{if !empty($clients)}}<tr>
				<td class="section-title-container">
					<table border="0" cellspacing="0" cellpadding="0" role="presentation">
						<tr>
							<td><img src="templates/images/tartan4_2x.png" alt="" class="tartan4" width="277"></td>
						</tr>
						<tr>
							<td class="section-title-text">
								<span>OUR</span> CLIENTS
							</td>
						</tr>
					</table>
				</td>
			</tr>
			{{*assign var=moduleCount value=0*}}
			{{foreach $clients as $modulePair}}
			<!-- CLIENTS CARD ROW : Start -->
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
			<!-- CLIENTS CARD ROW : End -->
			{{/foreach}}
			<tr>
				<td class="gap30">&nbsp;</td>
			</tr>
			{{/if}}
			{{if !empty($capabilities)}}<tr>
				<td class="section-title-container">
					<table border="0" cellspacing="0" cellpadding="0" role="presentation">
						<tr>
							<td><img src="templates/images/tartan4_2x.png" alt="" class="tartan4" width="277"></td>
						</tr>
						<tr>
							<td class="section-title-text">
								<span>OUR</span> CAPABILITIES
							</td>
						</tr>
					</table>
				</td>
			</tr>
			{{*assign var=moduleCount value=0*}}
			{{foreach $capabilities as $modulePair}}
			<!-- CAPABILITIES CARD ROW : Start -->
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
			<!-- CAPABILITIES CARD ROW : End -->
			{{/foreach}}
			<tr>
				<td class="gap30">&nbsp;</td>
			</tr>
			{{/if}}
			{{if !empty($community)}}<tr>
				<td class="section-title-container">
					<table border="0" cellspacing="0" cellpadding="0" role="presentation">
						<tr>
							<td><img src="templates/images/tartan4_2x.png" alt="" class="tartan4" width="277"></td>
						</tr>
						<tr>
							<td class="section-title-text">
								<span>OUR</span> COMMUNITY
							</td>
						</tr>
					</table>
				</td>
			</tr>
			{{*assign var=moduleCount value=0*}}
			{{foreach $community as $modulePair}}
			<!-- COMMUNITY CARD ROW : Start -->
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
			<!-- COMMUNITY CARD ROW : End -->
			{{/foreach}}
			<tr>
				<td class="gap30">&nbsp;</td>
			</tr>
			{{/if}}
			{{if !empty($careers)}}<tr>
				<td class="section-title-container">
					<table border="0" cellspacing="0" cellpadding="0" role="presentation">
						<tr>
							<td><img src="templates/images/tartan4_2x.png" alt="" class="tartan4" width="277"></td>
						</tr>
						<tr>
							<td class="section-title-text">
								<span>OUR</span> CAREERS
							</td>
						</tr>
					</table>
				</td>
			</tr>
			{{*assign var=moduleCount value=0*}}
			{{foreach $careers as $modulePair}}
			<!-- CAREERS CARD ROW : Start -->
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
			<!-- CAREERS CARD ROW : End -->
			{{/foreach}}
			<tr>
				<td class="gap30">&nbsp;</td>
			</tr>
			{{/if}}
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
							<td><img src="templates/images/tartan8_2x.png" alt="" class="tartan8" width="277" height="8"></td>
						</tr>
					</table>
				</td>
			</tr>
		</table>
		<!-- Footer : End -->
	</center>
</body>