<?php

$dbhost = 'localhost:3306';
$dbuser = 'root';
$dbpass = '';
$dbname = 'DBe_commerce';

$link = mysqli_connect($dbhost,$dbuser,$dbpass) or die ('Error connecting to mysql: ' . mysqli_error($link).'\r\n');

if (!isset($_POST['installdb']))
{
	$query = "USE ".$dbname;
	mysqli_query($link, $query);
}

?>