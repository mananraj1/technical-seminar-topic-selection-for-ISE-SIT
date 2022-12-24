<?php 

date_default_timezone_set('Asia/Kolkata');

$dbServername = "localhost";
$dbUsername = "root";
$dbPassword = "";
$dbName = "mananise_db";

// create connection
$conn = new mysqli($dbServername,$dbUsername,$dbPassword,$dbName);
// check connection
if($conn -> connect_error) {
    die("connection failed:".$conn->connect_error);
}

?>