<?php
include("connection.php");
include("header.php");


$wishlist_query="select * from wishlist";

$wishdata_query=mysqli_query($conn,$wishlist_query);
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <!-- Boxicons -->
    <link href='https://unpkg.com/boxicons@2.0.9/css/boxicons.min.css' rel='stylesheet'>
    <!-- My CSS -->
    <link rel="stylesheet" href="css/style.css">

    <title>GadgetZone_Adminside</title>
</head>
<body>




        <!-- MAIN -->
        <main>
            <div class="head-title">
                <div class="left">
                    <h1>Wishlist</h1>
                    <ul class="breadcrumb">
                        <li>
                            <a href="wishlist.php">Wishlist</a>
                        </li>
                        <li><i class='bx bx-chevron-right' ></i></li>
                        <li>
                            <a class="active" href="wishlist.php">wishlist</a>
                        </li> 
                    </ul>
                </div>
                <!--<a href="#" class="btn-download">
                    <i class='bx bxs-cloud-download' ></i>
                    <span class="text">Download PDF</span>
                </a>-->
            </div>


            <div class="table-data">
                <div class="order">
                    <div class="head">
                        <h3>Wishlist</h3>
                        <!--<i class='bx bx-search' ></i>
                        <i class='bx bx-filter' ></i>-->
                    </div>
                    <table>
                        <thead>
                            <tr>
                                <th>Id</th>
                                <th>Product_name</th>
                                <th>image</th>
                                <th>Price</th>
                                <th>decryption</th>
                                <th>email</th>
                                </tr>
                            </thead>
                            <tbody>
                                <?php  
                     
                                    while($wishlist_data=mysqli_fetch_array($wishdata_query)){

                                ?>


                                <tr>
                                    <td><?php echo $wishlist_data['id'];  ?> </td>
                                    <td><?php echo $wishlist_data['product_name'];  ?> </td>
                                    <td><?php echo $wishlist_data['image'];  ?> </td>
                                    <td><?php echo $wishlist_data['price'];  ?> </td>
                                    <td><?php echo $wishlist_data['decryption'];  ?> </td>    
                                    <td><?php echo $wishlist_data['email'];  ?> </td>                   
                                </tr>

                              
                                <?php   }  ?>
                            </tbody>
                        </table>
                    </div>
                </div>
