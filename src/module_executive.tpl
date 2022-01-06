<link rel="stylesheet" type="text/css" href="moduleStyles.css"><link rel="stylesheet" type="text/css" href="inlinedStyles.css"><link rel="stylesheet" type="text/css" href="inlinedTextStyles.css"><!-- Executive Message Module : Start -->
<table class="fullbleed-container" align="center" bgcolor="{{$COLOR_OFF_WHITE}}" border="0" cellspacing="0" cellpadding="0" width="100%" role="presentation">
	<tr>
		<td align="center" bgcolor="{{$COLOR_OFF_WHITE}}" valign="top">
			<table class="email-container" align="center" border="0" cellspacing="0" cellpadding="0" role="presentation">
				<tr>
					<td class="gap40">&nbsp;</td>
				</tr>
				<tr>
					<td class="mod-padding-lr">
						<table class="mod-exec-wrapper" border="0" cellpadding="0" cellspacing="0" width="100%" role="presentation">
							<tr>
								{{if $global->EXECUTIVE->IMAGE != ''}}
								<th class="mod-exec-container mod-exec-img" align="left" dir="ltr" valign="top" width="125">
									<a href="{{$global->EXECUTIVE->LINKURL}}" target="_blank">
										<img class="mod-exec-img mod-img-alt-txt" align="center" border="0" width="125" alt="{{$global->EXECUTIVE->TITLE}}" src="{{$global->EXECUTIVE->IMAGE}}"/>
									</a>
								</th>
								{{/if}}
								<th class="mod-exec-container" align="left" dir="ltr" valign="top">
									<h2>
										<a href="{{$global->EXECUTIVE->LINKURL}}" target="_blank"><span class="card-title">{{$global->EXECUTIVE->TITLE}}</span></a>
									</h2>
									<p class="body-text">
										{{$global->EXECUTIVE->BODYCOPY}}
									</p>
								</th>
							</tr>
						</table>
					</td>
				</tr>
				<tr>
					<td class="gap40">&nbsp;</td>
				</tr>
			</table>
		</td>
	</tr>
</table>
<!-- Executive Message Module : End -->