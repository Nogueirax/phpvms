<style type="text/css">
<!--
.style2 {color: #CCCCCC}
-->
</style>
<h3><?php echo $title?></h3>

<?php
	if(!$allpilots)
	{
		echo 'There are no pilots!';
		return;
	}

?>
<table width="100%" border="0" class="tablesorter" id="tabledlist">
<thead>
<tr>
	<th bgcolor="#00b4e0"><span class="style2">Pilot ID</span></th>
	<th width="25%" bgcolor="#00b4e0"><span class="style2">Name</span></th>
	<th width="19%" bgcolor="#00b4e0"><span class="style2">Rank</span></th>
	<th width="22%" bgcolor="#00b4e0"><span class="style2">Flights</span></th>
	<th width="17%" bgcolor="#00b4e0"><span class="style2">Hours</span></th>
	<th width="17%" bgcolor="#00b4e0"><span class="style2">Status</span></th>
	</tr>
</thead>
<tbody>
<?php
foreach($allpilots as $pilot)

{
	/* 
		To include a custom field, use the following example:

		<td>
			<?php echo PilotData::GetFieldValue($pilot->pilotid, 'VATSIM ID'); ?>
		</td>

		For instance, if you added a field called "IVAO Callsign":

			echo PilotData::GetFieldValue($pilot->pilotid, 'IVAO Callsign');		
	 */
	 
	 // To skip a retired pilot, uncomment the next line:
	 //if($pilot->retired == 1) { continue; }
?>
<tr>
	<td width="7%" nowrap><div align="center"><a href="<?php echo url('/profile/view/'.$pilot->pilotid);?>">
	  <?php echo PilotData::GetPilotCode($pilot->code, $pilot->pilotid)?></a></div></td>
	<td>
		<div align="center"><img src="<?php echo Countries::getCountryImage($pilot->location);?>" 
			alt="<?php echo Countries::getCountryName($pilot->location);?>" />
		  
		  <?php echo $pilot->firstname.' '.$pilot->lastname?>
      </div></td>
	<td><div align="center"><?php echo $pilot->rank;?></div></td>
	<td><div align="center"><?php echo $pilot->totalflights?></div></td>
	<td><div align="center"><?php echo ($pilot->totalhours); ?></div></td>
<td><?php if($pilot->retired==0) echo 'Active'; else echo 'In-Active';?></td>
	<?php
}
?>
</tbody>
</table>