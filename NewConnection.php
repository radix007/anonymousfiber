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
  <meta property="og:url" content="index.php">
  <meta property="og:title" content="Get  the fastest Anonymous Fiber">
  <link rel="icon" href="images/anonymous_fox.jpg" type="image/x-icon">
  <link rel="preconnect" href="https://fonts.gstatic.com">
  <link href="https://fonts.googleapis.com/css2?family=Roboto+Mono:wght@200;400&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.11.2/css/all.min.css">
  <link rel="stylesheet" href="form.css">
  
</head>

<body>



  <?php

  if (!isset($_SESSION)) {
    session_start();
  }

  if (isset($_POST['submit'])) {
  }


  if (isset($_POST['Submit'])) {

    $First_name = trim($_POST['First_name']);
    $Last_name = trim($_POST['Last_name']);
    $Phone_Number = trim($_POST['Phone_Number']);
    $Email_Id = trim($_POST['Email_Id']);
    $Address = trim($_POST['Address']);
    $City = trim($_POST['City']);
    $State = trim($_POST['State']);
    $Pincode = trim($_POST['Pincode']);
    $Service_Type = trim($_POST['Service_Type']);
    $Plan = trim($_POST['Plan']);
    # header("Location: index.php");




    try {
      $db = new PDO("mysql:host=localhost;dbname=Anonymous_Fiber", "Req_User", "anonymousfiber");
      $db->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    } catch (PDOException $e) {
      printf("Unable to open database: %s\n", $e->getMessage());
      printf("<br><a href=index.php>Return to Home Page </a>");
    }
    $stmt = $db->prepare("insert into new_connection_req  values (NULL, ?, ?, ?, ?, ?, ?,?, ?, ?, ?)");
    $stmt->execute(array("$First_name", "$Last_name", "$Phone_Number", "$Email_Id", "$Address", "$City", "$State", "$Pincode", "$Service_Type", "$Plan"));
    printf("<br> Successfully Submitted");
    printf("<br><a href=index.php>Return to Home Page </a>");
    exit;
  }
  ?>




  <div class="hero">
    <h2>Become a Part Of The Anonmymous <span>Fiber.<span></h2>


  </div>


  <div class="form-container">



    <form action="NewConnection.php" method="post" class="connection-form">
      <ul>
        <li>
          <p> Thank you for your interest in Anonymous Fiber.</p>
        </li>
        <li id="container-first-name">
          <label for="First_name">First Name *

          </label>
          <input type="text" id=First_name" name="First_name" required />
        </li>
        <li id="container-last-name">
          <label for="Last_name">Last Name *

          </label>
          <input type="text" id="Last_name" name="Last_name" required />
        </li>

        <li id="container-phone-number">
          <label for="Phone_Number">
            Phone Number
            *
          </label>
          <input type="text" id="Phone_Number" name="Phone_Number" required />
        </li>

        <li id="container-email">
          <label for="Email_Id">
            Email
            *
          </label>
          <input type="email" id="Email_Id" name="Email_Id" required />
        </li>
        <li id="container-address">
          <label for="Address">
            Address
            *
          </label>
          <input type="text" id="Address" name="Address" required />
          </id>
        <li id="container-city">
          <label for="City">
            City
            *
          </label>



          <input type="text" id="City" name="City" required />
        </li>
        <li id="container-state">
          <label for="state">
            State
            *
          </label>
          <select name="State" id="State">
            <option value="Please Select">Please Select</option>
            <option value="Haryana">Haryana</option>
            <option value="Karnataka">Karnataka</option>
            <option value="Maharashtra">Maharashtra</option>
            <option value="New Delhi">New Delhi</option>
            <option value="Rajasthan">Rajasthan</option>
            <option value="Tamil Nadu">Tamil Nadu</option>
            <option value="West Bengal">West Bengal</option>
          </select>
        </li>

        <li id="container-pincode">
          <label for="Pincode">
            Pincode
            *
          </label>
          <input type="text" id="Pincode" name="Pincode" required />
          </id>

        <li id="container-service">
          <label for="Service-Type">
            Type Of Service
            *
          </label>
          <pre><input type="radio" name="Service_Type" value="Individual" checked>Individual          <input type="radio" name="Service_Type" value="Business">Business<br></pre>
        <li id="container-plan">
          <label for="Plan">
            Plan
            *
          </label>
          <select name="Plan" id="Plan">
            <option value="Please Select">Please Select</option>
            <option value="Anon">Anon</option>
            <option value="Covert">Covert</option>
            <option value="Incognito">Incognito</option>
            <option value="Anon Pro">Anon Pro</option>
            <option value="Incognito Pro">Incognito Pro</option>
          </select>
        </li>

        <li id="container-TC">
          <label for="terms-checkbox">
            <input id="termsconditions" name="terms-checkbox" type="checkbox" value="True">
            <span> I accept Anonymous Fiber's <a href="termsandconditions.html" target="_blank">Terms and Conditions</a>
              and acknowledge that my information will be used in accordance with Anonymous's <a href="legal.html" target="_blank">Privacy and Policy</a>.
            </span>
          </label>
        </li>
        <li id="container-submit">
          <input type="Submit" name="Submit" value="Submit" id="form-submit" />
          <input type="button" onclick="location.href='index.php'; return false;" value="Cancel">
        </li>
      </ul>
      </fieldset>
    </form>
      <!-- FOOTER STARTS -->
      <?php include('footer.php'); ?>
    <!-- FOOTER ENDS -->
</body>

</html>