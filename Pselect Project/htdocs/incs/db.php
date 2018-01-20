<?

$db['db_host'] = "localhost";
$db['db_user'] = "root";
$db['db_pass'] = "Buddy1989";
$db['db_name'] = "pselect";

foreach ($db as $key => $value){
    define(strtoupper($key), $value);
}
$con = mysqli_connect(DB_HOST, DB_USER, DB_PASS, DB_NAME);
?>
