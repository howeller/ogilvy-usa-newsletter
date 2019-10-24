<!-- Card Module : Start Module {{$moduleCount}} -->
				<table class="mod-card-container" align="left" border="0" cellpadding="0" cellspacing="0" style="border-spacing: 0; border-collapse: collapse; mso-table-lspace: 0pt; mso-table-rspace: 0pt; table-layout: fixed; vertical-align: top; display: inline-block;">
					<tr>
						<td class="mod-card-container-inner" align="center" valign="top" style="margin: 0; padding: 13px;">
							<table class="mod-card-wrapper" border="0" cellpadding="0" cellspacing="0" style="border-spacing: 0; border-collapse: collapse; mso-table-lspace: 0pt; mso-table-rspace: 0pt; table-layout: fixed; vertical-align: top; width: 277px; max-width: 277px;">
								{{if $module->IMAGE != ''}}<tr>
									<td class="mod-img-container" align="center" valign="top" style="margin: 0; padding-bottom: 10px;">
										<a href="{{$module->LINKURL}}" target="_blank" style="text-decoration: none;">
											<img class="mod-img" align="center" border="0" width="277" alt="{{$module->TITLE}}" src="{{$module->IMAGE}}" style="-ms-interpolation-mode: bicubic; border: 0; display: block; margin: 0; padding: 0; text-decoration: none; width: 277px; max-width: 277px;">
										</a>
									</td>
								</tr>{{/if}}
								<tr>
									<td align="left" valign="top" style="margin: 0;">
										<table border="0" cellpadding="0" cellspacing="0" style="border-spacing: 0; border-collapse: collapse; mso-table-lspace: 0pt; mso-table-rspace: 0pt; table-layout: fixed; vertical-align: top;">
											<tr>
												<td class="card-title" align="left" valign="top" style="margin: 0; color: #eb3f43; font-family: OgilvySans,Arial,sans-serif; font-weight: bold; font-size: 13px; line-height: 15px; padding-bottom: 5px;">
													<a href="{{$module->LINKURL}}" target="_blank" style="text-decoration: none; color: #eb3f43; font-family: OgilvySans,Arial,sans-serif; font-weight: bold; font-size: 13px; line-height: 15px;">{{$module->TITLE}}</a>
												</td>
											</tr>
											<tr>
												<td class="card-subtitle" align="left" valign="top" style="margin: 0; color: #000000; font-family: OgilvySans,Arial,sans-serif; font-weight: bold; font-size: 16px; line-height: 18px; padding-bottom: 10px;">
													<a href="{{$module->LINKURL}}" target="_blank" style="text-decoration: none; color: #000000; font-family: OgilvySans,Arial,sans-serif; font-weight: bold; font-size: 16px; line-height: 18px;">{{$module->SUBTITLE}}</a>
												</td>
											</tr>
											<tr>
												<td class="body-text" style="margin: 0; color: #545659; font-family: OgilvySans,Arial,sans-serif; font-size: 13px; line-height: 17px; font-weight: normal;">
													{{$module->BODYCOPY}}
												</td>
											</tr>
										</table>
									</td>
								</tr>
							</table>
						</td>
					</tr>
				</table>
				<!-- Card Module : End Module {{$moduleCount}} -->
