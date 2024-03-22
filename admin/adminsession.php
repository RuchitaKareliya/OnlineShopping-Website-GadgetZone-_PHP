<?php
include("connection.php");
$db = mysqli_select_db($conn, 'gadgetzone');

if(isset($_POST['submit'])){
    $email = $_POST['email'];
    $password = $_POST['password'];

    $sql = "select * from admin_login where email ='$email' and password='$password'";

    $query=mysqli_query($conn,$sql);

    $row=mysqli_num_rows($query);

        if($row == 1){
            echo "login successful";
            $_SESSION['email'] = $email;
            header('location:index.php');
        }else{
            echo "login failed";
            header('location:adminlogin.php');
        }
    }
?>