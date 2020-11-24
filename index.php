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
    <link rel="stylesheet" href="style.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.11.2/css/all.min.css">
</head>

<body>
    <!-- NAVIGATION BAR START -->
    <?php include('navbar.php'); ?>

    <!-- NAVIGATION BAR END -->
    <!-- ######################################################### -->
    <!-- HERO START  -->
    <section class="hero">

        <div class="heading">
            <div>
                <h1>Anonymous <span>Fiber.</span></h1>
                <h3>Fast, Private and Secure.</h3>
            </div>
            <img src="images/anonymous_fox.jpg" alt="Anonymous Logo">

        </div>

        <div class="form">
            <form action="" >
                <input type="text" name="address" placeholder="Your address" required>
                <input type="text" name="pin" placeholder="Pincode" id="pin" required>
                <input type="submit" value=" Check Availability " onclick ="pinCode()";>


                <script>
                let pinCodes = [110005, 110006, 110007, 110038, 110008, 110054, 110055, 110060, 110071, 110084, 110085.122003, 122011, 122007, 122011, 302005, 302007];

        function pinCode() {
    let pinValue = parseInt(document.getElementById("pin").value); 
    if (pinCodes.indexOf(pinValue) !== -1) {
        window.location = "NewConnection.php";
            } 
        else if (Number.isInteger(pinValue)) {
            window.location = "ComingSoon.php";
    } else {
        alert("Invalid Entry");
    }
}
</script>
            </form>
        </div>
    </section>
    <!-- HERO ENDS -->
    <!-- ################################### -->
    <!-- FEATURES START -->
    <section class="features">
        <h2>What can you do with Anonymous Fiber?<br>
            <span> A whole lot.</span></h2>
        <div class="content">
            <div class="text">
                <p>
                    <h3>Keep everyone online.</h3>
                    Let everyone do their own internet thing without interruptions. That means non-stop streaming, learning
                    online, working out, gaming, and video chatting—all at the same time.
                    <br>
                    <br>
                    <br>

                    <h3>Make WFH work.</h3>
                    When you have gigabit uploads, you don’t have to worry about being the person who’s always “cutting out”
                    of the meeting and then apologizing for your internet quality. Your internet should be work-worthy—even
                    if your office is your couch.

                </p>
            </div>
            <div class="image"><img src="images/anonymous_group.png" width="100%" alt=""></div>
        </div>
        <div class="content">
            <div class="image"><img src="images/anonymous_fox.jpg" width="100%" alt=""></div>
            <div class="text">
                <p>
                    <h3>Connect your home.</h3>
                    You’ve got a smart doorbell, a smart fridge, two smart TVs, some tablets, cameras, monitors, a smart
                    bike, a smart thermostat, smart security devices, a voice-activated light system (very cool), and then
                    some. And when you’ve got a gig, you’ve got plenty
                    of internet.


                    <br>
                    <br>
                    <br>

                    <h3>Win more with less lag.</h3>
                    Or should we say—more frags, less lag? Whether you’re going on a raid or tending to your virtual farm,
                    this kind of internet was practically made for gaming.

                </p>
            </div>
        </div>
    </section>
    <!-- FEATURES END -->
    <!-- ######################################## -->
    <!-- PERKS START  -->
    <section class="perks-heading">
        <h2>Hi. Nice to meet you. We’re <br><span>Anonymous Fiber.</span></h2>

        <section class="perks">
            <div class="card">
                <img src="images/alwayson.png" alt="">
                <h3>Anonymous Mode On.</h3>

                With Anonymous Mode on , you’ll get secure internet you can count on.
            </div>
            <div class="card">
                <img src="images/hardtomatch.jpg" alt="">
                <h3> Hard-to-match speed.</h3>
                That would be gigabit uploads and downloads.
            </div>
            <div class="card">
                <img src="images/everyoneconnected.jpg" alt="">
                <h3> Everyone’s connected.</h3>
                Let everyone use all their devices at the same time.
            </div>
            <div class="card">
                <img src="images/nodatacap.jpg" alt="">
                <h3>No data caps.</h3>
                Your data should be unlimited. So it is.
            </div>
            <div class="card">
                <img src="images/nihiddenfees.jpg" alt="">
                <h3>No hidden fees.</h3>
                Just a straightforward price.
            </div>
            <div class="card">
                <img src="images/nolockin.png" alt="">
                <h3>Secure</h3>
                No Logging of Any Kind.
            </div>
        </section>
    </section>
    <!-- PERKS END -->
    <!-- ########################################## -->
    <!-- TESTIMONIAL START  -->
    <section class="testimonial">
        <h2>What Our Customers <span>Say</span>.</h2>
        <div class="container">
            <div class="people">
                <img src="images/user_icon_testimonials.png" alt="">
                <h4>Naruto Uzumaki</h4>
                <h5><i class="fas fa-quote-left"></i></h5>
                I have been associated with Anonymous Fiber for over a year now. Usually I use my internet for Skype
                calling for which the video quality is very good. No buffering on YouTube channel has ever been noticed.
                This has been possible only due to Anonymous
                Fiber!
                <h5 class="right"><i class="fas fa-quote-right"></i></h5>
            </div>
            <div class="people">
                <img src="images/user_icon_testimonials.png" alt="">
                <h4>Kylie Jenner</h4>
                <h5><i class="fas fa-quote-left"></i></h5>
                Anonymous Fiber has been a life saver because I do a lot of work from home and need a VPN to my
                company's network for which I need a high bandwidth connection. High speed and prompt service resolution
                makes Anonymous Fiber the best choice for internet.
                <h5 class="right"><i class="fas fa-quote-right"></i></h5>
            </div>
            <div class="people">
                <img src="images/user_icon_testimonials.png" alt="">
                <h4>Sherlock Holmes</h4>
                <h5><i class="fas fa-quote-left"></i></h5>
                Being an academician and researcher, getting to the information you need in a timely manner is very
                critical. Right in the step, Anonymous is very quick, fast and secure. Anonymous Fiber is definitely the
                future for internet!
                <h5 class="right"><i class="fas fa-quote-right"></i></h5>
            </div>
            <div class="people">
                <img src="images/user_icon_testimonials.png" alt="">
                <h4>Justin Bieber</h4>
                <h5><i class="fas fa-quote-left"></i></h5>
                Best Fiber Service Provider if you are looking for fast , secure and private network . They offer VPN
                services too . Best Customer Care Service Experience . Anonymous Fiber is the best Fiber Service
                Provider In Delhi NCR.
                <h5 class="right"><i class="fas fa-quote-right"></i></h5>
            </div>
        </div>
    </section>
    <!-- TESTIMONIAL ENDS -->
    <!-- ########################################## -->
    <!-- PLANS START -->
    <section class="plans">
        <h2><span>Our</span> Anonymous <span>Plans.</span></h2>
        <div class="container">
            <div class="plancard">
                <h3> Anon </h3>
                <div class="planinfo">
                    <i class="fas fa-bolt"></i> 1 Gbps<br>
                    <i class="fas fa-wifi"></i> 3300 GB data<br>
                    <i class="fas fa-tachometer-alt"></i> 100 Mbps Post FUP Speed
                </div>
                <div class="price">
                    <h4>6 Month</h4>
                    Get for <span>₹1199</span> / month*
                </div>
                <div class="price">
                    <h4> 1 Month </h4>
                    Get for <span>₹1299</span> / month*
                </div>
            </div>
            <div class="plancard">
                <h3> Covert </h3>
                <div class="planinfo">
                    <i class="fas fa-bolt"></i> 2.5 Gbps<br>
                    <i class="fas fa-wifi"></i> 5000 GB data<br>
                    <i class="fas fa-tachometer-alt"></i> 500 Mbps Post FUP Speed
                </div>
                <div class="price">
                    <h4>6 Month</h4>
                    Get for <span>₹1799</span> / month*
                </div>
                <div class="price">
                    <h4> 1 Month </h4>
                    Get for <span>₹1999</span> / month*
                </div>
            </div>
            <div class="plancard">
                <h3> Incognito </h3>
                <div class="planinfo">
                    <i class="fas fa-bolt"></i> 10 Gbps<br>
                    <i class="fas fa-tachometer-alt"></i> Unlimited <br>
                    <i class="fas fa-wifi"></i> 1 Gbps Post FUP Speed
                </div>
                <div class="price">
                    <h4>6 Month</h4>
                    Get for <span>₹3999</span> / month*
                </div>
                <div class="price">
                    <h4> 1 Month </h4>
                    Get for <span>₹5999</span> / month*
                </div>
            </div>
        </div>
    </section>


<!--  WE LIKE YOU STAY IN TOUCH PART STARTS -->
    <?php
    include('stay_in_touch.php');
    ?>
<!--  WE LIKE YOU STAY IN TOUCH PART ENDS -->

    <!-- FOOTER STARTS -->
    <?php include('footer.php'); ?>
    <!-- FOOTER ENDS -->
</body>

</html>