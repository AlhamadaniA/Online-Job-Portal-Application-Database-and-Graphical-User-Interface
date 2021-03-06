<!DOCTYPE html>
<html>
<head>
			<center><h1><a href="http://localhost/"> <strong>P</strong>Select </a></h1></center>
	<!-- META -->
	<title>PSelect| Register</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0"/>
	<meta name="description" content="" />
	
	<!-- CSS -->
	<link rel="stylesheet" type="text/css" href="css/kickstart.css" media="all" />
	<link rel="stylesheet" type="text/css" href="style.css" media="all" /> 
	
	<!-- Javascript -->
	<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
	<script type="text/javascript" src="js/kickstart.js"></script>
</head>

<body>
<div id="container" class="grid">
    




		

	
	

		
		<div class="col_12 column">
			<form method = "post">
			<fieldset>
			<legend>Create An Account</legend>
				<p>
					<label for="first_name">First Name</label>
					<input id="first_name" name="first_name" type="text" />
				</p>
				<p>
					<label for="last_name">Last Name</label>
					<input id="last_name" name="last_name" type="text" />
				</p>
				<p>
					<label for="email">Email</label>
					<input id="email" name="email" type="email" />
				</p>
				<p>
				
<label for="role"> Select role </label>
<select id="role"    name="role">	
          <option value="Administrator"> Administrator</option>		
          <option value="Applicant"> Applicant</option>			
          <option value="Recruiter"> Recruiter</option>		</select>			
				   </p>
			     	<p>
					<label for="username">Username</label>
					<input id="username" name="username" type="text" />
				   </p>
				    <p>
					<label for="password">Password</label>
					<input id="password" name="password" type="password" />
				   </p>
				    <p>
					<label for="password2">Confirm Password</label>
					<input id="password2" name="password2" type="password" />
				   </p>
			    	<p>
					<input type="submit" name="submit" value="Submit" />
				   </p>
				   </fieldset>
			</form>
		</div>
		
		<div class="clearfix"></div>
		<footer>
			<p>Copyright @copy; 2017, PSelect, All Rights Reserved</p>
		</footer>
</div> <!-- End Grid -->
</body>
</html>

<?php

 // this will avoid mysql_connect() deprecation error.
 error_reporting( ~E_DEPRECATED & ~E_NOTICE );
 // but I strongly suggest you to use PDO or MySQLi.
 
 define('DBHOST', 'localhost');
 define('DBUSER', 'root');
 define('DBPASS', 'Buddy1989');
 define('DBNAME', 'pSelect');
 
 $conn = mysqli_connect(DBHOST,DBUSER,DBPASS);
 $dbcon = mysqli_select_db($conn, DBNAME);
 
 if ( !$conn ) {
  die("Connection failed : " . mysql_error());
 }
 
 if ( !$dbcon ) {
  die("Database Connection failed : " . mysql_error());
 }
?>

<?php
 ob_start();
 session_start();
 if( isset($_SESSION['user'])!="" ){
  header("Location: home.php");
 }

 $error = false;

 if ( isset($_POST['submit']) ) 
{

 $fname = trim($_POST['first_name']);
  $fname = strip_tags($fname);
  $fname = htmlspecialchars($fname);

  $lname = trim($_POST['last_name']);
  $lname = strip_tags($lname);
  $lname = htmlspecialchars($lname);

  $username = trim($_POST['username']);
  $username = strip_tags($username);
  $username = htmlspecialchars($username);

   $role = trim($_POST['role']);
  $role = strip_tags($role);
  $role = htmlspecialchars($role);
  
  $email = trim($_POST['email']);
  $email = strip_tags($email);
  $email = htmlspecialchars($email);
  
  $pass = trim($_POST['password']);
  $pass = strip_tags($pass);
  $pass = htmlspecialchars($pass);

  $pass2 = trim($_POST['password2']);
  $pass2 = strip_tags($pass2);
  $pass2 = htmlspecialchars($pass2);
   $query = "INSERT INTO Users (id, first_name, last_name, email, role, username, password) VALUES('', '$fname','$lname', '$email','$role', '$username', '$pass')";
   $res = mysqli_query($conn, $query);
    
   if ($res) 
  {
    $errTyp = "success";
    $errMSG = "Successfully registered, you may login now";
   } 
  else 
  {
    $errTyp = "danger";
    $errMSG = "Something went wrong, try again later..."; 
   } 
  }

?>
