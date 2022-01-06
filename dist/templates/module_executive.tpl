<!-- Executive Message Module : Start -->
<table class="fullbleed-container" align="center" bgcolor="{{$COLOR_OFF_WHITE}}" border="0" cellspacing="0" cellpadding="0" width="100%" role="presentation" style="border-spacing: 0; border-collapse: collapse; mso-table-lspace: 0pt; mso-table-rspace: 0pt; table-layout: fixed; vertical-align: top; width: 100%;">
	<tr>
		<td align="center" bgcolor="{{$COLOR_OFF_WHITE}}" valign="top" style="margin: 0;">
			<table class="email-container" align="center" border="0" cellspacing="0" cellpadding="0" role="presentation" style="border-spacing: 0; border-collapse: collapse; mso-table-lspace: 0pt; mso-table-rspace: 0pt; table-layout: fixed; vertical-align: top; width: 580px; max-width: 580px; margin: auto; font-size: 0px;">
				<tr>
					<td class="gap40" style="margin: 0; font-size: 40px; line-height: 40px; mso-line-height-rule: exactly;">&nbsp;</td>
				</tr>
				<tr>
					<td class="mod-padding-lr" style="margin: 0;">
						<table class="mod-exec-wrapper" border="0" cellpadding="0" cellspacing="0" width="100%" role="presentation" style="border-spacing: 0; border-collapse: collapse; mso-table-lspace: 0pt; mso-table-rspace: 0pt; table-layout: fixed; vertical-align: top; width: 100%;">
							<tr>
								{{if $global->EXECUTIVE->IMAGE != ''}}
								<th class="mod-exec-container mod-exec-img" align="left" dir="ltr" valign="top" width="125" style="width: 125px; max-width: 125px; padding-right: 30px;">
									<a href="{{$global->EXECUTIVE->LINKURL}}" target="_blank" style="text-decoration: none;">
										<img class="mod-exec-img mod-img-alt-txt" align="center" border="0" width="125" alt="{{$global->EXECUTIVE->TITLE}}" src="{{$global->EXECUTIVE->IMAGE}}" style="-ms-interpolation-mode: bicubic; border: 0; display: block; margin: 0; padding: 0; text-decoration: none; width: 125px; max-width: 125px; font-family: OgilvySans, Arial, sans-serif; font-weight: normal; font-size: 20px; line-height: 22px; text-align: center;">
									</a>
								</th>
								{{/if}}
								<th class="mod-exec-container" align="left" dir="ltr" valign="top">
									<h2>
										<a href="{{$global->EXECUTIVE->LINKURL}}" target="_blank" style="text-decoration: none;"><span class="card-title" style="color: #000000; font-family: OgilvySans, Arial, sans-serif; font-weight: bold; font-size: 20px; line-height: 22px;">{{$global->EXECUTIVE->TITLE}}</span></a>
									</h2>
									<p class="body-text" style="margin: 0; color: #545659; font-family: OgilvySans, Arial, sans-serif; font-size: 13px; line-height: 17px; font-weight: normal;">
										{{$global->EXECUTIVE->BODYCOPY}}
									</p>
								</th>
							</tr>
						</table>
					</td>
				</tr>
				<tr>
					<td class="gap40" style="margin: 0; font-size: 40px; line-height: 40px; mso-line-height-rule: exactly;">&nbsp;</td>
				</tr>
			</table>
		</td>
	</tr>
</table>
<!-- Executive Message Module : End -->