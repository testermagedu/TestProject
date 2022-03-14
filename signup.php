<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
 
	<head>
		<meta charset="utf-8">
		<title>New Programme :: Login</title>
        <link rel="icon" href="img/logo.png" type="image/x-png"/>
<link rel="shortcut icon" href="img/logo.png" type="image/x-png"/>

		<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.1/css/all.css">
        <link href="stylesheet.css" rel="stylesheet" type="text/css">
        <link rel="stylesheet" href="css/bootstrap.min.css">

<script src="js/jquery-3.2.1.slim.min.js"></script>
<script src="js/popper.min.js"></script>
<script src="js/bootstrap.min.js"></script>
  <script> 
          
            // Function to check Whether both passwords 
            // is same or not. 
            function checkPassword(form) { 
                password1 = form.password.value; 
                password2 = form.repassword.value; 
  
                // If password not entered 
				
				 
                if (password1 == '') {
                    alert ("Please enter Password"); 
					 return false;}
                      
                // If confirm password not entered 
                else if (password2 == '') {
                    alert ("Please enter confirm password"); 
					 return false;}
                      
                // If Not same return False.     
                else if (password1 != password2) { 
                    alert ("\nPassword did not match: Please try again...") 
                    return false; 
                } 
				else if(password1.length<8)
				{
				 alert ("\nPassword must be 8 Char...") 
                    return false; 
					
				}
  
                // If same return True. 
                else{ 
                    
                    return true; 
                } 
            } 
        </script> 
	</head>
	<body>
		<div class="container">
        <div class="row">
        <div class="jumbotron">
	<h3 align="center" class="alert-danger">FEE PORTAL REGISTRATION FOR MIGRATION CERTIFICATE</h3>
	<!--<h3 align="center" class="alert-success">APPLICATION TO START NEW PROGRAMME (S) IN THE AFFILIATED COLLEGES FOR THE ACADEMIC YEAR 2020 – 2021</p>-->
</h3>
</div>
        <div class="col-md-6">
	<table  class="table table-hover" align="center">
<form name="registration" method="post" action="registration.php" onSubmit = "return checkPassword(this)"> 
<!-- we will create registration.php after registration.html -->

 <tr> 
    <td> Register Number</td>
    <td> <input type="text" name="regno" value="" class="form-control"  required></td>
 </tr>
 <tr>   
    <td>Name of the Candidate</td>
    <td><input type="text" name="name" value=""   class="form-control" required></td>
</tr>


<tr>
    <td>Date of Birth </td>
    <td><input type="date" name="dob" value=""   class="form-control" required></td>
</tr>
<tr><td>e-Mail ID</td><td><input type="text" name="email" value=""   class="form-control" required></td></tr>
<tr><td>Mobile</td><td><input type="tel" name="mobile" value=""  pattern="[0-9]{10}"  class="form-control" required></td></tr>
<tr><td>Password</td><td><input type="password" name="password" value=""   class="form-control" required></td></tr>
<tr><td>Retype-Password</td><td><input type="password" name="repassword" value=""   class="form-control" required></td></tr>
<tr><td colspan="2" align="center">
<input type="submit" name="submit" value="submit" class="btn btn-danger"></td></tr>
</form>
</table>

</body>

</html>