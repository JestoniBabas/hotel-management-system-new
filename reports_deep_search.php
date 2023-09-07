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
					
				
				$cat = $_POST['cat'];
				$from = explode("-", $_POST['from_date']);
				$to = explode("-", $_POST['to_date']);

				$new_from =  $from[1]."-".$from[2]."-".$from[0];
				$new_to =  $to[1]."-".$to[2]."-".$to[0];
				

				//sum total 
				//	$compute = $conn->query("SELECT SUM(total_paid) FROM check_out WHERE out_date BETWEEN '".$new_from."' AND '".$new_to."'");
				//	$compute->execute();

				//	foreach($compute as $row){
				//		$sub_total = $row['SUM(total_paid)'];
				//	}
					
				if($cat == "all"){
					$get = $conn->query("SELECT * FROM check_out  WHERE out_date between '".$new_from."' AND '".$new_to."'");
					$get->execute();
					
					


				} elseif($cat == "pending"){
					$get = $conn->query("SELECT * FROM check_out  WHERE out_date between '".$new_from."' AND '".$new_to."' AND status='pending'");
					$get->execute();
				} else {
					$get = $conn->query("SELECT * FROM check_out  WHERE out_date between '".$new_from."' AND '".$new_to."' AND status='paid'");
					$get->execute();
				}
				

				///
					
					
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
</div>
<?php include 'footer.php' ?>