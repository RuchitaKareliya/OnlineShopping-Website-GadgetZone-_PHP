<?php
include("connection.php");
?>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>GadgetZone_Adminside</title>
        <link rel="stylesheet" href="https://unpkg.com/swiper@7/swiper-bundle.min.css" />

    <!-- font awesome cdn link  -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
      <link rel="stylesheet" href="css/formstyle.css">  
</head>
<body>
<div class="lform">
                <div class="forms">
                        <div class="form login">
                                <span class="title">Login</span>


                                <form action="adminsession.php" class="" method="post">
                                        <div class="input-field">                                        

                                                <input type="text" name="email" id="email" placeholder="Username" required>
                                                <i class="fas fa-envelope icon"></i>
                                        </div>

                                        <div class="input-field">                                        

                                                <input type="password" name="password" id="password" class="password" placeholder="password" required>
                                                <i class="fas fa-lock icon"></i>
                                                <i class="fas fa-eye-slash showHidePw"></i>
                                        </div>


                                        <div class="input-field button">                                        

                                                <input type="submit" name="submit" value="Login" onclick="return logvalid()">
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
                                
                        </div>
                    </div>
                </div>
                <script src="js/formscript.js"></script>

</body>
</html>