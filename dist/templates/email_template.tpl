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
	{{$THEME_TITLE_IMG = 'templates/images/header_title_black_2x.png'}}
	{{$THEME_LOGO_IMG = 'templates/images/header_logo_black_2x.png'}}
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
<html lang="en" style="background: white; font-family: OgilvySans, Arial, sans-serif; mso-line-height-rule: exactly; margin: 0 auto !important; padding: 0 !important; height: 100% !important; width: 100% !important;">

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="format-detection" content="telephone=no, address=no, email=no, date=no">
	<meta name="x-apple-disable-message-reformatting">
	<!--[if !mso]><!-->
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<!--<![endif]-->
	<title>The Pulse : Ogilvy</title>
	<!--[if (gte mso 9)|(IE)]>
	<xml xmlns:v="urn:schemas-microsoft-com:vml" xmlns:o="urn:schemas-microsoft-com:office:office" xmlns:w="urn:schemas-microsoft-com:office:word"><o:OfficeDocumentSettings><o:AllowPNG/><o:PixelsPerInch>96</o:PixelsPerInch></o:OfficeDocumentSettings></xml>
	<![endif]-->
	<!--[if gte mso 9]>
	<style> .vml-p {margin:0;font-size:0;line-height:0;} v\:* {behavior:url(#default#VML);}</style>
	<![endif]-->
	<!-- styles will be inlined -->
	
	<!-- styles will be embedded and not inlined -->
	<style type="text/css">
		* {
			-webkit-font-smoothing: antialiased;
			-webkit-text-size-adjust: none!important;
		}
		/*Keep iphone telephone numbers from turning blue*/
		*[x-apple-data-detectors], .x-gmail-data-detectors, .x-gmail-data-detectors *, .aBn {
			color: inherit!important;
			text-decoration: none!important;
			font-size: inherit!important;
			font-family: 'OgilvySans', inherit!important;
			font-weight: inherit!important;
			line-height: inherit!important;
		}
		.ExternalClass * {
			line-height: 100% !important;
		}
		/* What it does:Stops email clients resizing small text. */
		* {
			-ms-text-size-adjust: 100%;
			-webkit-text-size-adjust: 100%;
		}
		/* What it does:Stops Outlook from adding extra spacing to tables. */
		table, td {
			mso-table-lspace: 0pt !important;
			mso-table-rspace: 0pt !important;
		}
		a {text-decoration: none;}

		:root {
			color-scheme: light dark;
			supported-color-schemes: light dark;
		}
		
		@media screen {
			@font-face {
				font-family: 'OgilvySans';
				font-weight: normal;
				font-style: normal;
				src: 
					local(Ogilvy Sans),
					url('https://assets.ogilvy.com/ogassets/font/OgilvySansWeb-Regular.eot');
				src:
					local(Ogilvy Sans),
					url('https://assets.ogilvy.com/ogassets/font/OgilvySansWeb-Regular.eot?#iefix') format('embedded-opentype'),
					url(https://assets.ogilvy.com/ogassets/font/OgilvySansWeb-Regular.woff2) format("woff2"),
					url(https://assets.ogilvy.com/ogassets/font/OgilvySansWeb-Regular.woff) format("woff"),
					url(https://assets.ogilvy.com/ogassets/font/OTF/OgilvySans-Regular.otf) format("opentype");
				mso-font-alt: Arial;
			}
			@font-face {
				font-family: 'OgilvySans';
				font-weight: bold;
				font-style: normal;
				src: 
					local(Ogilvy Sans Bold),
					url('https://assets.ogilvy.com/ogassets/font/OgilvySansWeb-Bold.eot');
				src:
					local(Ogilvy Sans Bold),
					url('https://assets.ogilvy.com/ogassets/font/OgilvySansWeb-Bold.eot?#iefix') format('embedded-opentype'),
					url(https://assets.ogilvy.com/ogassets/font/OgilvySansWeb-Bold.woff2) format("woff2"),
					url(https://assets.ogilvy.com/ogassets/font/OgilvySansWeb-Bold.woff) format("woff"),
					url(https://assets.ogilvy.com/ogassets/font/OTF/OgilvySans-Bold.otf) format("opentype");
				mso-font-alt: Arial;
			}
		}

		@media screen yahoo {
			* {
				overflow: visible!important
			}
			.y-overflow-hidden {
				overflow: hidden!important
			}
		}

		@media screen and (max-width:600px) {
			.email-container, .body-container, .fullbleed-container{
				width: 100% !important;
				max-width: 100% !important;
				margin: auto !important;
			}
			.email-container-inner {
				padding: 0 13px 0 13px !important;
			}
			th, .mod-card-wrapper {
				display: block !important;
				width: 100% !important;
				max-width: 100% !important;
			}
			td.mod-padding-lr {
 				padding: 0 13px !important;
			}
			/*th.mod-exec-container {
				padding: 0 13px !important;
			}*/
			th.mod-exec-img {
				padding-bottom: 25px!important;
			}
			.mod-img, .mod-exec-img {
				width: 100%;
				max-width: 400px !important;
			}
			/*th.footer-item-container, .footer-txt{
				text-align: left !important;
				float: middle !important;
				padding-bottom: 20px !important;
			}*/
		}
		/* Smaller screens */
		@media screen and (max-width:500px) {
			.mod-img, .mod-img-wrapper, .mod-card-wrapper{
				display:block !important;
				width: 100% !important;
				max-width: 100% !important;
				height: auto!important;
				float: none!important;
				clear: both!important;
			}
			
			.card-title, *.body-text{
				display:block !important;
			}
		}
</style>
</head>

<body style="background: white; font-family: OgilvySans, Arial, sans-serif; mso-line-height-rule: exactly; margin: 0 auto !important; padding: 0 !important; height: 100% !important; width: 100% !important;">
	<div class="hide" style="color: #ffffff; display: none; visibility: hidden; mso-hide: all; font-size: 1px; line-height: 1px; max-height: 0px; max-width: 0px; opacity: 0; overflow: hidden;">{{$global->HEADER_PREHEADER_TEXT}}</div>
	<center style="width: 100%; background: white; text-align: center; vertical-align: top;">
		<!-- Email Header : BEGIN -->
		<table class="fullbleed-container" align="center" bgcolor="{{$THEME_BACKGROUND_COLOR}}" border="0" cellspacing="0" cellpadding="0" width="100%" role="main" style="border-spacing: 0; border-collapse: collapse; mso-table-lspace: 0pt; mso-table-rspace: 0pt; table-layout: fixed; vertical-align: top; width: 100%;">
			<tr>
				<td align="center" bgcolor="{{$THEME_BACKGROUND_COLOR}}" valign="top" style="margin: 0;">
					<table class="email-container" align="center" border="0" cellspacing="0" cellpadding="0" role="presentation" style="border-spacing: 0; border-collapse: collapse; mso-table-lspace: 0pt; mso-table-rspace: 0pt; table-layout: fixed; vertical-align: top; width: 580px; max-width: 580px; margin: auto; font-size: 0px;">
						<tr>
							<td style="margin: 0;">
								<img src="{{$THEME_TARTAN_IMG}}" alt class="tartan8" width="277" style="-ms-interpolation-mode: bicubic; border: 0; display: block; margin: 0; padding: 0; text-decoration: none; width: 277px; height: 8px;">
							</td>
						</tr>
						<tr>
							<td class="gap40" style="margin: 0; font-size: 40px; line-height: 40px; mso-line-height-rule: exactly;">&nbsp;</td>
						</tr>
						<tr>
							<td class="email-container-inner" style="margin: 0; vertical-align: top;">
								<table border="0" cellspacing="0" cellpadding="0" width="100%" role="presentation" style="border-spacing: 0; border-collapse: collapse; mso-table-lspace: 0pt; mso-table-rspace: 0pt; table-layout: fixed; vertical-align: top;">
									<tr>
										<td align="left" style="margin: 0;">
											<a href="{{$global->HEADER_LINK}}" target="_blank" style="text-decoration: none;">
												<img class="header-title header-alt-txt" src="{{$THEME_TITLE_IMG}}" alt="The Pulse" width="123" height="61" style="-ms-interpolation-mode: bicubic; border: 0; display: block; margin: 0; padding: 0; width: 178px; height: 88px; font-family: OgilvySans, Arial, sans-serif; font-size: 13px; font-style: normal; text-decoration: none; text-align: center; color: {{$THEME_TXT_COLOR}};">
											</a>
										</td>
										<td align="right" valign="middle" style="margin: 0;">
											<a href="{{$global->HEADER_LINK}}" target="_blank" style="text-decoration: none;">
												<img class="header-logo header-alt-txt" src="{{$THEME_LOGO_IMG}}" alt="Ogilvy" width="120" height="47" style="-ms-interpolation-mode: bicubic; border: 0; display: block; margin: 0; padding: 0; width: 120px; height: 47px; vertical-align: middle; font-family: OgilvySans, Arial, sans-serif; font-size: 13px; font-style: normal; text-decoration: none; text-align: center; color: {{$THEME_TXT_COLOR}};">
											</a>
										</td>
									</tr>
								</table>
							</td>
						</tr>
						<tr>
							<td class="gap40" style="margin: 0; font-size: 40px; line-height: 40px; mso-line-height-rule: exactly;">&nbsp;</td>
						</tr>
						<!-- Hero : Start -->
						{{if isset($global->HERO->IMAGE)}}<tr>
							<td align="center" style="margin: 0;">
								<!--[if (gte mso 9)|(IE)]><table width="580" border="0" cellpadding="0" cellspacing="0" style="border-spacing:0;width:580px;"><tbody><tr><td width="580" style="padding:0;width:580px;"><![endif]-->
								<table class="hero-img-wrapper" width="580" border="0" cellpadding="0" cellspacing="0" role="presentation" style="border-spacing: 0; border-collapse: collapse; mso-table-lspace: 0pt; mso-table-rspace: 0pt; table-layout: fixed; vertical-align: top; width: 100%; max-width: 580px; max-height: 500px; height: auto;">
									<tr>
										<td class="hero-img-wrapper" width="580" align="left" valign="top" style="margin: 0; width: 100%; max-width: 580px; max-height: 500px; height: auto;">
											<a href="{{$global->HERO->LINKURL}}" target="_blank" style="text-decoration: none;">
												<img src="{{$global->HERO->IMAGE}}" alt="{{$global->HERO->TITLE}}" class="hero-img hero-alt-txt" width="580" border="0" style="-ms-interpolation-mode: bicubic; border: 0; margin: 0; padding: 0; text-decoration: none; width: 100%; max-width: 580px; max-height: 500px; height: auto; display: block; font-family: OgilvySans, Arial, sans-serif; font-size: 20px; line-height: 30px; text-align: center; word-wrap: normal; color: {{$THEME_TXT_COLOR}};">
											</a>
										</td>
									</tr>
								</table>
								<!--[if (gte mso 9)|(IE)]></td></tr></tbody></table><![endif]-->
							</td>
						</tr>
						<tr>
							<td class="gap20" style="margin: 0; font-size: 20px; line-height: 20px; mso-line-height-rule: exactly;">&nbsp;</td>
						</tr>{{/if}}
						{{if isset($global->HERO->TITLE)}}<tr>
							<td class="email-container-inner" align="left" valign="top" style="margin: 0; vertical-align: top;">
								<table border="0" cellpadding="0" cellspacing="0" width="100%" role="presentation" style="border-spacing: 0; border-collapse: collapse; mso-table-lspace: 0pt; mso-table-rspace: 0pt; table-layout: fixed; vertical-align: top;">
									<tr>
										<td class="hero-h1" style="margin: 0; font-family: OgilvySans, Arial, sans-serif; font-weight: bold; font-size: 40px; line-height: 38px; padding: 0; color: {{$THEME_TXT_COLOR}};">
											<a href="{{$global->HERO->LINKURL}}" target="_blank" style="text-decoration: none; font-family: OgilvySans, Arial, sans-serif; font-weight: bold; font-size: 40px; line-height: 38px; padding: 0; color: {{$THEME_TXT_COLOR}};">{{$global->HERO->TITLE}}</a>
										</td>
									</tr>
									<tr>
										<td class="hero-body-txt" style="margin: 0; font-family: OgilvySans, Arial, sans-serif; font-weight: normal; font-size: 16px; line-height: 18px; padding-top: 10px; color: {{$THEME_TXT_COLOR}};">{{$global->HERO->BODYCOPY}}</td>
									</tr>
								</table>
							</td>
						</tr>
						<tr>
							<td class="gap20" style="margin: 0; font-size: 20px; line-height: 20px; mso-line-height-rule: exactly;">&nbsp;</td>
						</tr>{{/if}}
						<!-- Hero : End -->
					</table>
				</td>
			</tr>
		</table>
		<!-- Email Header : End -->
		{{include file='module_executive.tpl'}}
		<!-- Email Body : BEGIN -->
		<table class="body-container" align="center" border="0" cellspacing="0" cellpadding="0" role="presentation" style="border-spacing: 0; border-collapse: collapse; mso-table-lspace: 0pt; mso-table-rspace: 0pt; table-layout: fixed; vertical-align: top; width: 606px; max-width: 606px; margin: auto; font-size: 0px;">
			
			{{foreach $sections as $section_index => $section}}
			{{assign var=sectionTitle value=$section[0]}}
			{{assign var=mySection value=$section[1]}}

			{{if !empty( $mySection )}}<tr>
				<td class="section-title-container" style="margin: 0; padding: 0px 13px; vertical-align: top;">
					<table border="0" cellspacing="0" cellpadding="0" role="presentation" style="border-spacing: 0; border-collapse: collapse; mso-table-lspace: 0pt; mso-table-rspace: 0pt; table-layout: fixed; vertical-align: top;">
						<tr>
							<td style="margin: 0;"><img src="templates/images/tartan4_2x.png" alt class="tartan4" width="277" style="-ms-interpolation-mode: bicubic; border: 0; display: block; margin: 0; padding: 0; text-decoration: none; width: 277px; height: 4px;"></td>
						</tr>
						<tr>
							<td class="section-title-text" style="margin: 0; color: #000000; font-family: OgilvySans, Arial, sans-serif; font-weight: normal; font-size: 26px; line-height: 28px; text-align: left; padding: 35px 0px 22px;">
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
				<td class="body-container-inner" align="center" valign="top" width="100%" style="margin: 0; vertical-align: top;">
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
				<td class="body-container-inner" align="center" valign="top" width="100%" style="margin: 0; vertical-align: top;">
					{{*assign var=moduleCount value=$moduleCount+1*}}{{assign var=module value=$modulePair[0]}}{{include file='module_card_fullwidth.tpl'}}
				</td>
			</tr>
			{{/if}}
			<!-- {{strtoupper($section_index)}} CARD ROW : End -->
			{{/foreach}}
			<tr>
				<td class="gap30" style="margin: 0; font-size: 30px; line-height: 30px; mso-line-height-rule: exactly;">&nbsp;</td>
			</tr>
			{{/if}}
			{{/foreach}}

		</table>
		<!-- Email Body : End -->
		<!-- Footer : Start -->
		<table class="fullbleed-container" align="center" bgcolor="{{$COLOR_OFF_WHITE}}" border="0" cellspacing="0" cellpadding="0" width="100%" role="presentation" style="border-spacing: 0; border-collapse: collapse; mso-table-lspace: 0pt; mso-table-rspace: 0pt; table-layout: fixed; vertical-align: top; width: 100%;">
			<tr>
				<td align="center" bgcolor="{{$COLOR_OFF_WHITE}}" valign="top" style="margin: 0;">
					<table class="email-container" align="center" border="0" cellspacing="0" cellpadding="0" role="presentation" style="border-spacing: 0; border-collapse: collapse; mso-table-lspace: 0pt; mso-table-rspace: 0pt; table-layout: fixed; vertical-align: top; width: 580px; max-width: 580px; margin: auto; font-size: 0px;">
						<tr>
							<td class="gap20" style="margin: 0; font-size: 20px; line-height: 20px; mso-line-height-rule: exactly;">&nbsp;</td>
						</tr>
						<tr>
							<td class="email-container-inner" style="margin: 0; vertical-align: top;">
								<table border="0" cellspacing="0" cellpadding="0" width="100%" role="presentation" style="border-spacing: 0; border-collapse: collapse; mso-table-lspace: 0pt; mso-table-rspace: 0pt; table-layout: fixed; vertical-align: top;">
									<tr>
										<th class="footer-item-container" valign="top" align="left" role="presentation">
											<table border="0" cellspacing="0" cellpadding="0" role="presentation" style="border-spacing: 0; border-collapse: collapse; mso-table-lspace: 0pt; mso-table-rspace: 0pt; table-layout: fixed; vertical-align: top;">
												<tr>
													<td class="footer-txt" valign="top" style="margin: 0; color: #000000; font-family: OgilvySans, Arial, sans-serif; font-weight: normal; font-size: 13px; line-height: 15px; font-style: italic; padding-right: 30px;">
														Contributions, questions, feedback,<br>
														Please email <a class="footer-txt" href="{{$global->FOOTER_LINK}}" target="_blank" style="text-decoration: none; color: #000000; font-family: OgilvySans, Arial, sans-serif; font-weight: normal; font-size: 13px; line-height: 15px; font-style: italic;"><span class="footer-txt" style="color: #000000; font-family: OgilvySans, Arial, sans-serif; font-weight: normal; font-size: 13px; line-height: 15px; font-style: italic;">{{$global->FOOTER_LINK_TEXT}}</span></a>
													</td>
												</tr>
											</table>
										</th>
										<th class="footer-item-container" align="left" role="presentation">
											<table border="0" cellspacing="0" cellpadding="0" role="presentation" style="border-spacing: 0; border-collapse: collapse; mso-table-lspace: 0pt; mso-table-rspace: 0pt; table-layout: fixed; vertical-align: top;">
												<tr>
													<td class="social-txt" valign="top" style="margin: 0; color: #000000; font-family: OgilvySans, Arial, sans-serif; font-weight: normal; font-size: 13px; line-height: 15px; font-style: normal; text-decoration: none;">
														<a href="https://www.facebook.com/ogilvy" class="social-txt" target="_blank" style="color: #000000; font-family: OgilvySans, Arial, sans-serif; font-weight: normal; font-size: 13px; line-height: 15px; font-style: normal; text-decoration: none;"><span class="social-txt" style="color: #000000; font-family: OgilvySans, Arial, sans-serif; font-weight: normal; font-size: 13px; line-height: 15px; font-style: normal; text-decoration: none;">Facebook</span></a><br>
														<a href="https://twitter.com/Ogilvy" class="social-txt" target="_blank" style="color: #000000; font-family: OgilvySans, Arial, sans-serif; font-weight: normal; font-size: 13px; line-height: 15px; font-style: normal; text-decoration: none;"><span class="social-txt" style="color: #000000; font-family: OgilvySans, Arial, sans-serif; font-weight: normal; font-size: 13px; line-height: 15px; font-style: normal; text-decoration: none;">Twitter</span></a><br>
														<a href="https://instagram.com/ogilvy/" class="social-txt" target="_blank" style="color: #000000; font-family: OgilvySans, Arial, sans-serif; font-weight: normal; font-size: 13px; line-height: 15px; font-style: normal; text-decoration: none;"><span class="social-txt" style="color: #000000; font-family: OgilvySans, Arial, sans-serif; font-weight: normal; font-size: 13px; line-height: 15px; font-style: normal; text-decoration: none;">instagram</span></a><br>
														<a href="https://www.linkedin.com/company/ogilvy/" class="social-txt" target="_blank" style="color: #000000; font-family: OgilvySans, Arial, sans-serif; font-weight: normal; font-size: 13px; line-height: 15px; font-style: normal; text-decoration: none;"><span class="social-txt" style="color: #000000; font-family: OgilvySans, Arial, sans-serif; font-weight: normal; font-size: 13px; line-height: 15px; font-style: normal; text-decoration: none;">LinkedIn</span></a><br>
													</td>
												</tr>
											</table>
										</th>
									</tr>
								</table>
							</td>
						</tr>
						<tr>
							<td class="gap20" style="margin: 0; font-size: 20px; line-height: 20px; mso-line-height-rule: exactly;">&nbsp;</td>
						</tr>
						<tr>
							<td style="margin: 0;"><img src="templates/images/tartan8_2x.png" alt class="tartan8" width="277" height="8" style="-ms-interpolation-mode: bicubic; border: 0; display: block; margin: 0; padding: 0; text-decoration: none; width: 277px; height: 8px;"></td>
						</tr>
					</table>
				</td>
			</tr>
		</table>
		<!-- Footer : End -->
	</center>
</body></html>