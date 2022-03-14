<?php
	
$DATABASE_HOST = 'localhost:3308';
$DATABASE_USER =  "root";
$DATABASE_PASS ="";
$DATABASE_NAME = 'migration';

     $dbserver   = "localhost:3308";
	 $dbuser     = "root";
	 $dbpass     = "";
	 $dbname     = "migration"; 
	 
	
	 global $link;
     $link      = mysqli_connect($dbserver,$dbuser,$dbpass,$dbname);
	  $con      = mysqli_connect($dbserver,$dbuser,$dbpass,$dbname);
	
	//Include Files
	require_once("dbconn.php");
	
			$dbObject 	=  new dbconn;
	 
	 
	 
?>