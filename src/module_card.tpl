<link rel="stylesheet" type="text/css" href="moduleStyles.css"><link rel="stylesheet" type="text/css" href="inlinedStyles.css"><link rel="stylesheet" type="text/css" href="inlinedTextStyles.css">{{*<!-- Card Module $moduleCount : Start -->*}}
				<table class="mod-card-container" align="left" border="0" cellpadding="0" cellspacing="0" role="presentation">
					<tr>
						<td class="mod-card-container-inner" align="center" valign="top">
							<table class="mod-card-wrapper" border="0" cellpadding="0" cellspacing="0">
								{{if $module->IMAGE != ''}}<tr>
									<td class="mod-img-container" align="center" valign="top">
										<a href="{{$module->LINKURL}}" target="_blank">
											<img class="mod-img mod-img-alt-txt" align="center" border="0" width="277" alt="{{$module->TITLE}}" src="{{$module->IMAGE}}" style="color:{{$THEME_TXT_COLOR}};"/>
										</a>
									</td>
								</tr>{{/if}}
								<tr>
									<td align="left" valign="top">
										<table border="0" cellpadding="0" cellspacing="0">
											<tr>
												<td class="card-title" align="left" valign="top">
													<a href="{{$module->LINKURL}}" target="_blank">{{$module->TITLE}}</a>
												</td>
											</tr>
											<tr>
												<td class="body-text">
													{{$module->BODYCOPY}} <a href="{{$module->LINKURL}}" target="_blank" class="cta-text"><span class="cta-text">&rarr;&nbsp;Read&nbsp;more</span></a>
														{{*<span class="cta-text"><img class="cta-arrow" src="templates/images/cta_arrow_2x.png" alt="&rarr;"/>&nbsp;Read&nbsp;more</span></a>*}}
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
