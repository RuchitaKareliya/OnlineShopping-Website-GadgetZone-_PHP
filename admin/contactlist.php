<?php 
include("header.php");
?>


<?php
include("connection.php");
$clist_query="select * from contact";

$cdata_query=mysqli_query($conn,$clist_query);
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
<!-- MAIN -->
		<main>
			<div class="head-title">
				<div class="left">
					<h1>ContactUs</h1>
					<ul class="breadcrumb">
						<li>
							<a href="#">ContactUs</a>
						</li>
						<li><i class='bx bx-chevron-right' ></i></li>
						<li>
							<a class="active" href="contactlist.php">ContactUs_Userlist</a>
						</li>
					</ul>
				</div>
			</div>



<div class="table-data">
				<div class="order">
					<div class="head">
						<h3>ContactUs_Userlist</h3>
						<!--<i class='bx bx-search' ></i>
						<i class='bx bx-filter' ></i>-->
					</div>
					<table>
						<thead>
							<tr>
								<th>Id</th>
		                        <th>Email_Address</th>
		                        <th>Message</th>
		                        <th colspan="1">Action</th>
		                    </tr>
		                </thead>
		                <tbody>
		                	<?php  
                     
                    while($clist_data=mysqli_fetch_array($cdata_query)){

                ?>


                  <tr>
                      <td><?php echo $clist_data['0'];  ?> </td>
                      <td><?php echo $clist_data['1'];  ?> </td>
                      <td><?php echo $clist_data['2'];  ?> </td>
                      
                      
                      <td><a href="contactdelete.php?delete_id=<?php echo $clist_data['id']; ?>"><i class="bx bxs-trash"></i></a></td>
                      
                  </tr>

              
                <?php   }  ?>
		                </tbody>
		            </table>
		        </div>
		    </div>
		</main>
</body>
</html>