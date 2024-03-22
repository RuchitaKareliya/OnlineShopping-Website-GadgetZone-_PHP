<?php
include("header.php");
include("connection.php");
?>



<?php
$list_query="select * from products";
$data_query=mysqli_query($conn,$list_query);
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

	<link rel="stylesheet" href="css/pformstyle.css">

</head>
<body>
<!-- MAIN -->
		<main>
			<div class="head-title">
				<div class="left">
					<h1>Product</h1>
					<ul class="breadcrumb">
						<li>
							<a href="add_product.php">Product_List</a>
						</li>
						<li><i class='bx bx-chevron-right' ></i></li>
						<li>
							<a class="active" href="add_product_form.php">AddRecord</a>
						</li>
					</ul>
				</div>
			</div>




			



				<div class="table-data">
				<div class="order">
					<div class="head">
						<h3>PRODUCT_LIST<a href="add_product_form.php">Add Record</a></h3>
						<!--<i class='bx bx-search' ></i>
						<i class='bx bx-filter' ></i>-->
					</div>
					<table>
						<thead>
							<tr>
								<th>Id</th>
								<th>Categories_name</th>
                <th>Company</th>
                <th>Product_name</th>
                <th>Decryption</th>
                <th>Price</th>
                <th>Quentity</th>
                <th>Date&Time</th>
                <th>Image</th>
                <th colspan="2">Action</th>
							</tr>
						</thead>
						<tbody>

							<?php  
                            $path="images/"; 
                            while($list_data=mysqli_fetch_array($data_query)){

                        ?>


                          <tr>
                              <td><?php echo $list_data['id'];  ?> </td>
                              <td><?php echo $list_data['categories_name'];  ?> </td>
                              <td><?php echo $list_data['company'];  ?> </td>
                              <td><?php echo $list_data['product_name'];  ?> </td>
                              <td><?php echo $list_data['decryption'];  ?> </td>
                              <td><?php echo $list_data['price'];  ?> </td>
                              <td><?php echo $list_data['quantity'];  ?> </td>
                              <td><?php echo $list_data['date&time'];  ?> </td>
                              <td><img src="<?php echo $path.$list_data['img'];?>" height="100" width="100"/> </td>

                              <td><a href="update.php?update_id=<?php echo $list_data['id']; ?>"><i class="bx bxs-edit"></i></a></td>
                              <td><a href="delete.php?delete_id=<?php echo $list_data['id']; ?>"><i class="bx bxs-trash"></i></a></td>
                              
                          </tr>

                      
                        <?php   }  ?>
							
						</tbody>
					</table>
				</div>
			</div>
		</main>
</body>
</html>