<?php include('incs/head.php'); ?>

<body>
	<div class="container"><br><br>

		<?php
		if(isset($_GET['pk'])){
			$key = $_GET['pk'];

			$jobs = "SELECT * FROM jobs WHERE id = $key";
			$get  = mysqli_query($con, $jobs);

				while($row = mysqli_fetch_assoc($get)){
					$companyName   = $row['company_name'];
					$type_id	   = $row['type_id']; 	
					$title         = $row['title'];
					$description   = $row['description'];
					$city          = $row['city'];
					$state         = $row['state'];
					$contact_email = $row['contact_email'];
					$Company_id    = $row['company_id'];

					$type = "SELECT id, name, color FROM types WHERE $type_id = id";
					$getType = mysqli_query($con, $type);

					while($row = mysqli_fetch_assoc($getType)){
						$typename = $row['name'];
						$typecolor = $row['color'];
					}

					$company = "SELECT id, address FROM company WHERE $Company_id = id";
					$getcompany = mysqli_query($con, $company);

					while($row = mysqli_fetch_assoc($getcompany)){
						$address   = $row['address'];
					}
				}
			}
		?>

		<div class="well">
			<div class="row">
				<div class="col-xs-2"><div class="badge <?php echo $typecolor; ?>"><?php echo $typename; ?></div></div>
				<div class="col-xs-10">
					<b><u><?php echo $title; ?></u></b><br>
					<?php echo $description; ?>
				</div>
			</div>
			<hr>

			<div class="row">
				<table class="table">
				    <thead>
				      <tr>
				        <th>Company</th>
				        <th>Email</th>
				        <th>Type</th>
				        <th>City</th>
				        <th>State</th>
				        <th>Address</th>
				      </tr>
				    </thead>

				    <tbody>
				      <tr>
				        <td><?php echo $companyName; ?></td>
				        <td><?php echo $contact_email; ?></td>
				        <td><?php echo $typename; ?></td>
				        <td><?php echo $city; ?></td>
				        <td><?php echo $state; ?></td>
				        <td><?php echo $address; ?></td>
				      </tr>
				    </tbody>
				  </table>
			</div>
		</div>
	<footer>
			<p>Copyright @copy; 2017, PSelect, All Rights Reserved</p>
		</footer>

	</div>
</body>