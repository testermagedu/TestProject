<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
 
	<head>
		<meta charset="utf-8">
		<title>New Programme :: Migration</title>
        <link rel="icon" href="img/logo.png" type="image/x-png"/>
<link rel="shortcut icon" href="img/logo.png" type="image/x-png"/>

		<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.1/css/all.css">
        <link href="css/stylesheet.css" rel="stylesheet" type="text/css">
        
<link rel="stylesheet" href="css/bootstrap.min.css">

<script src="js/jquery-3.2.1.slim.min.js"></script>
<script src="js/popper.min.js"></script>
<script src="js/bootstrap.min.js"></script>
        <script type="text/javascript">
		  function checkPassword(form) { 
                password1 = form.Affiliation.value; 
				if(password1=="0")
				{
				alert("Please Select Affiliation Type");
				return false;
				}
				else{return true;}
				
				}
		</script>
	</head>
	<body>
		<div class="container">
        
	 <div class="jumbotron">
	<h3 align="center" class="alert-danger">APPLICATION FOR MIGRATION CERTIFICATE</h3>
	 
</h3>
</div>
<div class="row">
<div class="login">
	 

			<h1>Login</h1>
			<form action="authenticate.php" method="post" onSubmit = "return checkPassword(this)"> 
				<label for="username">
					<i class="fas fa-user"></i>
				</label>
				<input type="text" name="username" placeholder="Register Number" id="username" required>
				<label for="password">
					<i class="fas fa-lock"></i>
				</label>
				<input type="text" name="password" placeholder="Password" id="password" required>
             
    
				<input type="submit" value="Login">
			</form><br />

        <h3 align="right">    <a href="signup.php" class="btn btn-success" >New Registration </a></h3>
		</div>
        		</div>
                		</div>
                        		</div>
                                
	</body>
</html>