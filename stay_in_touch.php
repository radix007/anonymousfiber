<!Doctype html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>Anonymous Fiber | Fast , Private & Secure - from Anonymous </title>
    <meta name="description"
        content="Get Anonymous Fiber , Fast , Private And Secure . Dedicated To Internet Health And Privacy">
    <meta property="og:type" content="website">
    <meta property="og:site_name" content="Anonymous Fiber">
    <meta name="twitter:site" content="@anonymous">
    <meta property="og:locale" content="en_US">
    <meta property="og:url" content="index.html">
    <meta property="og:title" content="Get the fastest Anonymous Fiber">
    <link rel="icon" href="images/anonymous_fox.jpg" type="image/x-icon">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Roboto+Mono:wght@200;400&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.11.2/css/all.min.css">
    <link rel="stylesheet" href="style.css">

</head>
<body>



<?php

if (isset($_POST['Submit'])) {

  $Email_Id = trim($_POST['Email_Id']); 





  try {
    $db = new PDO("mysql:host=localhost;dbname=Anonymous_Fiber", "Req_User", "anonymousfiber");
    $db->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
  } catch (PDOException $e) {
    printf("Unable to open database: %s\n", $e->getMessage());
    printf("<br><a href=index.php>Return to Home Page </a>");
  }
  $stmt = $db->prepare("insert into Email_Subscription_List VALUES (null,?)") ;
  $stmt->execute(array("$Email_Id"));
}
?>




<section class="stay-in-touch">
        <h2><br><br>We like you. Stay in touch.</h2>
        <form  action="index.php" method="post" class="stay_in_touch">
        <input type="email" name="Email_Id" id="Email_Id" placeholder="Your email address" required  />
        <input type="Submit" name="Submit" value="Sign Up" onclick="myFunction()">
        </form>
        <p>
            By clicking “sign up,” you agree to receive promotional emails, which you can opt out of if you change your
            mind. For more information, see our Privacy Notice.

        </p>
        <div class="socials">
            <a href="https://twitter.com"><i class="fab fa-twitter"></i></a>
            <a href="https://facebook.com"><i class="fab fa-facebook-square"></i></a>
            <a href="https://github.com/radix007"><i class="fab fa-github"></i></a>
        </div>
    </section> 

    ><!-- 
<div id="myModal" class="modal"> -->

  <!-- Modal content -->
  <!--
  <div class="modal-content">
    <div class="modal-header">
      <span class="close">&times;</span>
      <h2 style="text-align : center; color: #444;"> Spread the word.</h2>
    </div>
    <div class="modal-body">
    <h3>
    <mat-icon class="mat-icon notranslate material-icons mat-icon-no-color" role="img" aria-hidden="true" data-mat-icon-type="font"></mat-icon>
    <br> Thanks for your interest!</h3>
    </div>
</div>
</div>-->

<script>
function myFunction() {

alert('Thanks for your interest!');
}
</script>


<!--
<script>
var modal = document.getElementById("myModal");

var btn = document.getElementById("myBtn");

var span = document.getElementsByClassName("close")[0];

btn.onclick = function() {
  modal.style.display = "block";
}

span.onclick = function() {
  modal.style.display = "none";
}

window.onclick = function(event) {
  if (event.target == modal) {
    modal.style.display = "none";
  }
}
</script>-->