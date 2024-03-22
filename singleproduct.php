<?php
session_start();
include("header.php");
include("connection.php");
?>

<?php
$id=$_GET['id'];
$iquery="select * from products where id=" .$id;
$i_query=mysqli_query($conn,$iquery);
$idata=mysqli_fetch_array($i_query); 
$path="admin/images/";
?>



<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>GadgetZone</title>
	<link rel="stylesheet" href="https://unpkg.com/swiper@7/swiper-bundle.min.css" />

    <!-- font awesome cdn link  -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
	<!--<link rel="stylesheet" href="style.css">-->
	<link rel="stylesheet" href="css/singlepstyle.css">
</head>
<body>
<?php
if(mysqli_num_rows($i_query) > 0){ 
										//while($product_data=mysqli_fetch_array($i_query)) {
										?>
<div class="small-container single-product">
		<div class="row">
			<div class="col-2">
				<img src="<?php echo $path.$idata['img'];?>" width="100%" id="ProductImg">
				<!--<div class="small-img-row">
					<div class="small-img-col">
						<img src="../gz/admin/images/apple 2.jpg" width="100%" class="small-img">
					</div>
					<div class="small-img-col">
						<img src="../gz/admin/images/apple 4.jpg" width="100%" class="small-img">
					</div>
					<div class="small-img-col">
						<img src="../gz/admin/images/apple 5.jpg" width="100%" class="small-img">
					</div>
					<div class="small-img-col">
						<img src="../gz/admin/images/apple 6.jpg" width="100%" class="small-img">
					</div>
				</div>-->
			</div>
			<div class="col-2">
				<p><?php echo $idata['company'];  ?></p>
				<h1><?php echo $idata['product_name'];  ?></h1>
				<h4><i class="fas fa-rupee-sign"><?php echo $idata['price'];  ?></i></h4>
				<h4><?php echo $idata['decryption'];  ?></h4>
				<!--<select>
					<option>select size</option>
					<option>st size</option>
					<option>select size</option>
					<option>select size</option>
					<option>select size</option>
				</select>-->
				<a class="btn" href="add_to_cart.php?c_id=<?php echo $idata['id'];?>&product_name=<?php echo $idata['product_name'];?>&image=<?php echo $idata['img'];?>&price=<?php echo $idata['price'];?>" name="add_to_cart">Add to cart</a>
				<h3>Product Detils<i class="fas fa-indent"></i></h3>
				<br>
				
			</div>
		</div>
	</div>
<?php
	};?>		
<script>
	
	var ProductImg = document.getElementById("ProductImg");
	var SmallImg = document.getElementsByClassName("small-img");

	SmallImg[0].onclick = function()
	{
		ProductImg.src = SmallImg[0].src;
	}
	SmallImg[1].onclick = function()
	{
		ProductImg.src = SmallImg[1].src;
	}
	SmallImg[2].onclick = function()
	{
		ProductImg.src = SmallImg[2].src;
	}
	SmallImg[3].onclick = function()
	{
		ProductImg.src = SmallImg[3].src;
	}
</script>


</body>
</html>

<?php
	include("footer.php");
?>