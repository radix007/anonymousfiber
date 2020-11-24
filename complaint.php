<!Doctype html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <title>Anonymous Fiber | Fast , Private & Secure - from Anonymous </title>
  <meta name="description" content="Get Anonymous Fiber , Fast , Private And Secure . Dedicated To Internet Health And Privacy">
  <meta property="og:type" content="website">
  <meta property="og:site_name" content="Anonymous Fiber">
  <meta name="twitter:site" content="@anonymous">
  <meta property="og:locale" content="en_US">
  <meta property="og:url" content="complaint.php">
  <meta property="og:title" content="Get  the fastest Anonymous Fiber">
  <link rel="icon" href="images/anonymous_fox.jpg" type="image/x-icon">
  <link rel="preconnect" href="https://fonts.gstatic.com">
  <link href="https://fonts.googleapis.com/css2?family=Roboto+Mono:wght@200;400&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.11.2/css/all.min.css">
  <link rel="stylesheet" href="form.css">
  <style>   
    #comment_box{
        
    border: 1px solid #cbcbcb !important;
    background-color: #fff !important;
    resize: none;
    -webkit-appearance: none !important;
    height: 60px !important;
    border-radius: 5px;
    width: 96%;
     padding: 2%;
      }
    
      </style>
</head>
<body>


  <?php
  if (!isset($_SESSION)) {
    session_start();
  }

if (isset($_POST['Submit'])) {

    $Customer_ID = trim($_POST['Customer_ID']);
    $Details = trim($_POST['Details']);
    header("Location:index.php");

    try {
      $db = new PDO("mysql:host=localhost;dbname=Anonymous_Fiber", "Req_User", "anonymousfiber");
      $db->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    } catch (PDOException $e) {
      printf("Unable to open database: %s\n", $e->getMessage());
      printf("<br><a href=index.php>Return to Home Page </a>");
    }
    $stmt = $db->prepare("insert into complaint1  values (NULL,?,?)");
    $stmt->execute(array("$Customer_ID","$Details"));
  }
  ?>


<div class="hero">
    <h2>How Can We Help <span>You?<span></h2>
  </div>

  <div class="form-container">

    <form action="complaint.php" method="post" class="connection-form">
    <ul>
    <li id="container-first-name">
          <label for="Customer_ID">Customer ID *

          </label>
          <input type="text" id=Customer_ID" name="Customer_ID" required />
        </li>
   
        <li id ="container-last-name">
    <label for="Customer_ID">Write your complaint here .

     </label>
    <textarea data-max-length="1000" name="Details" id="comment_box" aria-describedby="charCount" tabindex="0"  placeholder="We Will Get Back To You ASAP ." ></textarea>
    <div id="charCount" class="counter_label" tabindex="-1" style=" height: 60px !important; border-radius: 5px;">1000 characters</div>
    </li>   
    <li id="container-submit">
          <input type="Submit" name="Submit" value="Submit" id="form-submit" onclick="myFunction()"/>
          <input type="button" onclick="location.href='index.php'; return false;" value="Cancel">
    </li>
</ul>
</form>

          <!-- FOOTER STARTS -->
      <?php include('footer_login.php'); ?>
    <!-- FOOTER ENDS -->


    <script>
function myFunction() {

alert('Complaint Submitted Successfully.');
}
</script>

    </body>

</html>
