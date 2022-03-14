<?php
// We need to use sessions, so you should always start sessions using the below code.
session_start();
require_once("../lib/config.php");
// If the user is not logged in redirect to the login page...
if (!isset($_SESSION['loggedin'])) {
	header('Location: ../index.php');
	exit();
}
?><!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>New Programme :: Login</title>

        <link rel="icon" href="img/logo.png" type="image/x-png"/>
<link rel="shortcut icon" href="img/logo.png" type="image/x-png"/>
<link href="stylesheet.css" rel="stylesheet" type="text/css">
<link href="../css/bootstrap.min.css" rel="stylesheet" type="text/css">
		 
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script>
$(document).ready(function(){
 //$("#newdiv").hide();
 $("#addnew").click(function(){
    $("#newdiv").show();
  });


			$("#degl").change(function(){
			var syear = $("#degl").val(); 
			$.ajax({type:"GET", url:"functions.php",data:"degl="+syear, success:function(result)
			{ $("#degree").html(result);}
					});
				});
			});
</script>
 
</head>
	<body class="loggedin">
		<nav class="navtop">
			<div>
<h1>APPLICATION FOR MIGRATION CERTIFICATE</h1>
				<a href="profile.php"><i class="fas fa-user-circle"></i>Profile</a>
				<a href="logout.php"><i class="fas fa-sign-out-alt"></i>Logout</a>
			</div>
		</nav>
		<div class="content">
			<h2>Home Page</h2>
			<p>Welcome  <b> <?=$_SESSION['name']?> ! </b> </p>
           
            <?php
            $auth= $_SESSION['name'];
            if($auth=="Admin")
           {
		   echo "<a href='report.php'>View Paid List</a>";
		   }
		   else
		   {
	
	  $sql = "SELECT * FROM `affliated_payment` WHERE `REGNO`='".$_SESSION['id']."' and `STATUS`='TXN_SUCCESS'";
	  
	 if ($result=mysqli_query($con,$sql))
  {
  // Return the number of rows in result set
  $rowcount=mysqli_num_rows($result);
 echo"<table class ='table table-hover'>";
  if($rowcount>0)
  {
  while($res = mysqli_fetch_array($result)){
  $a=$res[2];
  $b=$res[4];
  $c=$res[5];
  $d=$res[6]." ( ".$res[13]." ) ";
  $e=$res[8];
  $f=$res[18]." ( ".$res[19]." ) ";
  
  print(" <tr><td></td> <td>$a</td> <td>$d</td> <td>$e</td> <td>$c</td><td>$f</td><td>".$res[20]." Programme</td> <TD><a href='Docs/New course application.pdf'> Download Form </a></td></tr>");
  }
  }
  
//echo  "</table><br><input type='button' name='addnew' id='addnew' value='Add New Programme' class='btn btn-danger'>"; 
?>
</table>
<div id="newdiv" >
 <form method="post" action="pgRedirect.php" name="f1">
 <table class="table">
 <tr>
	<td>Register Number : <?php echo $_SESSION['id']?></td>
 </tr>
 <tr>
	<td>Candidate Name : <?php echo $_SESSION['name']?></td>
 </tr>
		
        <tr>    <td>
        <!--<input type="hidden" id="ORDER_ID" tabindex="1" maxlength="20" size="20" 	name="ORDER_ID" autocomplete="off" 	value="<?php echo  "PERMIG" . rand(10000,99999999)?>">-->
        <input type="hidden" id="ORDER_ID" tabindex="1" maxlength="20" size="20" 	name="ORDER_ID" autocomplete="off" 	value="<?php echo  "PERMIG" . time()?>">
        	
        <input type="hidden"  id="CUST_ID" tabindex="2" maxlength="15" size="15" name="CUST_ID" autocomplete="off" value="<?=$_SESSION['id']?>"> 
        		 
        <input type="hidden" id="INDUSTRY_TYPE_ID" tabindex="4" maxlength="12" size="12" name="INDUSTRY_TYPE_ID" autocomplete="off" value="PrivateEducation"> 
        		
        <input  type="hidden"id="CHANNEL_ID" tabindex="4" maxlength="12" size="12" name="CHANNEL_ID" autocomplete="off" value="WEB">
        		 
  <!--  Enter the amount do you want to  Pay (₹17000.00 + ₹12.00% GST) : <input title="TXN_AMOUNT" tabindex="10" type="text" name="TXN_AMOUNT" value="19040.00"><br>
-->
      Your Need to Pay  (₹17000.00 + ₹12.00% GST) : <input title="TXN_AMOUNT" tabindex="10" type="text" name="TXN_AMOUNT" value="1000.00" readonly>
      	
 	    <input value="Pay Now" type="submit" class='btn btn-success'> 
		 </td></tr></table>
	</form>
</div>
 
    
<?php

			 
   }
mysqli_close($con);
?> 
	</form>
    
    <?php
	}
	?>
		</div>
	</body>
</html>