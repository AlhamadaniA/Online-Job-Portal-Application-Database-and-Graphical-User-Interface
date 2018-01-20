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
		echo "<div class='alert alert-danger'>The Following error accured ".$con->error." </div>";
	}
}
?>

<body>
	<div class="container"><br><br>
		<div class="row">
			<div class="col-md-8 col-md-offset-2">

				<form action="" method="post">
					<div class="form-group">
						<input name="title" type="text" class="form-control" placeholder="Job Title">
					</div>

					<select name="category" class="selectpicker">
					  <option value="1">Mustard</option>
					  <option value="1">Ketchup</option>
					  <option value="1">Relish</option>
					</select>

					<select name="type" class="selectpicker">
					  <option value="1">Mustard</option>
					  <option value="1">Ketchup</option>
					</select>

					<select name="company_id" class="selectpicker">
					  <option value="1">Mustard</option>
					  <option value="1">Ketchup</option>
					  <option value="1">Relish</option>
					</select>

					<div class="form-group">
						<input name="company" type="text" class="form-control" placeholder="Company Name">
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
						<button type="submit" name="add" class="btn btn-success btn-block">Add Post</button>
					</div>
				</form>


			</div>
		</div>
	</div>
</body>