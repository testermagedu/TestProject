<?php     //start php tag
//include connect.php page for database connection
require_once("./lib/config.php");
//if submit is not blanked i.e. it is clicked.
if(isset($_POST["submit"]))
{
	if( $_REQUEST['email']=='' || $_REQUEST['password']==''|| $_REQUEST['repassword']=='')
	{
		echo "please fill the empty field.";
	}
	else
		{
		
				$a=	$_POST['regno'];
				$b=	$_POST['name'];
				$c=	$_POST['dob'];
				$d=	$_POST['email'];
				$e=	$_POST['mobile'];				
				$f=	$_POST['password'];
				
				$sql="INSERT INTO `students`( `regno`, `name`, `dob`, `email`, `mobile`, `passwd`) VALUES ('$a','$b','$c','$d','$e','$f')";
				echo $sql;
				$res=mysqli_query($con,$sql);
					if($res)
					{
						echo "<script type='text/javascript'>alert(\"Saved Successfully\");</script>";
						header("location:index.php");
					}
					else 
					{
						echo "There is some problem in inserting record";
					}
				
	}
}

?>