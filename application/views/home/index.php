
<div class="container">

	<div class="hero-unit">
		<img src='assets/images/prolexic_logo.gif' style="float:left;margin-top:-5px;margin-right:25px;"><h2>Prolexic Mitigation Management.</h2>

		<p>DDOS Event & Incident Tracking.</p>
	</div>

<!--  -->
<?php if (isset($current_user->email)) : ?>

	<!-- Event listing -->
	<p>
	<center><a href='campaigns/'>View Your Campaigns</a></center>
	</p>		
	<?php if($current_user->role_name == 'Administrator' && $current_user->active = '1' && $current_user->deleted == '0' && $current_user->banned == '0') : ?>
		<!-- show admin link -->
		<div class="alert alert-info" style="text-align: center">
			<?php echo anchor(SITE_AREA, "Dive into the Mitigation Management Springboard"); ?>
		</div>
	<?php endif;?>

<?php else :?>

	<p style="text-align: center">
		<?php echo anchor('/login', '<i class="icon-lock icon-white"></i> '. lang('bf_action_login'), ' class="btn btn-primary btn-large" '); ?>
	</p>

<?php endif;?>



</div>

<?php
if(ENVIRONMENT == 'development'){
 print "<pre>";
 print "DEBUG INFO\n";
 print "-----------\n";
 
 print "<b>current_user</b>\n";
 print_r($current_user)."\n";

 print "</pre>";
}
?>
