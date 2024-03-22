<?php
session_start();
include("header.php");

$email=$_SESSION['email'];

if(!isset($_SESSION['email'])){
    header('location:forms.php');
}

?>
<?php

include("connection.php");

if(isset($_REQUEST['contactus']))
{
    $email=$_SESSION['email'];
    $message=$_POST['message'];

    $cus="insert into contact(id, email, message) values (NULL,'".$email."','".$message."')";
    $cus1=mysqli_query($conn,$cus);
    {
        if($cus1=1){
          //$email=$_SESSION['email'];
        }
        if($cus1=1){
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

    <!-- Boxicons -->
    <link href='https://unpkg.com/boxicons@2.0.9/css/boxicons.min.css' rel='stylesheet'>
    <!-- My CSS -->

    <link rel="stylesheet" href="css/formstyle.css">
</head>
  <body>
        <div class="fmain">
      <div class="forms">
        <h1 class="form-title">Contactus</h1>
          <form action="" method="post" enctype="multipart/form-data">
            
            <div class="main-user-info">
              <div class="user-input-box">
                <label for="email">Email:</label>
                <input type="text" name="email" id="email" placeholder="Enter enter mail_addrss" value="<?php echo $_SESSION['email']; ?>" readonly/>
              </div>

                <div class="user-input-box">
                <label for="msg">Message:</label>
                <textarea name="message" id="msg" placeholder="Write about yourself..." required></textarea>
                </div>

              <div class="form-submit-btn">
                <input type="submit" name="contactus" value="submit" onclick="return formValidation()">
              </div>
            </div>
            <script type="text/javascript">
const email = document.getElementById("email");
 
// function for form varification
function formValidation() {
  // checking email
  if (!email.value.match(/^\w+([\.-]?\w+)+@\w+([\.-]?\w+)+(\.\w{2,3})+$/)) {
    alert("Please enter a valid email!");
    email.focus();
    return false;
  }
  return true;
}
</script>
          </form>
        </div>
      </div>


</body>
</html>
<?php
  include("footer.php");
?>