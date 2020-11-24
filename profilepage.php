<?php
// We need to use sessions, so you should always start sessions using the below code.
session_start();
// If the user is not logged in redirect to the login page...
if (!isset($_SESSION['loggedin'])) {
	header('Location: index.html');
	exit;
}
$DATABASE_HOST = 'localhost';
$DATABASE_USER = 'Fiber_User';
$DATABASE_PASS = 'anonymousfiber';
$DATABASE_NAME = 'Anonymous_Fiber';
$con = mysqli_connect($DATABASE_HOST, $DATABASE_USER, $DATABASE_PASS, $DATABASE_NAME);
if (mysqli_connect_errno()) {
	exit('Failed to connect to MySQL: ' . mysqli_connect_error());
}
// We don't have the password or email info stored in sessions so instead we can get the results from the database.
$stmt = $con->prepare('SELECT First_Name,Last_Name,Mobile_Number ,email,Address,City,State,PinCode,Service_Type FROM user WHERE Customer_ID = ?');
// In this case we can use the account Customer_ID to get the account info.
$stmt->bind_param('i', $_SESSION['Customer_ID']);
$stmt->execute();
$stmt->bind_result($First_Name,$Last_Name,$Mobile_Number,$email,$Address,$City,$State,$PinCode,$Service_Type);
$stmt->fetch();
$stmt->close();
?>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
        <title>Profile Page | Anonymous Fiber</title>
    <meta name="description" content="Get Anonymous Fiber , Fast , Private And Secure . Dedicated To Internet Health And Privacy">
    <meta property="og:type" content="website">
    <meta property="og:site_name" content="Anonymous Fiber">
    <meta name="twitter:site" content="@anonymous">
    <meta property="og:locale" content="en_US">
    <meta property="og:url" content="index.html">
    <meta property="og:title" content="Get  the fastest Anonymous Fiber">
    <link rel="icon" href="images/anonymous_fox.jpg" type="image/x-icon">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Roboto+Mono:wght@200;400&display=swap" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="style.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.11.2/css/all.min.css">
    </head>
    <body>

    <!-- PROFILE PAGE NAVBAR -->
    <?php
       include('nav_profilepage.php');?>

       <!-- PROFILE PAGE NAVBAR  ENDS -->
     
           <section class = "anonymous-user">
		<div class="User-Details">
			<div class="account-table">
                <br><br><br><br><br><br>

                <h2>Account Information</h2>
    			<table>
					<tr>
                        <td>First Name :</td>
                        <td><?=$First_Name?></td>
					</tr>
					<tr>
					    <td>Last Name:</td>
						<td><?=$Last_Name?></td>
					</tr>
                   <tr>
                        <td>Phone Number:</td>
                        <td><?=$Mobile_Number?></td>
					</tr>
                    <tr>
                        <td>Email Id:</td>
                        <td><?=$email?></td>
                    </tr>
                    <tr>
                        <td>Address:</td>
                        <td><?=$Address?></td>
                    </tr>
                    <tr>
                        <td>City:</td>
                        <td><?=$City?></td>
                    </tr>
                    <tr>
                        <td>State:</td>
                        <td><?=$State?></td>
                    </tr>
                    <tr>
                        <td>Pincode:</td>
                        <td><?=$PinCode?></td>
                    </tr>
                <tr>
                        <td>Type Of Service:</td>
                        <td><?=$Service_Type?></td>
                    </tr>
				</table>
            </div>
        </div>
</section>


<!-- PROFILE PAGE FOOTER -->
<?php
include('footer_login.php');
?>
<!-- PROFILE PAGE FOOTER -->
	</body>
</html>
