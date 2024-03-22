<?php
session_start();
include("header.php");
include("connection.php");
$email=$_SESSION['email'];
if(!isset($_SESSION['email'])){
    header('location:forms.php');
}
?>
<?php
if(isset($_GET['remove'])){
   $remove_id = $_GET['remove'];
   mysqli_query($conn, "DELETE FROM `wishlist` WHERE id = '$remove_id'");
   header('location:wishlist.php');
};
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
				
					$wquery="select * from wishlist where email='$email'";
					$w_query=mysqli_query($conn,$wquery);
					$total=0;
                    
               		$path="admin/images/";
                     if(mysqli_num_rows($w_query) > 0){
                     	while($w_view=mysqli_fetch_assoc($w_query)){
                     		?>
	<div class="small-container single-product">
		<div class="row">
			<div class="col-2">
				<img src="<?php echo $path.$w_view['image'];?>" width="100%" id="ProductImg">
			</div>
			<div class="col-2">
				<p></p>
				<h1><?php echo $w_view['product_name'];  ?></h1>
				<h4><i class="fas fa-rupee-sign"><?php echo $w_view['price'];  ?></i></h4>
				<h4><?php echo $w_view['decryption'];  ?></h4>
				<!--<select>
					<option>select size</option>
					<option>st size</option>
					<option>select size</option>
					<option>select size</option>
					<option>select size</option>
				</select>-->
				<!--<input type="number" name="" value="1">-->
				<a class="btn" href="wishlist.php?remove=<?php echo $w_view['id']; ?>" onclick="return confirm('remove item from wishlist?')">Delete_wishlist_product</a>
				<h3>Product Detils<i class="fas fa-indent"></i></h3>
				<br>
				
			</div>
		</div>
	</div>	
	<?php
	};
	};
	?>	
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