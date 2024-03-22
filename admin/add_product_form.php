<?php 
include("header.php");
?>
<?php

$conn=mysqli_connect("localhost","root","","gadgetzone");
// Check connection
if (!$conn) {
    die("Connection failed: " . mysqli_connect_error());
}
else{
    //header("location:add_product.php?Connection successfully");
}

if(isset($_REQUEST['submit']))
{
	$categories_name=$_POST['categori'];
	$company=$_POST['company']; 
    $product_name=$_POST['pname'];
    $decryption=$_POST['dec'];
    $price=$_POST['price'];
    $quantity=$_POST['quantity'];

    $img=$_FILES['img']['name'];
    $target_dir="images/";
    $imgs=$target_dir.basename($img);
    move_uploaded_file($_FILES['img']['tmp_name'],$imgs);

 	$query2="insert into products(id, categories_name, company, product_name, decryption, price, quantity, img) values(NULL,'".$categories_name."','".$company."','".$product_name."','".$decryption."','".$price."','".$quantity."','".$img."')";

    $p1=mysqli_query($conn,$query2);
    if($p1=1)
    {
        header("location:add_product.php?msg1=inserted");
    }
    if($p1=0)
    {
        echo"not inserted";
    }
}
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
					<h1>AddProductFrom</h1>
					<ul class="breadcrumb">
						<li>
							<a href="add_product.php">AddProductFrom</a>
						</li>
						<li><i class='bx bx-chevron-right' ></i></li>
						<li>
							<a class="active" href="add_product.php">AddProduct_list</a>
						</li>
					</ul>
				</div>
			</div>

			<div class="container">

						
				  	<form method="post" action="add_product_form.php" enctype="multipart/form-data" name="registration" class="registartion-form">

				<div class="order">
<div class="head">
				  		<h1>Add_Product_Form</h1>	
				  		</div>
				  		<table>
					  		<tr>
						        <td><label for="categories">Categories</label></td>
						        <td>
						          	<select name="categori" id="categories" required>
							            <option value="">Select Product</option>
							            <option value="laptop">Laptop</option>
			                            <option value="mobile">Mobile</option>
			                            <option value="tv">Telvision</option>
			           	                <option value="camera">Camera</option>
			   	                        <option value="speaker">Speaker</option>
						            </select>
					        	</td>
					    	</tr>
							    <tr>
							        <td><label for="company">Company</label></td>
							    <td>
						          	<select name="company" id="company" required>
							            <option value="">Select Company</option>
							            <option value="apple">Apple</option>
			                                    <option value="asus">Asus</option>
			                                    <option value="dell">Dell</option>
			                                    <option value="hp">HP</option>
			                                    <option value="lenovo">Lenovo</option>
			                                    <option value="sony">Sony</option>
			                                    <option value="panasonic">Panasonic</option>
			                                    <option value="samsung">Samsung</option>
			                                    <option value="lg">LG</option>
			                                    <option value="redmi">Redmi</option>
			                                    <option value="realme">Realme</option>
			                                    <option value="conon">Canon</option>
			                                    <option value="nikon">Nikon</option>
			                                    <option value="kodak">Kodak</option>
			                                    <option value="boss">Boss</option>
			                                    <option value="jbl">JBL</option>
			                                    <option value="klipsch">Klipsch</option>
						            </select>
					        	</td>
					    	</tr>
							  	<tr>
							        <td><label for="product_name">Product_Name:</label></td>
							        <td><input type="text" name="pname" id="name" placeholder="Product name" required></td>
								<tr>
								<tr>
							        <td><label for="decry">Decryption:</label></td>
							        <td><textarea name="dec" id="decryption" placeholder="Write decryption..." required></textarea></td>
							    </tr>
							    <tr>
							        <td><label for="price">Price:</label></td>
							        <td><input type="number" name="price" id="price" placeholder="Price" required></td>
								<tr>
								<tr>
							        <td><label for="quantity">Quantity:</label></td>
							        <td><input type="number" name="quantity" id="quantity" placeholder="Quantity" required></td>
								<tr>
								<tr>
							        <td><label for="image">Image:</label></td>
							        <td><input type="file" name="img" id="img" placeholder="Image" required></td>
								<tr>
								<tr>
							        <td colspan="2"><input type="submit" class="submit" name="submit" value="Submit"></td>
							    </tr>	
						</table>
					</div>

					</form>	
				</div>
		


	</body>
	</html>