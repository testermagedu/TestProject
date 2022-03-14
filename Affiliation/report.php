<?php
// We need to use sessions, so you should always start sessions using the below code.
session_start();
require_once("../lib/config.php");
// If the user is not logged in redirect to the login page...
if (!isset($_SESSION['loggedin'])) {
	header('Location: login.php');
	exit();
}
?><!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>AFFILIATION - Online Payment Portal</title>

        <link rel="icon" href="img/logo.png" type="image/x-png"/>
<link rel="shortcut icon" href="img/logo.png" type="image/x-png"/>
<link href="stylesheet.css" rel="stylesheet" type="text/css">
		 
	</head>
	<body class="loggedin">
		<nav class="navtop">
			<div>
				<h1>PRIDE - Online Payment Portal</h1>
				<a href="profile.php"><i class="fas fa-user-circle"></i>Profile</a>
				<a href="logout.php"><i class="fas fa-sign-out-alt"></i>Logout</a>
			</div>
		</nav>
		<div class="content">
			<h2>Home Page</h2>
			<p>Welcome back, <?=$_SESSION['name']?>!</p>
           
           <table border="1px">
					 
				<?php
		
		
	  $sql = "SELECT `affliated_payment`.*,college.name FROM `affliated_payment`,college WHERE affliated_payment.regno=college.code and affliated_payment.`STATUS`='TXN_SUCCESS'";
	  
	 if ($result=mysqli_query($con,$sql))
  {
  $i=0;
  echo "<tr><td>S.No.</td><td>CODE</td><td>Name</td>  <td>TXNAMOUNT</td>   <td>Level</td><td>Degree</td> <td>TXNDATE</td> <td>STATUS</td>   </tr>";
  		while($res = mysqli_fetch_array($result))
		{
		$i = $i+1;
			 echo "<tr><td>$i</td><td>$res[1]</td>  <td>$res[21] </td>   <td>$res[6] , PAYMENTMODE - $res[5]</td> <td>$res[18] - $res[20]</td><td>$res[19]</td> <td>$res[8]</td> <td>$res[9]</td>   </tr>";
		}
		echo "</table>";
  
   }
mysqli_close($con);
?> 

		</div>
	</body>
</html>