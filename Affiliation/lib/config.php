<?php
	
$DATABASE_HOST = 'localhost';
$DATABASE_USER =  "root";
$DATABASE_PASS ="";
$DATABASE_NAME = 'newprogramm2020';

     $dbserver   = "localhost";
	 $dbuser     = "root";
	 $dbpass     = "";
	 $dbname     = "newprogramm2020"; 
	 
	
	 global $link;
     $link      = mysqli_connect($dbserver,$dbuser,$dbpass,$dbname);
	  $con      = mysqli_connect($dbserver,$dbuser,$dbpass,$dbname);
	
	//Include Files
	require_once("dbconn.php");
	
			$dbObject 	=  new dbconn;
	 
	 
	 
?>