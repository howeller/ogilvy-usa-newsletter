<link rel="stylesheet" type="text/css" href="moduleStyles.css"><link rel="stylesheet" type="text/css" href="inlinedStyles.css"><link rel="stylesheet" type="text/css" href="inlinedTextStyles.css"><!-- Full Width Card Module {{*$moduleCount*}} : Start -->
				<table class="mod-card-container" align="left" border="0" cellpadding="0" cellspacing="0" role="presentation">
					<tr>
						<td class="mod-card-container-inner" align="center" valign="top">
							<!--[if (gte mso 9)|(IE)]><table width="580" border="0" cellpadding="0" cellspacing="0" style="border-spacing:0;width:580px;"><tbody><tr><td width="580" style="padding:0;width:580px;"><![endif]-->
							<table class="mod-full-card-wrapper" border="0" cellpadding="0" cellspacing="0">
								{{if $module->IMAGE != ''}}<tr>
									<td class="mod-img-container" align="center" valign="top">
										<a href="{{$module->LINKURL}}" target="_blank">
											<img class="hero-img mod-img-alt-txt" align="center" border="0" width="580" alt="{{$module->TITLE}}" src="{{$module->IMAGE}}"/>
										</a>
									</td>
								</tr>{{/if}}
								<tr>
									<td align="left" valign="top">
										<table border="0" cellpadding="0" cellspacing="0" role="presentation">
											<tr>
												<td class="card-title" align="left" valign="top">
													<a href="{{$module->LINKURL}}" target="_blank">{{$module->TITLE}}</a>
												</td>
											</tr>
											<tr>
												<td class="body-text">
													{{$module->BODYCOPY}} <a href="{{$module->LINKURL}}" target="_blank" class="cta-text"><span class="cta-text">→&nbsp;Read&nbsp;more</span></a>
												</td>
											</tr>
										</table>
									</td>
								</tr>
							</table>
							<!--[if (gte mso 9)|(IE)]></td></tr></tbody></table><![endif]-->
						</td>
					</tr>
				</table>
				<!-- Full Width Card Module {{*$moduleCount*}} : End -->
