
		<table class="fullbleed-container" align="center" bgcolor="{{$THEME_BACKGROUND_COLOR}}" border="0" cellspacing="0" cellpadding="0" width="100%" role="main" style="border-spacing: 0; border-collapse: collapse; mso-table-lspace: 0pt; mso-table-rspace: 0pt; vertical-align: top; width: 100%;">
			<tr>
				<td class="header-bg" align="center" bgcolor="{{$THEME_BACKGROUND_COLOR}}" valign="top" style="margin: 0; background-color: {{$THEME_BACKGROUND_COLOR}};">
					<table class="email-container" align="center" border="0" cellspacing="0" cellpadding="0" role="presentation" style="border-spacing: 0; border-collapse: collapse; mso-table-lspace: 0pt; mso-table-rspace: 0pt; vertical-align: top; width: 580px; max-width: 580px; margin: auto; font-size: 0px;">
						<tr>
							<td style="margin: 0;">
								<img src="{{$THEME_HEADER_TARTAN_IMG}}" alt class="tartan8" width="277" style="-ms-interpolation-mode: bicubic; border: 0; display: block; margin: 0; padding: 0; text-decoration: none; width: 277px; height: 8px;">
							</td>
						</tr>
						<tr>
							<td class="gap40" style="margin: 0; font-size: 40px; line-height: 40px; mso-line-height-rule: exactly;">&nbsp;</td>
						</tr>
						<tr>
							<td class="email-container-inner" style="margin: 0; vertical-align: top;">
								<table border="0" cellspacing="0" cellpadding="0" width="100%" role="presentation" style="border-spacing: 0; border-collapse: collapse; mso-table-lspace: 0pt; mso-table-rspace: 0pt; vertical-align: top;">
									<tr>
										<td class="header-title-container" align="left" style="margin: 0; padding: 0px 100px 10px 0px;">
											<!--[if (gte mso 9)|(IE)]><table width="178" border="0" cellpadding="0" cellspacing="0" style="border-spacing:0;width:178px;"><tbody><tr><td width="178" style="padding:0;width:178px;"><![endif]-->
											<table class="header-title-wrapper" border="0" cellpadding="0" cellspacing="0" role="presentation" style="border-spacing: 0; border-collapse: collapse; mso-table-lspace: 0pt; mso-table-rspace: 0pt; vertical-align: top; max-width: 178px; width: 100%; height: auto;">
												<tr>
													<td class="header-title-wrapper" align="left" valign="top" style="margin: 0; max-width: 178px; width: 100%; height: auto;">
														<a href="{{$global->HEADER_LINK}}" target="_blank" style="text-decoration: none;">
															<img class="header-title header-alt-txt" src="{{$THEME_TITLE_IMG}}" alt="The Pulse" width="178" style="-ms-interpolation-mode: bicubic; border: 0; display: block; margin: 0; padding: 0; max-width: 178px; width: 100%; height: auto; font-family: OgilvySans, Arial, sans-serif; font-size: 13px; font-style: normal; text-decoration: none; text-align: center; color: {{$THEME_TXT_COLOR}};">
														</a>
													</td>
												</tr>
											</table>
											<!--[if (gte mso 9)|(IE)]></td></tr></tbody></table><![endif]-->
										</td>
										<td align="right" valign="bottom" style="margin: 0;">
											<!--[if (gte mso 9)|(IE)]><table width="178" border="0" cellpadding="0" cellspacing="0" style="border-spacing:0;width:178px;"><tbody><tr><td width="178" style="padding:0;width:178px;"><![endif]-->
											<table class="header-logo-wrapper" border="0" cellpadding="0" cellspacing="0" role="presentation" style="border-spacing: 0; border-collapse: collapse; mso-table-lspace: 0pt; mso-table-rspace: 0pt; max-width: 123px; width: 100%; height: auto; vertical-align: bottom;">
												<tr>
													<td class="header-logo-wrapper" align="right" valign="bottom" style="margin: 0; max-width: 123px; width: 100%; height: auto; vertical-align: bottom;">
														<a href="{{$global->HEADER_LINK}}" target="_blank" style="text-decoration: none;">
															<img class="header-logo header-alt-txt" src="{{$THEME_LOGO_IMG}}" alt="Ogilvy" width="120" style="-ms-interpolation-mode: bicubic; border: 0; display: block; margin: 0; padding: 0; max-width: 123px; width: 100%; height: auto; vertical-align: bottom; font-family: OgilvySans, Arial, sans-serif; font-size: 13px; font-style: normal; text-decoration: none; text-align: center; color: {{$THEME_TXT_COLOR}};">
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
							<td class="gap40" style="margin: 0; font-size: 40px; line-height: 40px; mso-line-height-rule: exactly;">&nbsp;</td>
						</tr>
						<!-- Hero : Start -->
						{{if isset($global->HERO->IMAGE)}}<tr>
							<td align="center" style="margin: 0;">
								<!--[if (gte mso 9)|(IE)]><table width="580" border="0" cellpadding="0" cellspacing="0" style="border-spacing:0;width:580px;"><tbody><tr><td width="580" style="padding:0;width:580px;"><![endif]-->
								<table class="hero-img-wrapper" width="580" border="0" cellpadding="0" cellspacing="0" role="presentation" style="border-spacing: 0; border-collapse: collapse; mso-table-lspace: 0pt; mso-table-rspace: 0pt; vertical-align: top; width: 100%; max-width: 580px; max-height: 500px; height: auto;">
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
								<table border="0" cellpadding="0" cellspacing="0" width="100%" role="presentation" style="border-spacing: 0; border-collapse: collapse; mso-table-lspace: 0pt; mso-table-rspace: 0pt; vertical-align: top;">
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
							<td class="gap40" style="margin: 0; font-size: 40px; line-height: 40px; mso-line-height-rule: exactly;">&nbsp;</td>
						</tr>{{/if}}
						<!-- Hero : End -->
					</table>
				</td>
			</tr>
		</table>