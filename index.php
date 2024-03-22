<?php
include("connection.php");
include("header.php");
?>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="https://unpkg.com/swiper@7/swiper-bundle.min.css" />

    <!-- font awesome cdn link  -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
	<link rel="stylesheet" href="css/style.css">
	<title>GadgetZone</title>
</head>
<body>

<section>
 <h1 class="heading"> About <span>Us</span> </h1> 
    
<div class="section">
    
        <div class="container">
            <div class="content-section">
                <div class="content">
                    <h3>I am a Electronic Gadget Advantages</h3>
                    <p>One of the biggest advantages of electronic gadgets is that they make our lives easier. Talk to anyone who was around before the days of mobile phones, and you'll hear how inconvenient it was to find a pay phone when you needed to make a call while away from home. Gadgets help us stay personally and professionally connected by providing access to email, text messages, phone services, video chat and social media. We use them to make new connections, both online and in the real world. Electronic devices have revolutionized the world of shopping, allowing online shoppers to buy millions of products with the tap of a finger or click of a mouse.
                    </p>
                    <a href="about.php" class="btn">Read More</a>
                </div>
                </div>
            <div class="image-section">
                <img src="../gz/images/logo.jpg">
            </div>
        </div>
    </div>
</section>

<!-- About as end -->




<section class="features" id="features">

    <h1 class="heading"> our <span>categories</span> </h1>

    <div class="box-container">

        <div class="box">
            <img src="images/laptoplog.png" alt="">
            <h3>Laptop</h3>
            <p></p>
            <a href="prolaptops.php" class="btn">View All Product</a>
        </div>

        <div class="box">
            <img src="images/tvlogo.png" alt="">
            <h3>Telvision</h3>
            <p></p>
            <a href="protvs.php" class="btn">View All Product</a>
        </div>

        <div class="box">
            <img src="images/mobilelogo.png" alt="">
            <h3>Mobile</h3>
            <p></p>
            <a href="promobiles.php" class="btn">View All Product</a>
        </div>


    </div>
    <br> <br>
<div class="box-container">

        <div class="box">
            <img src="images/cameralogo1.png" alt="">
            <h3>Camera</h3>
            <p></p>
            <a href="procameras.php" class="btn">View All Product</a>
        </div>

        <div class="box">
            <img src="images/speakerlogo1.png" alt="">
            <h3>Speaker</h3>
            <p></p>
            <a href="prospeakers.php" class="btn">View All Product</a>
        </div>
    </div>

</section>
<!-- home section ends -->


</body>
</html>
<?php
    include("footer.php");
?>