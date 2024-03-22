<?php
session_start();
$conn=mysqli_connect("localhost","root","","gadgetzone");
// Check connection
if (!$conn) {
    die("Connection failed: " . mysqli_connect_error());
}
else{
    //header("location:add_product.php?Connection successfully");
}


?>