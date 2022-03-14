<?php
// We need to use sessions, so you should always start sessions using the below code.
session_start();
require_once("../lib/config.php");

// If the user is not logged in redirect to the login page...
if (!isset($_SESSION['loggedin'])) {
	header('Location: index.html');
	exit();
}
 
// We don't have the password or email info stored in sessions so instead we can get the results from the database.
$stmt = $con->prepare('SELECT   `name`, `cstauts`, `nameprinc`, `qustatus`, `cbody`, `email` FROM `college` WHERE `code` = ?');
// In this case we can use the account ID to get the account info.
$stmt->bind_param('s', $_SESSION['id']);
$stmt->execute();
$stmt->bind_result($A,$B,$C,$D,$E,$F);
$stmt->fetch();
$stmt->close();
?>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>New Programme :: Login</title>
		<link href="stylesheet.css" rel="stylesheet" type="text/css">
		 
	</head>
	<body class="loggedin">
		<nav class="navtop">
			<div>
			<h1> APPLICATION TO START NEW PROGRAMME (S) IN THE AFFILIATED COLLEGES FOR THE ACADEMIC YEAR 2020 – 2021</h1>

				<a href="index.php"><i class="fas fa-user-circle"></i>Home</a>
                <a href="profile.php"><i class="fas fa-user-circle"></i>Profile</a>
				<a href="logout.php"><i class="fas fa-sign-out-alt"></i>Logout</a>
			</div>
		</nav>
		<div class="content">
			<h2>Profile Page</h2>
			<div>
				
				<table>
					<tr>
						<td>COL. CODE </td>
						<td><?=$_SESSION['id']?></td>
					</tr>
					<tr>
						<td>Names of the College</td>
						<td><?=$A?></td>
					</tr>
					<tr>
						<td>Status</td>
						<td><?=$B?></td>
					</tr>
                    <tr>
						<td>Name of the Principal </td>
						<td><?=$C?></td>
					</tr>
					<tr>
						<td>Qualification approval of the Principal</td>
						<td><?=$D?></td>
					</tr>
                    <tr>
						<td>College Type</td>
						<td><?=$E?></td>
					</tr>
					 
                    <tr>
						<td>e-Mail</td>
						<td><?=$F?></td>
					</tr>
				</table>
			</div>
		</div>
	</body>
</html>