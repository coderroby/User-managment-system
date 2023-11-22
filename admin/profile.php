<?php
$page_name = "Profile page";
include('../class/User.php');
$user = new User();
$user->adminLoginStatus();
$message  = '';
$userDetail = $user->adminDetails();
print_r($userDetail);
include('include/header.php');
?>
<title><?php echo company_name . $page_name; ?></title>
<link rel="stylesheet" href="css/style.css">
<?php include('include/container.php');?>
<div class="container contact">	
	<h2><?php echo company_name . system_heading; ?></h2>
	<?php include 'menus.php'; ?>
	<div class="table-responsive">		
		<div><span style="font-size:20px;">Admin Details:</span><div class="pull-right"></div>
		<table class="table table-boredered">		
			<tr>
				<th>Name</th>
				<td><?php echo $userDetail['first_name']." ".$userDetail['last_name']; ?></td>
			</tr>
			<tr>
				<th>Email</th>
				<td><?php echo $userDetail['email']; ?></td>
			</tr>
			<tr>
				<th>Password</th>
				<td>**********</td>
			</tr>
			<tr>
				<th>Image</th>
				<td><?php echo $userDetail['image_name']; ?></td>
			</tr>
			<tr>
				<th>Phone</th>
				<td><?php echo $userDetail['phone']; ?></td>
			</tr>
			<tr>
				<th>User Type</th>
				<td><?php echo ($userDetail['role'] == 1) ? "Admin" : "user"; ?></td>
			</tr>
		</table>
	</div>
</div>
<?php include('include/footer.php');?>