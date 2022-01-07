{{*<!-- Card Module $moduleCount : Start -->*}}
				<table class="mod-card-container" align="left" border="0" cellpadding="0" cellspacing="0" role="presentation" style="border-spacing: 0; border-collapse: collapse; mso-table-lspace: 0pt; mso-table-rspace: 0pt; table-layout: fixed; vertical-align: top; display: inline-block;">
					<tr>
						<td class="mod-card-container-inner" align="center" valign="top" style="margin: 0; padding: 13px;">
							<table class="mod-card-wrapper" border="0" cellpadding="0" cellspacing="0" style="border-spacing: 0; border-collapse: collapse; mso-table-lspace: 0pt; mso-table-rspace: 0pt; table-layout: fixed; vertical-align: top; width: 277px; max-width: 277px;">
								{{if $module->IMAGE != ''}}<tr>
									<td class="mod-img-container" align="center" valign="top" style="margin: 0; padding-bottom: 10px;">
										<a href="{{$module->LINKURL}}" target="_blank" style="text-decoration: none;">
											<img class="mod-img mod-img-alt-txt" align="center" border="0" width="277" alt="{{$module->TITLE}}" src="{{$module->IMAGE}}" style="-ms-interpolation-mode: bicubic; border: 0; display: block; margin: 0; padding: 0; text-decoration: none; width: 277px; max-width: 277px; color: {{$THEME_TXT_COLOR}};">
										</a>
									</td>
								</tr>{{/if}}
								<tr>
									<td align="left" valign="top" style="margin: 0;">
										<table border="0" cellpadding="0" cellspacing="0" style="border-spacing: 0; border-collapse: collapse; mso-table-lspace: 0pt; mso-table-rspace: 0pt; table-layout: fixed; vertical-align: top;">
											<tr>
												<td class="card-title" align="left" valign="top" style="margin: 0; color: #000000; font-family: OgilvySans, Arial, sans-serif; font-weight: bold; font-size: 20px; line-height: 22px; padding-bottom: 10px;">
													<a href="{{$module->LINKURL}}" target="_blank" style="text-decoration: none; color: #000000; font-family: OgilvySans, Arial, sans-serif; font-weight: bold; font-size: 20px; line-height: 22px;">{{$module->TITLE}}</a>
												</td>
											</tr>
											<tr>
												<td class="body-text" style="margin: 0; font-family: OgilvySans, Arial, sans-serif; font-size: 16px; line-height: 18px; color: #545659; font-weight: normal;">
													{{$module->BODYCOPY}} <a href="{{$module->LINKURL}}" target="_blank" class="cta-text" style="text-decoration: none; font-family: OgilvySans, Arial, sans-serif; font-size: 16px; line-height: 18px; color: #eb3f43;"><span class="cta-text" style="font-family: OgilvySans, Arial, sans-serif; font-size: 16px; line-height: 18px; color: #eb3f43;">&#8594;&nbsp;Read&nbsp;more</span></a>
												</td>
											</tr>
										</table>
									</td>
								</tr>
							</table>
						</td>
					</tr>
				</table>
				{{*<!-- Card Module $moduleCount : End -->*}}
