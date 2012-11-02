<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>FlyAero Virtual</title>
<link href="http://www.flyaero.co.uk/en/lib/skins/aerosite/css/style.css" rel="stylesheet" type="text/css" />
<?php
 Template::Show('core_htmlhead.tpl');
?><?php
 Template::Show('core_htmlreq.tpl');
?>
</head>

<body>
<div class="box"/>
<div class="top"/><logo>
<img src="http://www.flyaero.co.uk/en/lib/skins/aerosite/images/logo.png" height="50px"/>
</logo>
<social><div id="social-buttons"/><a href="https://www.facebook.com/pages/FlyAero/485705168136792"><img src="http://www.flyaero.co.uk/en/lib/skins/aerosite/images/fb.png" height="50px"/></a><img src="http://www.flyaero.co.uk/en/lib/skins/aerosite/images/tw.png" height="50px"/><img src="http://www.flyaero.co.uk/en/lib/skins/aerosite/images/yt.png" height="50px"/></div></social>
</div>
<ul id="nav">
  <li><home><a href="http://www.flyaero.co.uk/en">Home</a><home></li>

  <?php 
 Template::Show('core_navigation.tpl');
?>

</ul>
<div id="sidebar"/>
<div id="sidebox"/>
<p class="smile"><t1>My Account</t1>
<p class="line"></p>
<div id="topLogin">
		<?php 
		/* 
		Quick example of how to see if they're logged in or not
		Only show this login form if they're logged in */
		if(Auth::LoggedIn() == false)
		{ ?>
			<form name="loginform" action="<?php echo url('/login'); ?>" method="post">
				Sign-in with your pilot id or email, or <a href="<?php echo url('/registration'); ?>">register</a><br />
			<input type="text" name="email" value="" onClick="this.value=''" />
			<input type="password" name="password" value="" />
			<input type="hidden" name="remember" value="on" />
			<input type="hidden" name="redir" value="index.php/profile" />
			<input type="hidden" name="action" value="login" />
			<input type="submit" name="submit" value="Log In" />
			</form>
			<?php
		}	
		/* End the Auth::LoggedIn() if */
		else /* else - they're logged in, so show some info about the pilot, and a few links */
		{
		
		/*	Auth::$userinfo has the information about the user currently logged in
			We will use this next line - this gets their full pilot id, formatted properly */
		$pilotid = PilotData::GetPilotCode(Auth::$userinfo->code, Auth::$userinfo->pilotid);
		?>
		
		<img align="left" height="50px" width="50px" style="margin-right: 10px;"
			src="<?php echo PilotData::getPilotAvatar($pilotid);?>" />

		<strong>Pilot ID: </strong> <?php echo $pilotid ; ?>
		<strong>Rank: </strong><?php echo Auth::$userinfo->rank;?><br />
		<strong>Total Flights: </strong><?php echo Auth::$userinfo->totalflights?>, <strong>Total Hours: </strong><?php echo Auth::$userinfo->totalhours;?>
		<br />
		<a href="<?php echo url('/pireps/new');?>">File a New PIREP</a> | 
		<a href="<?php echo url('/schedules/bids');?>">View My Bids</a> | 
		<a href="<?php echo url('/profile/');?>">View Pilot Center</a>
		<?php
		} /* End the else */
		?>
</div></div>
<div id="sidebox"/>
<p class="smile"><t1>News</t1>
<p class="line"></p>
<?php PopUpNews::PopUpNewsList(5); ?>
</div>
<div id="sidebox"/>
<p class="smile"><t1>Latest Recruits</t1>
<p class="line"></p>
<?php MainController::Run('Pilots', 'RecentFrontPage', 5); ?>
</div>

</div>
<div id="banner"/>
<img src="http://www.flyaero.co.uk/en/lib/skins/aerosite/images/banner1.png"/>
</div>
<div id="main"/>
<?php echo $page_content;?>
</div>
<div class="footer"/> Copyright FlyAero 2012 - 2013 | All rights reserved | Powered by PHPVMS</div>
</div>
</div>
</body>
</html>
