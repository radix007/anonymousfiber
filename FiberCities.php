<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta property="og:type" content="website">
    <meta property="og:site_name" content="Anonymous Fiber">
    <meta name="twitter:site" content="@anonymous">
    <meta property="og:locale" content="en_US">
    <meta property="og:url" content="FiberCities.html">
    <meta property="og:title" content="Get  the fastest Anonymous Fiber">
    <link rel="icon" href="images/anonymous_fox.jpg" type="image/x-icon">
    <link href="https://fonts.googleapis.com/css2?family=Roboto+Mono:wght@200;400&display=swap" rel="stylesheet">
   <link rel="stylesheet" href="style.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.11.2/css/all.min.css">
     <!--=============== SWIPER CSS ===============-->
     <link rel="stylesheet" href="assets/css/swiper-bundle.min.css">

    <title>Fiber Cities</title>
    <style>
        :root{
            --img-transition: .3s;
  --img-hidden: hidden;
  --img-scale: scale(1.1);
        }
       .discover__card {
  position: relative;
  width: 300px;
  overflow: var(--img-hidden);
  color:white;
  font-size:1.5em;
}
.discover {
    width : 100%;
    margin: auto;
}
.discover__data {
  position: absolute;
  bottom: 1.5rem;
  left: 1rem;
}

.discover__title, 
.discover__description {
  color: var(--white-color);
}

.discover__title {
  font-size: var(--h3-font-size);
  margin-bottom: var(--mb-0-25);
}

.discover__description {
  display: block;
  font-size: var(--smaller-font-size);
}

.discover__img {
  transition: var(--img-transition);
  width:300px;
  height:400px;
}

.discover__img:hover {
  transform: var(--img-scale);
}

.swiper-container-3d .swiper-slide-shadow-left,
.swiper-container-3d .swiper-slide-shadow-right {
  background-image: none;
}
.swiper-container {
	width: 80%;
	/* height: 100%; */
}
.swiper-button-next, .swiper-button-prev{
  top:100%;
  color:#27ae60;
}
    </style>
</head>

<body>
    <!-- NAVIGATION BAR START -->

    <?php include('navbar.php'); ?>
    <!-- NAVIGATION BAR END -->
    <section class="business-hero">

        <h1>
            List of <br> Fiber <span>Cities.</span></h1>
        <h4>Up to <span>50 Gbps</span> upload and download speeds.</h4>
    </section>
    <section class="description" id="fibercities">
        <h1>Move ahead with lighting speed <span> Internet.</span></h1>
    </section>
        <section class="discover section" id="discover">

             <div class="discover__container container swiper-container">
                 <div class="swiper-wrapper">
                    <!--==================== DISCOVER 1 ====================-->
                <div class="discover__card swiper-slide">
                        <img src="images/delhi.jpg" alt="" class="discover__img">
                        <div class="discover__data">
                            <h2 class="discover__title">DELHI</h2>
                            <span class="discover__description"> <p>National Capital leading from front.<br> Over 10 million users</p></span>
                        </div>
                </div>
                <!--==================== DISCOVER 2 ====================-->
                <div class="discover__card swiper-slide">
                        <img src="images/mumbai.jpg" alt="" class="discover__img">
                        <div class="discover__data">
                            <h2 class="discover__title">MUMBAI</h2>
                            <span class="discover__description"><p>The city is one of the world's top centers of commerce in terms of financial flow.<br> Over 5 million users</p></span>
                        </div>
                </div>
                <!--==================== DISCOVER 3 ====================-->
                <div class="discover__card swiper-slide">
                        <img src="images/bangalore.jpg" alt="" class="discover__img">
                        <div class="discover__data">
                            <h2 class="discover__title">BANGALORE</h2>
                            <span class="discover__description"> <p>Silicon Valley Of India forging ahead at super speed.<br> Over 3 million users</p></span>
                        </div>
                </div>
                <!--==================== DISCOVER 4 ====================-->
                <div class="discover__card swiper-slide">
                        <img src="images/kolkata.jpg" alt="" class="discover__img">
                        <div class="discover__data">
                            <h2 class="discover__title">KOLKATA</h2>
                            <span class="discover__description"> <p>Kolkata has been regarded as one of the most important cities in India ever since the East India Company set base in Bengal.<br> Over 2 million users</p></span>
                        </div>
                </div>
                <!--==================== DISCOVER 5 ====================-->
                <div class="discover__card swiper-slide">
                        <img src="images/Chennai.jpg" alt="" class="discover__img">
                        <div class="discover__data">
                            <h2 class="discover__title">CHENNAI</h2>
                            <span class="discover__description">  <p>Covering all major areas of South India.<br> Over 1 million users</p></span>
                        </div>
                </div>                
             </div>


 
 
        </section>
        <div class="swiper-button-prev"></div>
<div class="swiper-button-next"></div>



 

       

   <!--  WE LIKE YOU STAY IN TOUCH PART STARTS -->
   <?php
    include('stay_in_touch.php');
    ?>
    <!--  WE LIKE YOU STAY IN TOUCH PART ENDS -->


    <!-- FOOTER STARTS -->

    <?php include('footer.php'); ?>

    <!-- FOOTER ENDS -->
       <!--=============== SWIPER JS ===============-->
       <script src="assets/js/swiper-bundle.min.js"></script>
        <!--=============== MAIN JS ===============-->
    <script src="assets/js/main.js"></script>


</body>

</html>