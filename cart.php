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
@include 'connection.php';
if(isset($_POST['cart_update'])){
   $update_quantity = $_POST['update_cart_q'];
   $update_id = $_POST['update_cart_q_id'];
   $update_qquery = mysqli_query($conn, "UPDATE `cart` SET quantity = '$update_quantity' WHERE c_id = '$update_id'");
   if($update_qquery){
      header('location:cart.php');
   };
};

if(isset($_GET['remove'])){
   $remove_id = $_GET['remove'];
   mysqli_query($conn, "DELETE FROM `cart` WHERE c_id = '$remove_id'");
   header('location:cart.php');
};

if(isset($_GET['delete_all'])){
   mysqli_query($conn, "DELETE FROM `cart`");
   header('location:cart.php');
}

?>


<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title></title>
	<link rel="stylesheet" href="https://unpkg.com/swiper@7/swiper-bundle.min.css" />

    <!-- font awesome cdn link  -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
      <link rel="stylesheet" href="css/cartstyle.css"> 
</head>
<body>
<section>

	<div class="small-container cart-page">

				<table>
					<tr>
						<th>Product</th>
						<th>Quantity</th>
						<th>Subtotal</th>
					</tr>


				<?php
				
					$iquery="select * from cart where email='$email'";
					$i_query=mysqli_query($conn,$iquery);
					$total=0;
                    
               $path="admin/images/";
                     if(mysqli_num_rows($i_query) > 0){
                     	while($cart_view=mysqli_fetch_assoc($i_query)){
                     		?>

												
					<tr>
						<td>
							<div class="cart-info">
								<img src="<?php echo $path.$cart_view['image'];?>">
								<div>
									<p><?php echo $cart_view['product_name']?></p>
									<div><i class="fas fa-rupee-sign"><?php echo $cart_view['price'];?></i></div>
									<br>
									<a href="cart.php?remove=<?php echo $cart_view['c_id']; ?>" onclick="return confirm('remove item from cart?')" name="">Remove</a>
									<td>
									<form action="" method="POST">
									
									
									<input type="hidden" name="update_cart_q_id"  value="<?php echo $cart_view['c_id']; ?>" >
								  	<input type="number" href="" min="1" name="update_cart_q" value="<?php echo $cart_view['quantity']; ?>">
								 	<input type="submit" name="cart_update" value="Update">
									</form>
						  			</td>	
          					</div>
							</div>
						</td>  

						
						<td><i class="fas fa-rupee-sign"><?php echo $sub_total =($cart_view['price'] * $cart_view['quantity']); ?>/-</i></td>
					</tr>
					<?php
$total += $sub_total;    
            };
         };
?>
				</table>


				<div class="total-price">
					<table>
						<!--<tr>
							<td>Subtotal</td>
							<td><i class="fas fa-rupee-sign"></i></td>
						</tr>-->

						<tr>
							<td>Total</td>
							<td><i class="fas fa-rupee-sign"><?php echo $total; ?>/-</i></td>
						</tr>
					</table>
				</div>

				

			<table>
				<tr>
					<td class="btn-buy">
								<a href="index.php" class="btn-button">continue shopping</a>
								<a href="cart.php?delete_all" onclick="return confirm('are you sure you want to delete all?');" class="btn-button"> <i class="fas fa-trash"></i> delete_cart_products </a>
								<br><br>
								<a href="cashondelivery.php" class="btn-button <?= ($total > 1)?'':'disabled'; ?>">Cash On Delivery</a>
								<a href="onlinepayment.php" class="btn-button <?= ($total > 1)?'':'disabled'; ?>">Online Payment</a>


					</td>
				</tr>
				</table>
</div>
</section>
</body>
</html>

<?php
	include("footer.php");
?>
<?php}?>