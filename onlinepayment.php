

<?php 
session_start();
include("header.php"); 
?>
<?php

@include 'connection.php';

if(isset($_POST['bill'])){

   $fullname = $_POST['fullname'];
   $email = $_SESSION['email'];
   $mobileno = $_POST['mobileno'];
   $method = $_POST['method'];
   $address=$_POST['address'];
   $city = $_POST['city'];
   $state = $_POST['state'];
   $pincode = $_POST['pincode'];
   $datetime=$_POST['datetime'];

   $cart_query = mysqli_query($conn, "SELECT * FROM `cart`");
   $price_total = 0;
   if(mysqli_num_rows($cart_query) > 0){
      while($product_item = mysqli_fetch_assoc($cart_query)){
         $product_name[] = $product_item['product_name'] .' ('. $product_item['quantity'] .') ';
         $product_price = ($product_item['price'] * $product_item['quantity']);
         (int)$price_total += (int)$product_price;
      };
   };

   $total_product = implode(', ',$product_name);
   $bill_query = mysqli_query($conn, "INSERT INTO `bill`(fullname, email, mobile_no, payment_type, address, city, state, pincode, total_product, total_amount, payment_time) VALUES('$fullname','$email','$mobileno','$method','$address','$city','$state','$pincode','$total_product','$price_total','$datetime')") or die('query failed');

  $delete_query=mysqli_query($conn, "DELETE FROM cart WHERE email='$email'");

   

   
   if($cart_query && $bill_query){
      echo "
      <div class='order-message-container'>
      <div class='message-container'>
         <h3>thank you for shopping!</h3>
         <div class='order-detail'>
            <span>".$total_product."</span>
            <span class='total'> total : $".$price_total."/-  </span>
         </div>
         <div class='customer-details'>
            <p> your name : <span>".$fullname."</span> </p>
            
            <p> your email : <span>".$email."</span> </p>
            <p> your mobileno : <span>".$mobileno."</span> </p>
            <p> your address : <span>".$address.", ".$city.", ".$state.", ".$pincode."</span> </p>
            <p> your payment mode : <span>".$method."</span> </p>
            <p></p>
         </div>
            <a href='index.php' class='btn'>continue shopping</a>
         </div>
      </div>
      ";
   }


   //$cartempty ="DELETE FROM `cart` WHERE product_name='product_name'";
   ///$empty=mysqli_query($conn,$cartempty);

/*unset(cart_query){
echo"<script>
alter'clear cart';
</script>"
}*/
}

?>

<!DOCTYPE html>
<html lang="en">
<head>
   <meta charset="UTF-8">
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <title>checkout</title>

   <!-- custom css file link  -->
   <link rel="stylesheet" href="css/bformstyle.css">

</head>
<body>



<div class="container">

<section class="checkout-form">

   <h1 class="heading">complete your order</h1>
 
   <form action="" method="post" enctype="multipart/form-data">

   <div class="display-order">
      <?php
      $email=$_SESSION['email'];
         $iquery = mysqli_query($conn, "SELECT * FROM `cart` WHERE email='$email'");
         $total_amount = 0;
         $total = 0;
         if(mysqli_num_rows($iquery) > 0){
            while($cart_view = mysqli_fetch_assoc($iquery)){
            $total_price = ($cart_view['price'] * $cart_view['quantity']);
            (int)$total = (int)$total_amount += (int)$total_price;
      ?>
      <span><?= $cart_view['product_name']; ?>(<?= $cart_view['quantity']; ?>)</span>
      <?php

        } 
      }else{
         echo "<div class='display-order'><span>your cart is empty!</span></div>";
      }
      ?>

      <span class="grand-total"> total : $<?= $total; ?>/- </span>
   </div>

         <?php
   
//if(isset($_SESSION['email'])){
//mysqli_query($conn, "DELETE FROM `cart`");
   //header('location:cart.php');
