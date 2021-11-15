<?php
session_start();

$DATABASE_HOST = 'localhost';
$DATABASE_USER = 'Fiber_User';
$DATABASE_PASS = 'anonymousfiber';
$DATABASE_NAME = 'Anonymous_Fiber';

$con = mysqli_connect($DATABASE_HOST, $DATABASE_USER, $DATABASE_PASS, $DATABASE_NAME);
if ( mysqli_connect_errno() ) {
	exit('Failed to connect to MySQL: ' . mysqli_connect_error());
} 


if ( !isset($_POST['email'], $_POST['password']) ) {
	exit('Please fill both the email and password fields!');
}


if ($stmt = $con->prepare('SELECT Customer_ID, password FROM user WHERE email = ?')) {
	$stmt->bind_param('s', $_POST['email']);
	$stmt->execute();
	$stmt->store_result();
    if ($stmt->num_rows > 0) {
        $stmt->bind_result($Customer_ID, $password);
        $stmt->fetch();
        if (password_verify($_POST['password'], $password)) {
            session_regenerate_id();
            $_SESSION['loggedin'] = TRUE;
            $_SESSION['name'] = $_POST['email'];
            $_SESSION['Customer_ID'] = $Customer_ID;
            header('Location: profilepage.php');
                } else {
            echo 'Incorrect email and/or password!';
        }
    } else {
        echo 'Incorrect email and/or password!';
    }

	$stmt->close();
}
?>
