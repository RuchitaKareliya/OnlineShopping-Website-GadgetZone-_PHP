<?php
session_start();
include("header.php");
include("connection.php");


if(!isset($_SESSION['email'])){
    header("location:forms.php");
    }
else
 {
                        $id=$_GET['id'];
                        $product_name=$_GET['product_name'];
                        $image=$_GET['image'];
                        $price=$_GET['price'];
                        $decryption=$_GET['decryption'];
                        $email=$_SESSION['email'];
                        $wquery="select * from wishlist where product_name='$product_name' and email='$email'";
                        $w_query=mysqli_query($conn,$wquery);
                     


                    if(mysqli_num_rows($w_query) > 0){
                      header("location:wishlist.php");  
                    }
                    else
                    {
                        $wishquery="insert into wishlist(id, product_name, image, price, decryption, email) values(NULL,'".$product_name."','".$image."','".$price."','".$decryption."','".$email."')";
                        $wish_query=mysqli_query($conn,$wishquery);
  
                         header("location:wishlist.php");  
                     }
                 }
                 ?>
