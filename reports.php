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
       
		<div class="cont" id="cont_slider">
			<div class="cont-header">
				<p class="m-0"><span class="glyphicon glyphicon-log-out text-danger"></span> Check-out list</p>
				<form method="POST" action="reports_deep_search.php">
					<div class="container-fluid">
						<div class="row">
							<div class="col-md-3">
								<b>Category</b>
								<select name="cat" class="form-control">
									<option value="all">All</option>
									<option value="pending">Pending</option>
									<option value="paid">Fully paid</option>
								</select>
							</div>
							<div class="col-md-3">
								<b>From</b>
									<input type="date" name="from_date" class="form-control" required />
							</div>
							<div class="col-md-3">
								<b>To</b>
									<input type="date" name="to_date" class="form-control" required />
							</div>
							<div class="col-md-3">
								<br/>
									<input type="submit" name="btn_deep_search" class="btn btn-outline-success" value="SEARCH"/>
							</div>
						</div>
					</div>
				</form>
			</div>
			<div class="cont-body">
				
				<table class="tbl_reports">
					<tr class="text-center">
						<td rowspan="2"><b>Full name</b></td>
						<td rowspan="2"><b>Address</b></td>
						<td rowspan="2"><b>Nationality</b></td>
						<td rowspan="2"><b>Contact no.</b></td>
						<td rowspan="2"><b>Email</b></td>
						<td rowspan="2"><b>Pax</b></td>
						<td colspan="3"><b>Room</b></td>
						<td rowspan="2"><b>Stay</b></td>
						<td colspan="3"><b>Payables</b></td>
						<td rowspan="2"><b>In by</b></td>
						<td colspan="2"><b>Check in</b></td>
						<td rowspan="2"><b>Out by</b></td>
						<td colspan="2"><b>Check out</b></td>
					</tr>
					<tr class="text-center">
						<td><b>Type</b></td>
						<td><b>No.</b></td>
						<td><b>Price</b></td>
						<td><b>To pay</b></td>
						<td><b>Paid</b></td>
						<td><b>Bal</b></td>
						<td><b>Date</b></td>
						<td><b>Time</b></td>
						<td><b>Date</b></td>
						<td><b>Time</b></td>
					</tr>
				<?php
					
					$get = $conn->query("SELECT * FROM check_out");
					$get->execute();
					
					$rows_per_page = 50;
			
				$total_rows = $get->rowCount();
				
				$link_pages = ceil($total_rows / $rows_per_page);
				
				if(isset($_GET['recent_page'])){
					$page = $_GET['recent_page'];
				} else {
					$page = 1;
				}
				
				$offset = ($page-1) * $rows_per_page;
				
					$get = $conn->query("SELECT * FROM check_out ORDER BY out_id DESC LIMIT ".$offset.",".$rows_per_page."");
					$get->execute();
					
					if($get->rowCount() > 0){
						$i = 1;
						foreach($get as $r){
							$ball = $r['to_pay'] - $r['total_paid'];
							if($r['total_paid'] > 1){
								$pending = 'bg_danger';
							} else {
								$pending = 'bg_success';
							}
				?>
					<tr class="<?php echo $pending; ?>">
						<td><?php echo $r['fname']." ".$r['mname']." ".$r['lname']." ".$r['xname']; ?></td>
						<td><?php echo $r['address']; ?></td>
						<td><?php echo $r['nationality']; ?></td>
						<td><?php echo $r['contact_no']; ?></td>
						<td><?php echo $r['email']; ?></td>
						<td><?php echo $r['pax_no']; ?></td>
						<td><?php echo $r['room_type']; ?></td>
						<td><?php echo $r['room_no']; ?></td>
						<td><?php echo number_format($r['room_price']); ?></td>
						<td><?php echo $r['stay_counter']; ?></td>
						<td><?php echo number_format($r['to_pay']); ?></td>
						<td>
							<?php 
								
								
								echo number_format($ball);
								
								
							?>
						</td>
						<td><?php echo number_format($r['total_paid']); ?></td>
						
						<td><?php echo $r['in_by']; ?></td>
						<td><?php echo $r['in_date']; ?></td>
						<td><?php echo $r['in_time']; ?></td>
						<td><?php echo $r['out_by']; ?></td>
						<td><?php echo $r['out_date']; ?></td>
						<td><?php echo $r['out_time']; ?></td>
					</tr>
				<?php			
						}
					}
				?>
				</table>
		</div>
		</div>
			
			<div class="div_tip">
				<b><?php echo "Showing page ".$page." out of ".$link_pages." pages"; ?> (<?php echo $total_rows; ?>rows)</b><br/>
				<?php
					for($page = 1; $page <= $link_pages; $page++){
				?>
					
					<a href="reports.php?recent_page=<?php echo $page; ?>" class="btn-link text-white p-1 m-1 bg-primary rounded-circle"><?php echo $page; ?></a>
				<?php
					}
				?>	
			</div>
		</div>
				
			</div>
		</div>
        
    </div>
</div>
<?php include 'footer.php' ?>