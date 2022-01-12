<link rel="stylesheet" type="text/css" href="moduleStyles.css"><link rel="stylesheet" type="text/css" href="inlinedStyles.css"><link rel="stylesheet" type="text/css" href="inlinedTextStyles.css">
		<table class="fullbleed-container" align="center" bgcolor="{{$THEME_BACKGROUND_COLOR}}" border="0" cellspacing="0" cellpadding="0" width="100%" role="main">
			<tr>
				<td class="header-bg" align="center" bgcolor="{{$THEME_BACKGROUND_COLOR}}" valign="top" style="background-color:{{$THEME_BACKGROUND_COLOR}};">
					<table class="email-container" align="center" border="0" cellspacing="0" cellpadding="0" role="presentation">
						<tr>
							<td>
								<img src="{{$THEME_HEADER_TARTAN_IMG}}" alt="" class="tartan8" width="277"/>
							</td>
						</tr>
						<tr>
							<td class="gap40">&nbsp;</td>
						</tr>
						<tr>
							<td class="email-container-inner">
								<table border="0" cellspacing="0" cellpadding="0" width="100%" role="presentation">
									<tr>
										<td class="header-title-container" align="left">
											<!--[if (gte mso 9)|(IE)]><table width="178" border="0" cellpadding="0" cellspacing="0" style="border-spacing:0;width:178px;"><tbody><tr><td width="178" style="padding:0;width:178px;"><![endif]-->
											<table class="header-title-wrapper" border="0" cellpadding="0" cellspacing="0" role="presentation">
												<tr>
													<td class="header-title-wrapper" align="left" valign="top">
														<a href="{{$global->HEADER_LINK}}" target="_blank">
															<img class="header-title header-alt-txt" src="{{$THEME_TITLE_IMG}}" alt="The Pulse" width="178" style="color:{{$THEME_TXT_COLOR}};" />
														</a>
													</td>
												</tr>
											</table>
											<!--[if (gte mso 9)|(IE)]></td></tr></tbody></table><![endif]-->
										</td>
										<td align="right" valign="bottom">
											<!--[if (gte mso 9)|(IE)]><table width="178" border="0" cellpadding="0" cellspacing="0" style="border-spacing:0;width:178px;"><tbody><tr><td width="178" style="padding:0;width:178px;"><![endif]-->
											<table class="header-logo-wrapper" border="0" cellpadding="0" cellspacing="0" role="presentation">
												<tr>
													<td class="header-logo-wrapper" align="right" valign="bottom">
														<a href="{{$global->HEADER_LINK}}" target="_blank">
															<img class="header-logo header-alt-txt" src="{{$THEME_LOGO_IMG}}" alt="Ogilvy" width="120" style="color:{{$THEME_TXT_COLOR}};" />
														</a>
													</td>
												</tr>
											</table>
											<!--[if (gte mso 9)|(IE)]></td></tr></tbody></table><![endif]-->
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
										<td class="hero-body-txt" style="color:{{$THEME_TXT_COLOR}};">{{$global->HERO->BODYCOPY}} <a href="{{$global->HERO->LINKURL}}" target="_blank" class="cta-text"><span class="hero-cta-text" style="color:{{$THEME_CTA_COLOR}}">&rarr;&nbsp;Read&nbsp;more</span></a></td>
									</tr>
								</table>
							</td>
						</tr>
						<tr>
							<td class="gap40">&nbsp;</td>
						</tr>{{/if}}
						<!-- Hero : End -->
					</table>
				</td>
			</tr>
		</table>