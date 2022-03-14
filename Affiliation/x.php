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
		 
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script>
$(document).ready(function(){
 $("#newdiv").hide();
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
<h1>APPLICATION TO START NEW PROGRAMME (S) IN THE AFFILIATED COLLEGES FOR THE ACADEMIC YEAR 2020 – 2021 </h1>
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
 
  if($rowcount>0)
  {
  $res = mysqli_fetch_array($result);
  $a=$res[2];
  $b=$res[4];
  $c=$res[5];
  $d=$res[6]." ( ".$res[13]." ) ";
  $e=$res[8];
  
  
  print(" <tr><td></td><td>$a</td> <td>$d</td> <td>$e</td> <td>$c</td> <TD><a href='Docs/New course application.pdf'> Download Form </a></td></tr>");
echo  "<br><input type='button' name='addnew' id='addnew' value='Add new program' class='btn btn-danger'>"; 
?>

<div id="newdiv" >
 <form method="post" action="pgRedirect.php" name="f1">
Select Degree Type :  <select id="degl" name="degl">
<option value="0"> -- Select -- </option>
<option value="UG">UG</option>
<option value="PG">PG</option>

 </select>
		 
Select Degree:<select class="form-control" id="degree" name="degree">                 </select>
         
        <input type="hidden" id="ORDER_ID" tabindex="1" maxlength="20" size="20" 	name="ORDER_ID" autocomplete="off" 	value="<?php echo  "PERAFFI" . rand(10000,99999999)?>">
        
        <input type="hidden"  id="CUST_ID" tabindex="2" maxlength="15" size="15" name="CUST_ID" autocomplete="off" value="<?=$_SESSION['id']?>"> 
        
        <input type="hidden" id="INDUSTRY_TYPE_ID" tabindex="4" maxlength="12" size="12" name="INDUSTRY_TYPE_ID" autocomplete="off" value="PrivateEducation"> 
        
        <input  type="hidden"id="CHANNEL_ID" tabindex="4" maxlength="12" size="12" name="CHANNEL_ID" autocomplete="off" value="WEB">
        
  <!--  Enter the amount do you want to  Pay (₹17000.00 + ₹12.00% GST) : <input title="TXN_AMOUNT" tabindex="10" type="text" name="TXN_AMOUNT" value="19040.00"><br>
-->
      Your Need to Pay  (₹17000.00 + ₹12.00% GST) : <input title="TXN_AMOUNT" tabindex="10" type="text" name="TXN_AMOUNT" value="19040.00">
      
         <!--   <input title="TXN_AMOUNT" tabindex="10" type="hidden" name="TXN_AMOUNT" value="1">-->
 
 	 <p style="background:#3300CC; color:#FFFFFF; padding:10px; text-align:center">  </strong>  <input value="Pay Now" type="submit" ></p>

	</form>
</div>
<?php

  }
  else
  {
 ?> 
 

  <form method="post" action="pgRedirect.php" name="f1">
		 
         
        <input type="hidden" id="ORDER_ID" tabindex="1" maxlength="20" size="20" 	name="ORDER_ID" autocomplete="off" 	value="<?php echo  "PERAFFI" . rand(10000,99999999)?>">
        
        <input type="hidden"  id="CUST_ID" tabindex="2" maxlength="15" size="15" name="CUST_ID" autocomplete="off" value="<?=$_SESSION['id']?>"> 
        
        <input type="hidden" id="INDUSTRY_TYPE_ID" tabindex="4" maxlength="12" size="12" name="INDUSTRY_TYPE_ID" autocomplete="off" value="PrivateEducation"> 
        
        <input  type="hidden"id="CHANNEL_ID" tabindex="4" maxlength="12" size="12" name="CHANNEL_ID" autocomplete="off" value="WEB">
        
  <!--  Enter the amount do you want to  Pay (₹17000.00 + ₹12.00% GST) : <input title="TXN_AMOUNT" tabindex="10" type="text" name="TXN_AMOUNT" value="19040.00"><br>
-->
      Your Need to Pay  (₹17000.00 + ₹12.00% GST) : <input title="TXN_AMOUNT" tabindex="10" type="text" name="TXN_AMOUNT" value="19040.00">
      
         <!--   <input title="TXN_AMOUNT" tabindex="10" type="hidden" name="TXN_AMOUNT" value="1">-->
 
 	 <p style="background:#3300CC; color:#FFFFFF; padding:10px; text-align:center">  </strong>  <input value="Pay Now" type="submit" ></p>

	</form>
    
<?php

			  }
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