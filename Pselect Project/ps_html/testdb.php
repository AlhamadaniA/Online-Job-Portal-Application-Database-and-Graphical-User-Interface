

<?php
$hostname="localhost";
$username="root";
$databaseName="pSelect";
$password="	"

$dbConnected=mysql_connect($hostname,$username,$password);
$dbSelected=mysql_select_db($database_name, $dbConnected);

if ($dbConnected) {
			echo "DB connected<br /><br />";

	if ($dbSelected) {
		echo "DB connected<br /><br />";
	} else {
		echo "DB connection FAILED<br /><br />";
	}		
} else {
	echo "MySQL connection FAILED<br /><br />";
}





?>