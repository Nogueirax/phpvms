<div id="mainbox">
<p class="smile"><t1>Pilot Center</t1>
<p class="line"></p>
<div class="indent">
<p><strong>Welcome back <?php echo $userinfo->firstname . ' ' . $userinfo->lastname; ?>!</strong></p>
<table>
<tr>
	<td valign="top" align="center">
		<img src="<?php echo PilotData::getPilotAvatar($pilotcode); ?>" />
		<br /><br />
		<img src="<?php echo $userinfo->rankimage ?>" />
	</td>
	<td valign="top">
		<ul style="margin-top: 0px;">
			<li><strong>Your Pilot ID: </strong> <?php echo $pilotcode; ?></li>
			<li><strong>Your Rank: </strong><?php echo $userinfo->rank;?></li>
			<?php
			if($report)
			{ ?>
				<li><strong>Latest Flight: </strong><a 
						href="<?php echo url('pireps/view/'.$report->pirepid); ?>">
						<?php echo $report->code . $report->flightnum; ?></a>
				</li>
			<?php
			}
			?>
			
			<li><strong>Total Flights: </strong><?php echo $userinfo->totalflights?></li>
			<li><strong>Total Hours: </strong><?php echo $userinfo->totalhours; ?></li>
			<li><strong>Total Transfer Hours: </strong><?php echo $userinfo->transferhours?></li>
			<li><strong>Total Money: </strong><?php echo FinanceData::FormatMoney($userinfo->totalpay) ?></li>
		
			<?php
			if($nextrank)
			{
			?>
				<p>You have <?php echo ($nextrank->minhours - $pilot_hours)?> hours 
					left until your promotion to <?php echo $nextrank->rank?></p>
			<?php
			}
			?>
		</ul>

	</td>
</tr>
</table>

<p class="smile"><t1>Profile Options</t1>
<p class="line"></p>
<table border="0">
<tr>
<td><a href="http://www.flyaero.co.uk/en/index.php/profile/editprofile"><img src="http://www.flyaero.co.uk/en/lib/skins/aerosite/images/pc/editprofile.png" width="130px"/></a> </td>
<td><a href="http://www.flyaero.co.uk/en/index.php/profile/changepassword"><img src="http://www.flyaero.co.uk/en/lib/skins/aerosite/images/pc/changepassword.png"width="130px"/></a></td>
<td><a href="http://www.flyaero.co.uk/en/index.php/downloads"><img src="http://www.flyaero.co.uk/en/lib/skins/aerosite/images/pc/downloads.png"width="130px"/></a></td>
</tr>
<tr>
<td><a href="http://www.flyaero.co.uk/en/index.php/profile/badge"><img src="http://www.flyaero.co.uk/en/lib/skins/aerosite/images/pc/viewbadge.png"width="130px"/></a></td>
<td><a href="http://www.flyaero.co.uk/en/index.php/profile/stats"><img src="http://www.flyaero.co.uk/en/lib/skins/aerosite/images/pc/mystats.png"width="130px"/></a></td>
<td><a href="http://www.flyaero.co.uk/en/index.php/pireps/routesmap"><img src="http://www.flyaero.co.uk/en/lib/skins/aerosite/images/pc/flightmap.png"width="130px"/></a></td>
</tr>
<tr>
<td><a href="http://www.flyaero.co.uk/en/index.php/schedules/bids"><img src="http://www.flyaero.co.uk/en/lib/skins/aerosite/images/pc/myflightbids.png"width="130px"/></a></td>
<td><a href="http://www.flyaero.co.uk/en/index.php/frontschedules"><img src="http://www.flyaero.co.uk/en/lib/skins/aerosite/images/pc/flightsearch.png"width="130px"/></a></td>
<td><a href="http://www.flyaero.co.uk/en/index.php/pireps/mine"><img src="http://www.flyaero.co.uk/en/lib/skins/aerosite/images/pc/mypireps.png"width="130px"/></a></td>
</tr>
</table>
</br>
<p class="smile"><t1>Usefull Links</t1>
<p class="line"></p>
<table border="0">
<tr>
<td><a href="ts3server://63.141.236.117/?port=3199&nickname=WebGuest"><img src="http://www.flyaero.co.uk/en/lib/skins/aerosite/images/pc/teamspeak.png" width="130px"/></a> </td>
<td><a href="https://www.paypal.com/cgi-bin/webscr?cmd=_s-xclick&hosted_button_id=VMDFQH8LSMHC8"><img src="http://www.flyaero.co.uk/en/lib/skins/aerosite/images/pc/donate.png"width="130px"/></a></td>
<td><a href="http://www.flyaero.co.uk/forum"><img src="http://www.flyaero.co.uk/en/lib/skins/aerosite/images/pc/forum.png"width="130px"/></a></td>
</tr>
<tr>
<td><a href="http://www.flyaero.co.uk/en/index.php/events"><img src="http://www.flyaero.co.uk/en/lib/skins/aerosite/images/pc/events.png"width="130px"/></a></td>
<td><a href="http://www.flyaero.co.uk/en/index.php/screenshots"><img src="http://www.flyaero.co.uk/en/lib/skins/aerosite/images/pc/screenshots.png"width="130px"/></a></td>
<td><a href="http://www.flyaero.co.uk/en/index.php/pages/staff"><img src="http://www.flyaero.co.uk/en/lib/skins/aerosite/images/pc/staff.png"width="130px"/></a></td>
</tr>

</table>
</div>
</div>
<br />