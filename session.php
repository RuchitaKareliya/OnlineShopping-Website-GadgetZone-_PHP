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
 
$db = mysqli_select_db($conn, 'gadgetzone');

if(isset($_POST['submit'])){
    $email =$_POST['email'];
    $password = $_POST['password'];

    $query ="select* from registration where email='$email' and password='$password'";
    
    $sql1 = mysqli_query($conn,$query);

    $row_count = mysqli_num_rows($sql1);

    if($row_count > 0){
        //echo "login successful";
       $_SESSION['email'] = $email;
        header('location:index.php');
        }else{
            echo "login failed";
            header('location:forms.php');
        }
}
?>
