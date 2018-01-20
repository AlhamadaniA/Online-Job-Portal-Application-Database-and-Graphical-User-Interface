<?php include('incs/head.php'); ?>

<?
if(isset($_POST['add'])){

	$title = $_POST['title'];
	$category = $_POST['category'];
	$type = $_POST['type'];
	$company = $_POST['company'];
	$city = $_POST['city'];
	$state = $_POST['state'];
	$email = $_POST['email'];
	$description = $_POST['description'];
	$user = 1;
	$company_id = $_POST['company_id'];


	$create = "INSERT INTO jobs (title, category_id, type_id, user_id, company_name, city, state, contact_email, created, description, company_id)
VALUES ('$title', $category, $type, $user, '$company', '$city', '$state', '$email', now(), '$description', $company_id)";
	
	if ($con->query($create) === TRUE) {
    	echo "
			<div class='alert alert-success'>Job successfully added.</div>
    	";

	} else {
		echo "<div class='alert alert-danger'>The following error occured ".$con->error." </div>";
	}
}
?>
	<header>
		<center>	<h1><a href="http://localhost/"> <strong>P</strong>Select </a></h1></center>
	</header>
<body>
			<center><h2> <strong>Add</strong> Job here </h2></center>
	<div class="container"><br>
		<div class="row">
			<div class="col-md-8 col-md-offset-2">

				<form action="" method="post">
					<div class="form-group">
						<input name="title" type="text" class="form-control" placeholder="Job Title">
					</div>

				<select name="category" class="selectpicker">
				  <option value="">Select Category</option>
				  <option value="1">Accounting & Banking</option>
				 <option value="2">Construction</option>
				 <option value="3">Fashion & Style</option>
				 <option value="4">Food & Restaurant</option>
				 <option value="5">Healthcare</option>
				 <option value="6">Retail & Sales</option>
				 <option value="7">Technology</option>
					</select>

					<select name="type" class="selectpicker">
				     <option value="">Select Type</option>					  
					  <option value="1">Full Time</option>
					  <option value="2">Part Time</option>
					  <option value="3">Freelance</option>
					</select>

					<select name="company_id" class="selectpicker">
					  <option value="">Select Company</option>					  
					  <option value="1">1	</option>
					  <option value="2">2</option>
					  <option value="3">3</option>
					  <option value="123">123</option><br>
					</select>

					<div class="form-group">
					<br>	<input name="company" type="text" class="form-control" placeholder="Company Name">
					</div>

					<div class="form-group">
						<input name="city" type="text" class="form-control" placeholder="City">
					</div>

					<div class="form-group">
						<input name="state" type="text" class="form-control" placeholder="State">
					</div>

					<div class="form-group">
						<input name="email" type="text" class="form-control" placeholder="Email">
					</div>

					<div class="form-group">
						<textarea name="description" class="form-control" placeholder="Description"></textarea> 
					</div>

					<div class="form-group">
						<button type="submit" name="add" class="btn btn-success btn-block">Add Job</button>
					</div>
				</form>


			</div>
		</div>
			<footer>
			<p>Copyright @copy; 2017, PSelect, All Rights Reserved</p>
		</footer>
	</div>
</body>