//}

   
      ?>

      <div class="fmain">
      <div class="forms">
        <h1 class="form-title">Bill Payment</h1>

            
            <div class="main-user-info">
               <div class="user-input-box">
                <label for="email">fullname:</label>
                <input type="text" name="fullname" class="fullname" id="fullname" placeholder="Enter your fullname" required />
              </div>

              <div class="user-input-box">
                <label for="email">Email:</label>
                <input type="text" name="email" class="email" id="email" placeholder="Enter enter mail_addrss" required />
              </div>

               <!--<div class="user-input-box">
               <label>payment method</label>
               <select name="method">
               <option value="cash on delivery" selected>cash on devlivery</option>
               <option value="paypal">cash on delivery</option>
               <option value="credit cart">credit cart</option>
               </select>
               </div>-->

         <div class="user-input-box">
                <label for="email">Mobile_No:</label>
                <input type="number" name="mobileno" class="mno" id="mno" placeholder="Enter your Mobile_No" required />
              </div>

                <div class="user-input-box">
                <label for="msg">Address:</label>
                <textarea name="address" id="msg" placeholder="Enter your Address" required></textarea>
                </div>
             

             <div class="user-input-box">
                <label for="email">City:</label>
                <input type="text" name="city" id="name" placeholder="Enter your City name" required />
              </div>

              <div class="user-input-box">
                <label for="">State:</label>
                <input type="text" name="state" id="name" placeholder="Enter your State name " required />
              </div>

              <div class="user-input-box">
                <label for="email">pincode:</label>
                <input type="number" name="pincode" class="pincode" id="pincode" placeholder="Enter your pincode number" required />
              </div>
              <div class="user-input-box"> 
                  <label for="" >Name on Card </label>
                  <input type="text" id="" name="cardname" placeholder="Credit Card" value=""  required>
              </div>

              <div class="user-input-box"> 
                  <label for="" >Credit Card Number</label>
                  <input type="number" name="cardnumber" placeholder="1111-2222-3333-4444" value=""  required>
              </div>

              <div class="user-input-box">
                 <label>Payment_Time</label>
                 <input type="date" name="datetime"  required>
              </div>
              <div class="user-input-box">
                <label for="">CVV</label>
                <input type="text" id="" name="" placeholder="352" value="" required>
              </div>
           <!--<div class="user-input-box">
                <label for="cvv">Amount</label>
                <input type="text" id="" name="" placeholder="352" value="<?= (int)$total; ?>" readonly>
              </div>--> 


</div>
<input type="hidden" name="method" value="Credit Card">  
              <div class="form-submit-btn">

                <input href="onlinepayment.php?delete_all" type="submit" name="bill" value="Checkout" onclick="return formValidation()">
              </div>
              <script type="text/javascript">
                        const fullname = document.getElementById("fullname");
                        const email = document.getElementById("email");
                        const mno = document.getElementById("mno");
                        const pincode = document.getElementById("pincode");


                        // function for form varification
                        function formValidation(){  
                          // checking name length
                          if (!fullname.value.match(/^[a-zA-Z ]*$/)) {
                            alert("enter only characters");
                            fullname.focus();
                            return false;
                          }
                          // checking email
                         if (!email.value.match(/^\w+([\.-]?\w+)+@\w+([\.-]?\w+)+(\.\w{2,3})+$/)) {
                            alert("Please enter a valid email!");
                            email.focus();
                            return false;
                          }
                          // checking phone number
                          if (!mno.value.match(/^[1-9][0-9]{9}$/)) {
                            alert("Phone number must be 10 characters long number and first digit can't be 0!");
                            mno.focus();
                            return false;
                          }
                            // checking zip code
                          if (!pincode.value.match(/^[0-9]{6}$/)) {
                            alert("Pin code must be 6 characters long number!");
                            pincode.focus();
                            return false;
                          }
                         return true;
                        }
      </script>
            </div>
        </div>
      </div>
   </form>
</section>
</div>

<!-- custom js file link  -->
<script src="js/script.js"></script>
   
</body>
</html>

