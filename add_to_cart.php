<?php
session_start();
include("connection.php");

$email=$_SESSION['email'];

if(!isset($_SESSION['email'])){
       header('location:forms.php');
}
else
 {
                        $c_id=$_GET['c_id'];
                        $product_name=$_GET['product_name'];
                        $image=$_GET['image'];
                        $price=$_GET['price'];
                        $_GET['quantity']=1;
                        $quantity=$_GET['quantity'];
                        $email=$_SESSION['email'];
                        /*$total=$_GET['total'];
                        $payment_type=$_GET['payment_type'];*/
                        /*$email=$_SESSION['email'];*/
                        $iquery="select * from cart where product_name='$product_name' and email='$email'";
                        $i_query=mysqli_query($conn,$iquery);
                     


                    if(mysqli_num_rows($i_query) > 0){
                      header("location:cart.php");  
                    }
                    /*elseif($product_name == $product_name){
                          // code...
                        $quantity++;
                        header("location:cart.php");
                    }*/ 
                    else
                    {
                        $cartquery="insert into cart(c_id, product_name, image, price, quantity, email) values(NULL,'".$product_name."','".$image."','".$price."','".$quantity."','".$email."')";
                        $cart_query=mysqli_query($conn,$cartquery);
  
                         header("location:cart.php");  
                     }
                     
                    
                 }
                 ?>
