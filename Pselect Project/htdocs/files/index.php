<?php include('incs/head.php'); ?>

<body>
	<div class="container"><br><br>

		
		<div class="row">
			<div class="col-md-8 col-md-offset-2">

				<div class="row">
					<a href="create.php">
						<div class="btn btn-success pull-right">Post Job</div>
					</a>
					
				</div>
				
				<div class="searchEngine">
		            <div id="search">
		            	 <div class="form-group"><br>
    						<input id="key" type="text" class="form-control" placeholder="Search Term!">
						 </div>
		            </div>
		            <div id="searchResult"></div>
		        </div>
			</div>
		</div><br>

		<div class="row">
			<div class="col-md-8 col-md-offset-2">
				
				<?php 
				$jobs = "SELECT * FROM jobs";
				$get  = mysqli_query($con, $jobs);

					while($row = mysqli_fetch_assoc($get)){
						$companyName   = $row['company_name'];
						$type_id	   = $row['type_id']; 	
						$title         = $row['title'];
						$description   = $row['description'];
						$ciy           = $row['city'];
						$state         = $row['state'];
						$contact_email = $row['contact_email'];
						$Company_id    = $row['Company_id'];

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
				?>

				<div class="well">
					<div class="row">
						<div class="col-xs-2"><div class="badge <?php echo $typecolor; ?>"><?php echo $typename; ?></div></div>
						<div class="col-xs-10">
							<b><u><?php echo $title; ?></u></b><br>
							<?php echo $description; ?>
						</div>
					</div>
				</div>

				<?php } ?>




			</div>
		</div>
	</div>
		<script src="/files/incs/sript.js"></script>
</body>
</html>