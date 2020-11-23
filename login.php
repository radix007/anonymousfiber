 <!DOCTYPE html>
 <html lang="en">

 <head>
     <meta charset="utf-8">
     <title>Sign In | Anonymous Fiber</title>
     <meta property="og:type" content="website">
     <meta property="og:site_name" content="Anonymous Fiber">
     <meta name="twitter:site" content="@anonymous">
     <meta property="og:locale" content="en_US">
     <meta property="og:url" content="login.html">
     <meta property="og:title" content="Get  the fastest Anonymous Fiber">
     <link rel="icon" href="images/anonymous_fox.jpg" type="image/x-icon">
     <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.1/css/all.css">
     <link href="https://fonts.googleapis.com/css2?family=Roboto+Mono:wght@200;400&display=swap" rel="stylesheet">
     <link rel="stylesheet" type="text/css" href="login.css">
     <link rel="stylesheet" type="text/css" href="style.css">
 </head>

 <body>
     <div class="login">
         <h1>Sign In</h1>
         <form action="authenticate.php" method="post">
             <label for="Email">
                 <i class="fas fa-user"></i>
             </label>
             <input type="email" name="email" placeholder="Email" id="email" required>
             <label for="password">
                 <i class="fas fa-lock"></i>
             </label>
             <input type="password" name="password" placeholder="Enter Your Password" id="password" required>
             <input type="submit" value="Login">
         </form>
     </div>
     <?php include('footer_login.php'); ?>
 </body>

 </html>