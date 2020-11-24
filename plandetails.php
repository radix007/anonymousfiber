<?php


$DATABASE_HOST = 'localhost';
$DATABASE_USER = 'root';
$DATABASE_PASS = 'rootpw';
$DATABASE_NAME = 'Anonymous_Fiber';
$con = mysqli_connect($DATABASE_HOST, $DATABASE_USER, $DATABASE_PASS, $DATABASE_NAME);
if (mysqli_connect_errno()) {
    exit('Failed to connect to MySQL: ' . mysqli_connect_error());
}
$stmt = $con->prepare('SELECT Customer_ID,Current_Plan,Data_Consumed,Data_Left , Due_Date ,Due_amount  from plan_details where Customer_Id = 2');
$stmt->execute();
$stmt->bind_result($Customer_ID, $Current_Plan, $Data_Consumed, $Data_Left, $Due_Date, $Due_amount);
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
    <meta property="og:url" content="plandetails.php">
    <meta property="og:title" content="Get  the fastest Anonymous Fiber">
    <link rel="icon" href="images/anonymous_fox.jpg" type="image/x-icon">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Roboto+Mono:wght@200;400&display=swap" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="style.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.11.2/css/all.min.css">
</head>

<body>

    <!-- PLAN DETAILS  NAVBAR -->
    <?php
    include('nav_profilepage.php'); ?>

    <!--  PLAN DETAILS  ENDS -->
    <section class="anonymous-user">
        <div class="Plan">
            <div class="plan-table">
                <br>
                <br>
                <br>
                <br>
                <br>
                <br>

                <h2 class="profile"> Plan Details:</h2>
                <table class="plan-details">
                    <tr>
                        <td>Customer Id:</rd>
                        <td><?= $Customer_ID ?></td>
                    </tr>
                    <tr>
                        <td>Current Plan: </td>
                        <td><?= $Current_Plan ?></td>
                    </tr>
                    <tr>
                        <td>Data Consumed(GB):</td>
                        <td><?= $Data_Consumed ?></td>
                    </tr>
                    <tr>
                        <td>Data Left(GB):</td>
                        <td><?= $Data_Left ?></td>
                    </tr>
                    <tr>
                        <td>Due Date :</td>
                        <td><?= $Due_Date ?></td>
                    </tr>
                    <tr>
                        <td>Due Amount (&#8377;):</td>
                        <td><?= $Due_amount ?></td>
                    </tr>
                </table>
            </div>
        </div>

    </section>


    <!-- PLAN  DETAILS FOOTER -->
    <?php
    include('footer_login.php');
    ?>
    <!-- PLAN  DETAILS FOOTER -->
</body>

</html>