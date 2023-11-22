<?php
$page_name = "Dashboard";
include('../class/User.php');
$user = new User();
$user->adminLoginStatus();
include('include/header.php');
?>
<title><?php echo company_name . $page_name; ?></title>
<link rel="stylesheet" href="css/style.css">
<?php include('include/container.php');?>
<div class="container contact">	
	<h2><?php echo company_name . system_heading; ?></h2>
	<?php include 'menus.php'; ?>
	<div class="col-lg-10 col-md-10 col-sm-9 col-xs-12">   
		<a href="#"><strong><span class="fa fa-dashboard"></span> My Dashboard</strong></a>
		<hr>		
		<div class="row">
			<div class="col-md-12">
				<div class="row">
					<div class="col-md-4">
						<div class="panel panel-default">
							<div class="panel-body bk-primary text-light">
								<div class="stat-panel text-center">
									<div class="stat-panel-number h1 "><?php echo $user->totalUsers(""); ?></div>
									<div class="stat-panel-title text-uppercase">Total Users</div>
								</div>
							</div>											
						</div>
					</div>
					<div class="col-md-4">
						<div class="panel panel-default">
							<div class="panel-body bk-success text-light">
								<div class="stat-panel text-center">
									<div class="stat-panel-number h1 "><?php echo $user->totalUsers('1'); ?></div>
									<div class="stat-panel-title text-uppercase">Total Admin</div>
								</div>
							</div>											
						</div>
					</div>		
					<div class="col-md-4">
						<div class="panel panel-default">
							<div class="panel-body bk-success text-light">
								<div class="stat-panel text-center">
									<div class="stat-panel-number h1 "><?php echo $user->totalClients(); ?></div>
									<div class="stat-panel-title text-uppercase">Clients</div>
								</div>
							</div>											
						</div>
					</div>													
					<!-- <div class="col-md-3">
						<div class="panel panel-default">
							<div class="panel-body bk-danger text-light">
								<div class="stat-panel text-center">
									<div class="stat-panel-number h1 "><?php echo $user->totalUsers('deleted'); ?></div>
									<div class="stat-panel-title text-uppercase">Total Deleted Users</div>
								</div>
							</div>
						</div>
					</div>							 -->
				</div>
			</div>
		</div>		
	</div>
</div>	
<?php include('include/footer.php');?>