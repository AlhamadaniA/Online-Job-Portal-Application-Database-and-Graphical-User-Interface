<?php include('incs/head.php'); ?>



			<center><h1><a href="http://localhost/"> <strong>P</strong>Select </a></h1></center>
			<div align="right">	<label>	<h4><a href="http://localhost/register.php"> Sign up </a></h4></label></div>
	<body>
	<div class="container"><br><br>

		
		<div class="row">
			<div class="col-md-8 col-md-offset-2">

				<div class="row">
					<a href="create.php">
						<div class="btn btn-success pull-right">Post Job</div>
					</a>
					
				</div>
		       <h3>Browse Jobs</h3>
				<div class="searchEngine">
		            <div id="search">
		            	 <div class="form-group">
    						<input id="key" type="text" class="form-control" placeholder="Search Term!">
    												<br>	<h3>Latest Job Listings</h3>
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
			<footer>
			<p>Copyright @copy; 2017, PSelect, All Rights Reserved</p>
		</footer>
	</div>
		<script src="/files/incs/sript.js"></script>
</body>
</html>