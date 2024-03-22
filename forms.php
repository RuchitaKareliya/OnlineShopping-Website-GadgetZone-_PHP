<?php
session_start();
include("connection.php");
?>
<?php
    if(isset($_REQUEST['submit']))
    {
        $fullname=$_POST['fullname'];
        $email=$_POST['email'];
        $password=$_POST['password'];
        $cpassword=$_POST['cpassword'];
        $mobileno=$_POST['mno'];
        $address=$_POST['address'];
        $pincode=$_POST['pincode'];
        $city=$_POST['city'];
        $state=$_POST['state'];

    if($password != $cpassword)
    {
        echo "password and confirm password does not match";
    }
    else
    {
       $query2="insert into registration
       (id, full_name, email, password, confirm_password, mobile_no, address, pin_code, city, state) values(NULL,'".$fullname."','".$email."','". $password."','".$cpassword."','".$mobileno."','".$address."','".$pincode."','".$city."','".$state."')";

       $sql2=mysqli_query($conn,$query2);
            if($sql2=1)
            {
                header("location:forms.php?msg1=inserted");
            }
                if($sql2=0)
                {
                    echo"not inserted";
                }
    }
}
?>

<?php
if (isset($_REQUEST['submit'])) {
    // code...
    $id=$_GET['id'];
    $iquery="select * from products where id=" .$id;
    $i_query=mysqli_query($conn,$iquery);
$idata=mysqli_fetch_array($i_query); 
}
?>

<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://unpkg.com/swiper@7/swiper-bundle.min.css" />
	<title>GadgetZone</title>
	

    <!-- font awesome cdn link  -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
      <link rel="stylesheet" href="css/formsstyle.css">  
</head>
<body>
<div class="lform">
                <div class="forms">
                        <div class="form login" id="#login">
                                <span class="title">Login</span>


                                <form action="session.php" name="forms" method="POST" >
                                    
                                        <div class="input-field">                                        

                                                <input type="text" name="email" id="email" placeholder="Username" required>
                                                <i class="fas fa-envelope icon"></i>
                                        </div>

                                        <div class="input-field">                                        

                                                <input type="password" name="password" id="password" class="password" placeholder="password" required>
                                                <i class="fas fa-lock icon"></i>
                                                <i class="fas fa-eye-slash showHidePw"></i>
                                        </div>

                                       <!-- <div class="checkbox-text">
                                                <div class="checkbox-content">
                                                        <input type="checkbox" name="" id="logCheck">
                                                        <label for="logCheck" class="text">Remember me</label>
                                                </div>

                                                <a href="#" class="text">Forgot Password?</a>
                                        </div>-->

                                        <div class="input-field button">                                        
                                                <a href="">
                                                <input type="submit" name="submit" value="Login" onclick="return logvalid()">
                                            </a>
                                        </div>
                                        <script type="text/javascript">
                                            const email=document.getElementById("email");
                                            const password=document.getElementById("password");

                                            function logvalid(){
                                                // checking email
                                                 if (!email.value.match(/^\w+([\.-]?\w+)+@\w+([\.-]?\w+)+(\.\w{2,3})+$/)) {
                                                    alert("Please enter a valid email!");
                                                    email.focus();
                                                    return false;
                                                  }
                                                  // checking password
                                                  if (!password.value.match(/^(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[^a-zA-z0-9])(?!.*\s).{8}$/)) {
                                                    alert("Password length must be 8 characters, incliding  uppercash, lowercaash, number and special symbol !");
                                                    password.focus();
                                                    return false;
                                                  }
                                                  return true;
                                            }
                                        </script>

                                </form>
                                <div class="login-signup">
                                        <span class="text">Don't Have An Account?
                                                <a href="#" class="text signup-link">Create New Account</a>     
                                        </span>
                                </div>
                                
                        </div>
                        

        <!-- Registration Form -->
            <div class="form signup" id="#signup">
                <span class="title">Registration</span>

  <form action="#"  name="forms" class="registartion-form" method="POST">

                    <div class="input-field">
                        <input type="text" name="fullname" id="rfullname" placeholder="Enter your fullname" required>
                        <i class="fas fa-user"></i>
                    </div>
                    <div class="input-field">
                        <input type="text" name="email" id="remail" class="email" placeholder="Enter your email" required>
                        <i class="fas fa-envelope icon"></i>
                    </div>
                    <div class="input-field">
                        <input type="password" name="password" id="rpassword" class="password" placeholder="Create a password" required>
                        <i class="fas fa-lock icon"></i>
                    </div>
                    <div class="input-field">
                        <input type="password" name="cpassword" id="cpassword" class="password" placeholder="Confirm a password" required>
                        <i class="fas fa-lock icon"></i>
                        <i class="fas fa-eye-slash showHidePw"></i>
                    </div>
                    <div class="input-field">
                        <input type="number" name="mno" class="pno" id="rmno" placeholder="Mobile_No" required>
                        <i class="fas fa-mobile"></i>
                    </div>
                    <div class="input-field">
                        <textarea name="address" id="raddress" class="address" placeholder="Address" required></textarea>
                        <i class="fas fa-address-card"></i>
                    </div>
                    <div class="input-field">
                        <input type="number" name="pincode" id="rpincode" class="pincode" placeholder="Pin_code" required>
                        <i class="fas fa-map-pin"></i>
                    </div>
                    <div class="input-field">
                        <input type="text" name="city" id="rcity" class="city" placeholder="City_Name" required>
                        <i class="fas fa-city"></i>
                    </div>
                    <div class="input-field">
                        <input type="text" name="state" id="rstate" class="state" placeholder="State_Name" required>
                        <i class="fas fa-city"></i>
                    </div>

                    <!--<div class="checkbox-text">
                        <div class="checkbox-content">
                            <input type="checkbox" id="termCon">
                            <label for="termCon" class="text">I accepted all terms and conditions</label>
                        </div>
                    </div>-->
                    <div class="input-field button">
                        <input type="submit" name="submit" value="Register" onclick="return formValidation()">
                    </div>

                    
                
                </form>

                <div class="login-signup">
                    <span class="text">Have An Account?
                        <a href="#" class="text login-link">Login Here</a>
                    </span>
                </div>
             
                        

            </div>
        </div>
                
    </div>

<script src="js/formsscript.js"></script>
<script src="js/formscript.js"></script>

</body>
</html>