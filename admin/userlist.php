<?php
include("connection.php");
$ulist_query="select * from registration";

$udata_query=mysqli_query($conn,$ulist_query);
?>

<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>GadgetZone_Adminside</title>
	<!-- Boxicons -->
	<link href='https://unpkg.com/boxicons@2.0.9/css/boxicons.min.css' rel='stylesheet'>
	<!-- My CSS -->
	<link rel="stylesheet" href="css/style.css">

</head>
<body>



<?php 
include("header.php");
 ?>

<!-- MAIN -->
		<main>
			<div class="head-title">
				<div class="left">
					<h1>RegisterUser</h1>
					<ul class="breadcrumb">
						<li>
							<a href="#">RegisterUser</a>
						</li>
						<li><i class='bx bx-chevron-right' ></i></li>
						<li>
							<a class="active" href="userlist.php">Userlist</a>
						</li>
					</ul>
				</div>
			</div>



<div class="table-data">
				<div class="order">
					<div class="head">
						<h3>RegisterUser</h3>
						<!--<i class='bx bx-search' ></i>
						<i class='bx bx-filter' ></i>-->
					</div>
					<table>
						<thead>
							<tr>
		                        <th>Id</th>
		                        <th>Full_Name</th>
		                        <th>Email_Address</th>
		                        <th>Password</th>
		                        <th>Confirm_Password</th>
		                        <th>Contact_No</th>
		                        <th>Address</th>
		                        <th>Pin_Code</th>
		                        <th>City</th>
		                        <th>State</th>
		                    </tr>
		                </thead>
		                <tbody>
		                	<?php  
                     
			                    while($ulist_data=mysqli_fetch_array($udata_query)){

			                ?>


			                  <tr>
			                      <td><?php echo $ulist_data['0'];  ?> </td>
			                      <td><?php echo $ulist_data['1'];  ?> </td>
			                      <td><?php echo $ulist_data['2'];  ?> </td>
			                      <td><?php echo $ulist_data['3'];  ?> </td>
			                      <td><?php echo $ulist_data['4'];  ?> </td>
			                      <td><?php echo $ulist_data['5'];  ?> </td>
			                      <td><?php echo $ulist_data['6'];  ?> </td>
			                      <td><?php echo $ulist_data['7'];  ?> </td>
			                      <td><?php echo $ulist_data['8'];  ?></td>
			                      <td><?php echo $ulist_data['9'];  ?> </td>
			                      
			                      
			                  </tr>

              
                <?php   }  ?>
            </tbody>
        </table>
    </div>
</div>
</main>





</body>
</html>