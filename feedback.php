<?php
session_start();
include("header.php");
$email=$_SESSION['email'];


if(!isset($_SESSION['email'])){
    header('location:forms.php');
}


include("connection.php");


if(isset($_POST['feedback']))
{
    $email=$_SESSION['email'];
    $feedback=$_POST['fb'];
    $message=$_POST['message'];
    $feed="insert into feedback(id, email, feedback, message) values (NULL,'".$email."','".$feedback."','".$message."')";
    $feed1=mysqli_query($conn,$feed);
    {
        if($feed1=1){

        }
        if($feed1=0){
            echo"not inserted";
        }
    }
}

?>


<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title></title>

    <link rel="stylesheet" href="https://unpkg.com/swiper@7/swiper-bundle.min.css" />

    <!-- font awesome cdn link  -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <link rel="stylesheet" href="css/formstyle.css">
</head>
  <body>
  


    <div class="fmain">
      <div class="forms">
        <h1 class="form-title">Feedback</h1>
          <form action="" method="POST" name="feedback-form" enctype="multipart/form-data" onsubmit="return formValidation()"/>
            
            <div class="main-user-info">
              <div class="user-input-box">
                <label for="fullname">Email:</label>
                <input type="text" name="email" id="email" placeholder="Enter full name" value="<?php echo $_SESSION['email']; ?>" readonly/>
              </div>

              <div class="feedback-details-box">
                <label class="feedback-title">Feedback:</label>
                <div class="feedback-category">
                  <input type="radio" name="fb" id="good" value="Good" required/>
                  <label for="">Good</label>
                  <input type="radio" name="fb" id="bad" value="Bad" required/>
                  <label for="">Bad</label>
                  <input type="radio" name="fb" id="ok" value="Ok" required/>
                  <label for="">Ok</label>
                  <input type="radio" name="fb" id="veryGood" value="VeryGood" required/>
                  <label for="">Very Good</label>
                </div>
              </div>

              <div class="user-input-box">
                <label for="msg">Message:</label>
                <textarea name="message" id="" placeholder="Write about yourself..." required></textarea>
              </div>
              <div class="form-submit-btn">
                <input type="submit" name="feedback" value="Feedback" onclick="return formValidation()">
              </div>

            </div>

          </form>
      </div>
    </div>


  </body>
</html>

<?php
  include("footer.php");
?>