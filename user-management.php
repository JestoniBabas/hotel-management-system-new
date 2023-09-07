<?php 
include 'header.php';
include 'menu.php';
?>
<div class="content">

    <div class="content-header" id="<?php echo $darkHeader; ?>">
    
        <?php include 'location-indicator.php'; ?>
        
            <ul class="ul-header">
                <li title="Log out"><a href="logout.php" class="logout"><span class="glyphicon glyphicon-off"></a></span></li>
            </ul>

            <?php include 'alert_checkout.php'; ?>

    </div>

    <div class="content-context" id="<?php echo $_SESSION['theme']; ?>">
       
		<div class="cont">
			<div class="cont-header">
				<p><span class="glyphicon glyphicon-plus-sign text-primary"></span> Add user account</p>
			</div>
			<div class="cont-body">
				<form method="POST" action="server.php">
					<div class="container-fluid">
						<div class="row">
							<div class="col-md-4">
								<b>Full name</b>
									<input type="text" name="fullname" class="form-control" required />
							</div>
							<div class="col-md-4">
								<b>Email</b>
									<input type="email" name="email" class="form-control" required />
							</div>
							<div class="col-md-4">
								<br/>
									<input type="submit" name="btn_add_user" class="btn btn-outline-success" value="ADD USER" />
							</div>
						</div>
					</div>
				</form>
				<br/>
				<p class="text-danger"><b>NOTE:</b> By default, the user's password is <b>user</b></p>
			</div>
		</div>
		<br/>
		<br/>
		<div class="cont">
			<div class="cont-header">
				<p><span class="glyphicon glyphicon-list text-primary"></span> List of user accounts</p>
			</div>
			<div class="cont-body">
				<?php
					$get = $conn->query("SELECT * FROM users WHERE utype='user' ORDER BY uid ASC");
					$get->execute();
					
					if($get->rowCount() > 0){
						?>
						<table class="tbl_users">
							<tr>
								<td><b>Image</b></td>
								<td><b>Full name</b></td>
								<td><b>Email</b></td>
								<td><b>Created at</b></td>
								<td><b>Theme</b></td>
								<td><b>Reset default</b></td>
							</tr>
					<?php
						foreach($get as $row){
					?>
							<tr>
								<td><img src="images/<?php echo $row['avatar']; ?>" class="list_avatar" loading="lazy"/></td>
								<td><?php echo $row['fullname']; ?></td>
								<td><?php echo $row['email']; ?></td>
								<td><?php echo $row['dtc']; ?></td>
								<td><?php echo $row['theme']; ?></td>
								<td align="center">
									<span class="glyphicon glyphicon-refresh text-danger pointer rotate_refresh" title="Reset account" onclick="reset_user(<?php echo $row['uid']; ?>)"></span>
								</td>
							</tr>
					<?php
						}
					?>
						</table>
					<?php
					}
				?>
				<br/>
				<p class="text-danger"><b>NOTE:</b> When clicked reset icon, the user's password is <b>user</b></p>
			</div>
				
		</div>
        
    </div>
</div>
<?php include 'footer.php' ?>