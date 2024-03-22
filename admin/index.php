<?php
include("connection.php");
include("header.php");

if(!isset($_SESSION['email'])){
    header('location:adminlogin.php');
}
?>
<?php
$cartlist_query="select * from cart";

$cartdata_query=mysqli_query($conn,$cartlist_query);
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
					<h1>Dashboard</h1>
					<ul class="breadcrumb">
						<li>
							<a href="index.php">Dashboard</a>
						</li>
						<li><i class='bx bx-chevron-right' ></i></li>
						<li>
							<a class="active" href="index.php">Home</a>
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
						<h3>Cart</h3>
						<!--<i class='bx bx-search' ></i>
						<i class='bx bx-filter' ></i>-->
					</div>
					<table>
						<thead>
							<tr>
								<th>C_Id</th>
			                    <th>Product_name</th>
			                    <th>image</th>
			          			<th>Price</th>
			          			<th>Quantity</th>
			          			<th>email</th>
			                    </tr>
			                </thead>
			                <tbody>
			                	<?php  
                     
				                    while($cartlist_data=mysqli_fetch_array($cartdata_query)){

				                ?>


				                <tr>
				                    <td><?php echo $cartlist_data['c_id'];  ?> </td>
				                    <td><?php echo $cartlist_data['product_name'];  ?> </td>
				                    <td><?php echo $cartlist_data['image'];  ?> </td>
									<td><?php echo $cartlist_data['price'];  ?> </td>
									<td><?php echo $cartlist_data['quantity'];  ?> </td>	
									<td><?php echo $cartlist_data['email'];  ?> </td>					
								</tr>

				              
				                <?php   }  ?>
			                </tbody>
			            </table>
			        </div>
			    </div>

<?php

$billlist_query="select * from bill";

$billdata_query=mysqli_query($conn,$billlist_query);
?>
<div class="table-data">
				<div class="order">
					<div class="head">
						<h3>Bill</h3>
						<!--<i class='bx bx-search' ></i>
						<i class='bx bx-filter' ></i>-->
					</div>
					<table>
						<thead>
							<tr>
								<th>b_Id</th>
			                    <th>FullName</th>
			                    <th>Email</th>
			          			<th>Payment_Type</th>
			          			<th>Mobile_NO</th>
			          			<th>Address</th>
			          			<th>City</th>
			          			<th>State</th>
			          			<th>Pin_Code</th>
			          			<th>Total_Product</th>
			          			<th>Total_Amount</th>
			                    </tr>
			                </thead>
			                <tbody>
			                	<?php  
                     
				                    while($billlist_data=mysqli_fetch_array($billdata_query)){

				                ?>


				                <tr>
				                    <td><?php echo $billlist_data['b_id'];  ?> </td>
				                    <td><?php echo $billlist_data['fullname'];  ?> </td>
				                    <td><?php echo $billlist_data['email'];  ?> </td>
				                    <td><?php echo $billlist_data['payment_type'];  ?> </td>
				                    <td><?php echo $billlist_data['mobile_no'];  ?> </td>
				                    <td><?php echo $billlist_data['address'];  ?> </td>
				                    <td><?php echo $billlist_data['city'];  ?> </td>
				                    <td><?php echo $billlist_data['state'];  ?> </td>
				                    <td><?php echo $billlist_data['pincode'];  ?> </td>		
				                    <td><?php echo $billlist_data['total_product'];  ?> </td>
				                    <td><?php echo $billlist_data['total_amount'];  ?> </td>		
								</tr>

				              
				                <?php   }  ?>
			                </tbody>
			            </table>
			        </div>
			    </div>
			<!--<ul class="box-info">
				<li>
					<i class='bx bxs-calendar-check' ></i>
					<span class="text">
						<h3>1020</h3>
						<p>New Order</p>
					</span>
				</li>
				<li>
					<i class='bx bxs-group' ></i>
					<span class="text">
						<h3>2834</h3>
						<p>Visitors</p>
					</span>
				</li>
				<li>
					<i class='bx bxs-dollar-circle' ></i>
					<span class="text">
						<h3>$2543</h3>
						<p>Total Sales</p>
					</span>
				</li>
			</ul>-->


			<!--<div class="table-data">
				<div class="order">
					<div class="head">
						<h3>Recent Orders</h3>
						<i class='bx bx-search' ></i>
						<i class='bx bx-filter' ></i>
					</div>
					<table>
						<thead>
							<tr>
								<th>User</th>
								<th>Date Order</th>
								<th>Status</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>
									<img src="img/people.png">
									<p>John Doe</p>
								</td>
								<td>01-10-2021</td>
								<td><span class="status completed">Completed</span></td>
							</tr>
							<tr>
								<td>
									<img src="img/people.png">
									<p>John Doe</p>
								</td>
								<td>01-10-2021</td>
								<td><span class="status pending">Pending</span></td>
							</tr>
							<tr>
								<td>
									<img src="img/people.png">
									<p>John Doe</p>
								</td>
								<td>01-10-2021</td>
								<td><span class="status process">Process</span></td>
							</tr>
							<tr>
								<td>
									<img src="img/people.png">
									<p>John Doe</p>
								</td>
								<td>01-10-2021</td>
								<td><span class="status pending">Pending</span></td>
							</tr>
							<tr>
								<td>
									<img src="img/people.png">
									<p>John Doe</p>
								</td>
								<td>01-10-2021</td>
								<td><span class="status completed">Completed</span></td>
							</tr>
						</tbody>
					</table>
				</div>
				<div class="todo">
					<div class="head">
						<h3>Todos</h3>
						<i class='bx bx-plus' ></i>
						<i class='bx bx-filter' ></i>
					</div>
					<ul class="todo-list">
						<li class="completed">
							<p>Todo List</p>
							<i class='bx bx-dots-vertical-rounded' ></i>
						</li>
						<li class="completed">
							<p>Todo List</p>
							<i class='bx bx-dots-vertical-rounded' ></i>
						</li>
						<li class="not-completed">
							<p>Todo List</p>
							<i class='bx bx-dots-vertical-rounded' ></i>
						</li>
						<li class="completed">
							<p>Todo List</p>
							<i class='bx bx-dots-vertical-rounded' ></i>
						</li>
						<li class="not-completed">
							<p>Todo List</p>
							<i class='bx bx-dots-vertical-rounded' ></i>
						</li>
					</ul>
				</div>
			</div>-->
		</main>
		<!-- MAIN -->
	</section>
	<!-- CONTENT -->
	

	<script src="js/script.js"></script>
</body>
</html>