<?php
include("header.php");
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

	    
	    <link rel="stylesheet" href="css/pstyle.css">
</head>
<body>

<!-- apple speaker start -->

							
								
		<h1 class="heading"> Apple <span>Speaker</span> </h1>
			<td>
				<form>
					<div class = "products">
						<div class = "container">
			    			<div class="product-items">
			    				<?php
									include("connection.php");
									$query1="select *, categories_name, company from products where categories_name = 'speaker' and company = 'apple' ";
									$pquery=mysqli_query($conn,$query1);
									$i=1;
									echo "<table>";
								?>
								
			    				<?php
									$path="admin/images/"; 
									if(mysqli_num_rows($pquery) > 0){ 
									while($product_data=mysqli_fetch_array($pquery)) {
								?>
				
									<div class="product">
									<div class="product-content">
										<div class="product-img" >
											<a href="Singleproduct.php?id=<?php echo $product_data['id']?>">
											<img src="<?php echo $path.$product_data['img'];?>" alt="product-image" name="cimg"></a>
										</div>

										<div class="product-btns">

											<button type="button" name="wishlist" class="btn-heart"><a href="add_to_wishlist.php?id=<?php echo $product_data['id'];?>&product_name=<?php echo $product_data['product_name'];?>&image=<?php echo $product_data['img'];?>&price=<?php echo $product_data['price'];?>&decryption=<?php echo $product_data['decryption'];?>"> add to wishlist</a>
												<span><i class="fas fa-heart"></i></span>
											</button>
											<button type="button" class="btn-cart" name="add_to_cart"><a href="add_to_cart.php?c_id=<?php echo $product_data['id'];?>&product_name=<?php echo $product_data['product_name'];?>&image=<?php echo $product_data['img'];?>&price=<?php echo $product_data['price'];?>">add to cart</a>
												<span><i class="fas fa-shopping-cart"></i></span>
											</button>
										</div>

									</div>
										<div class="product-info">
												<div class="product-info-top">
													<h2 class="sm-title"><?php echo $product_data['product_name'];  ?></h2>
													<!--<div class="rating">
														<span><i class="fas fa-star"></i></span>
														<span><i class="fas fa-star"></i></span>
														<span><i class="fas fa-star"></i></span>
														<span><i class="fas fa-star"></i></span>
														<span><i class="fas fa-star"></i></span>
													</div>-->
												</div>
												<a href="#" class="product-name"><?php echo $product_data['decryption'];  ?></a>
												<p class="product-price"><i class="fas fa-rupee-sign"><?php echo $product_data['price'];  ?></i></p>
												<!--<p class = "product-price">$ 133.00</p>-->
											</div>
											<!--<div class = "off-info">
					                            <h2 class = "sm-title">25% off</h2>
					                        </div>-->
										</div>
									</div>
									<?php if($i%3==0)
									{
										echo "<tr>";
									}
									$i++;
									};
};
									?>
									</table>
							</div>
					    </div>
					</div>
				</form>
			</td>

	<!-- apple speaker end -->


	<!-- sony speaker start -->

							
								
		<h1 class="heading"> Sony <span>Speaker</span> </h1>
			<td>
				<form>
					<div class = "products">
						<div class = "container">
			    			<div class="product-items">
			    				<?php
									include("connection.php");
									$query1="select *, categories_name, company from products where categories_name = 'speaker' and company = 'sony' ";
									$pquery=mysqli_query($conn,$query1);
									$i=1;
									echo "<table>";
								?>
								
			    				<?php
									$path="admin/images/"; 
									if(mysqli_num_rows($pquery) > 0){ 
									while($product_data=mysqli_fetch_array($pquery)) {
								?>
				
									<div class="product">
									<div class="product-content">
										<div class="product-img" >
											<a href="Singleproduct.php?id=<?php echo $product_data['id']?>">
											<img src="<?php echo $path.$product_data['img'];?>" alt="product-image" name="cimg"></a>
										</div>

										<div class="product-btns">

											<button type="button" name="wishlist" class="btn-heart"><a href="add_to_wishlist.php?id=<?php echo $product_data['id'];?>&product_name=<?php echo $product_data['product_name'];?>&image=<?php echo $product_data['img'];?>&price=<?php echo $product_data['price'];?>&decryption=<?php echo $product_data['decryption'];?>"> add to wishlist</a>
												<span><i class="fas fa-heart"></i></span>
											</button>
											<button type="button" class="btn-cart" name="add_to_cart"><a href="add_to_cart.php?c_id=<?php echo $product_data['id'];?>&product_name=<?php echo $product_data['product_name'];?>&image=<?php echo $product_data['img'];?>&price=<?php echo $product_data['price'];?>">add to cart</a>
												<span><i class="fas fa-shopping-cart"></i></span>
											</button>
										</div>

									</div>
										<div class="product-info">
												<div class="product-info-top">
													<h2 class="sm-title"><?php echo $product_data['product_name'];  ?></h2>
													<!--<div class="rating">
														<span><i class="fas fa-star"></i></span>
														<span><i class="fas fa-star"></i></span>
														<span><i class="fas fa-star"></i></span>
														<span><i class="fas fa-star"></i></span>
														<span><i class="fas fa-star"></i></span>
													</div>-->
												</div>
												<a href="#" class="product-name"><?php echo $product_data['decryption'];  ?></a>
												<p class="product-price"><i class="fas fa-rupee-sign"><?php echo $product_data['price'];  ?></i></p>
												<!--<p class = "product-price">$ 133.00</p>-->
											</div>
											<!--<div class = "off-info">
					                            <h2 class = "sm-title">25% off</h2>
					                        </div>-->
										</div>
									</div>
									<?php if($i%3==0)
									{
										echo "<tr>";
									}
									$i++;
									};
								};
									?>
									</table>
							</div>
					    </div>
					</div>
				</form>
			</td>

	<!-- sony speaker end -->

<!-- boss speaker start -->

							
								
		<h1 class="heading"> Boss <span>Speaker</span> </h1>
			<td>
				<form>
					<div class = "products">
						<div class = "container">
			    			<div class="product-items">
			    				<?php
									include("connection.php");
									$query1="select *, categories_name, company from products where categories_name = 'speaker' and company = 'boss' ";
									$pquery=mysqli_query($conn,$query1);
									$i=1;
									echo "<table>";
								?>
								
			    				<?php
									$path="admin/images/"; 
									if(mysqli_num_rows($pquery) > 0){ 
									while($product_data=mysqli_fetch_array($pquery)) {
								?>
				
									<div class="product">
									<div class="product-content">
										<div class="product-img" >
											<a href="Singleproduct.php?id=<?php echo $product_data['id']?>">
											<img src="<?php echo $path.$product_data['img'];?>" alt="product-image" name="cimg"></a>
										</div>

										<div class="product-btns">

											<button type="button" name="wishlist" class="btn-heart"><a href="add_to_wishlist.php?id=<?php echo $product_data['id'];?>&product_name=<?php echo $product_data['product_name'];?>&image=<?php echo $product_data['img'];?>&price=<?php echo $product_data['price'];?>&decryption=<?php echo $product_data['decryption'];?>"> add to wishlist</a>
												<span><i class="fas fa-heart"></i></span>
											</button>
											<button type="button" class="btn-cart" name="add_to_cart"><a href="add_to_cart.php?c_id=<?php echo $product_data['id'];?>&product_name=<?php echo $product_data['product_name'];?>&image=<?php echo $product_data['img'];?>&price=<?php echo $product_data['price'];?>">add to cart</a>
												<span><i class="fas fa-shopping-cart"></i></span>
											</button>
										</div>

									</div>
										<div class="product-info">
												<div class="product-info-top">
													<h2 class="sm-title"><?php echo $product_data['product_name'];  ?></h2>
													<!--<div class="rating">
														<span><i class="fas fa-star"></i></span>
														<span><i class="fas fa-star"></i></span>
														<span><i class="fas fa-star"></i></span>
														<span><i class="fas fa-star"></i></span>
														<span><i class="fas fa-star"></i></span>
													</div>-->
												</div>
												<a href="#" class="product-name"><?php echo $product_data['decryption'];  ?></a>
												<p class="product-price"><i class="fas fa-rupee-sign"><?php echo $product_data['price'];  ?></i></p>
												<!--<p class = "product-price">$ 133.00</p>-->
											</div>
											<!--<div class = "off-info">
					                            <h2 class = "sm-title">25% off</h2>
					                        </div>-->
										</div>
									</div>
									<?php if($i%3==0)
									{
										echo "<tr>";
									}
									$i++;
									};
								};
									?>
									</table>
							</div>
					    </div>
					</div>
				</form>
			</td>

	<!-- Boss speaker end -->



	<!-- jbl speaker start -->

							
								
		<h1 class="heading"> JBL <span>Speaker</span> </h1>
			<td>
				<form>
					<div class = "products">
						<div class = "container">
			    			<div class="product-items">
			    				<?php
									include("connection.php");
									$query1="select *, categories_name, company from products where categories_name = 'speaker' and company = 'jbl' ";
									$pquery=mysqli_query($conn,$query1);
									$i=1;
									echo "<table>";
								?>
								
			    				<?php
									$path="admin/images/"; 
									if(mysqli_num_rows($pquery) > 0){ 
									while($product_data=mysqli_fetch_array($pquery)) {
								?>
				
									<div class="product">
									<div class="product-content">
										<div class="product-img" >
											<a href="Singleproduct.php?id=<?php echo $product_data['id']?>">
											<img src="<?php echo $path.$product_data['img'];?>" alt="product-image" name="cimg"></a>
										</div>

										<div class="product-btns">

											<button type="button" name="wishlist" class="btn-heart"><a href="add_to_wishlist.php?id=<?php echo $product_data['id'];?>&product_name=<?php echo $product_data['product_name'];?>&image=<?php echo $product_data['img'];?>&price=<?php echo $product_data['price'];?>&decryption=<?php echo $product_data['decryption'];?>"> add to wishlist</a>
												<span><i class="fas fa-heart"></i></span>
											</button>
											<button type="button" class="btn-cart" name="add_to_cart"><a href="add_to_cart.php?c_id=<?php echo $product_data['id'];?>&product_name=<?php echo $product_data['product_name'];?>&image=<?php echo $product_data['img'];?>&price=<?php echo $product_data['price'];?>">add to cart</a>
												<span><i class="fas fa-shopping-cart"></i></span>
											</button>
										</div>

									</div>
										<div class="product-info">
												<div class="product-info-top">
													<h2 class="sm-title"><?php echo $product_data['product_name'];  ?></h2>
													<!--<div class="rating">
														<span><i class="fas fa-star"></i></span>
														<span><i class="fas fa-star"></i></span>
														<span><i class="fas fa-star"></i></span>
														<span><i class="fas fa-star"></i></span>
														<span><i class="fas fa-star"></i></span>
													</div>-->
												</div>
												<a href="#" class="product-name"><?php echo $product_data['decryption'];  ?></a>
												<p class="product-price"><i class="fas fa-rupee-sign"><?php echo $product_data['price'];  ?></i></p>
												<!--<p class = "product-price">$ 133.00</p>-->
											</div>
											<!--<div class = "off-info">
					                            <h2 class = "sm-title">25% off</h2>
					                        </div>-->
										</div>
									</div>
									<?php if($i%3==0)
									{
										echo "<tr>";
									}
									$i++;
									};
								};
									?>
									</table>
							</div>
					    </div>
					</div>
				</form>
			</td>

	<!-- jbl speaker end -->



	<!-- klipsch speaker start -->

							
								
		<h1 class="heading"> Klipsch <span>Speaker</span> </h1>
			<td>
				<form>
					<div class = "products">
						<div class = "container">
			    			<div class="product-items">
			    				<?php
									include("connection.php");
									$query1="select *, categories_name, company from products where categories_name = 'speaker' and company = 'klipsch' ";
									$pquery=mysqli_query($conn,$query1);
									$i=1;
									echo "<table>";
								?>
								
			    				<?php
									$path="admin/images/"; 
									if(mysqli_num_rows($pquery) > 0){ 
									while($product_data=mysqli_fetch_array($pquery)) {
								?>
				
									<div class="product">
									<div class="product-content">
										<div class="product-img" >
											<a href="Singleproduct.php?id=<?php echo $product_data['id']?>">
											<img src="<?php echo $path.$product_data['img'];?>" alt="product-image" name="cimg"></a>
										</div>

										<div class="product-btns">

											<button type="button" name="wishlist" class="btn-heart"><a href="add_to_wishlist.php?id=<?php echo $product_data['id'];?>&product_name=<?php echo $product_data['product_name'];?>&image=<?php echo $product_data['img'];?>&price=<?php echo $product_data['price'];?>&decryption=<?php echo $product_data['decryption'];?>"> add to wishlist</a>
												<span><i class="fas fa-heart"></i></span>
											</button>
											<button type="button" class="btn-cart" name="add_to_cart"><a href="add_to_cart.php?c_id=<?php echo $product_data['id'];?>&product_name=<?php echo $product_data['product_name'];?>&image=<?php echo $product_data['img'];?>&price=<?php echo $product_data['price'];?>">add to cart</a>
												<span><i class="fas fa-shopping-cart"></i></span>
											</button>
										</div>

									</div>
										<div class="product-info">
												<div class="product-info-top">
													<h2 class="sm-title"><?php echo $product_data['product_name'];  ?></h2>
													<!--<div class="rating">
														<span><i class="fas fa-star"></i></span>
														<span><i class="fas fa-star"></i></span>
														<span><i class="fas fa-star"></i></span>
														<span><i class="fas fa-star"></i></span>
														<span><i class="fas fa-star"></i></span>
													</div>-->
												</div>
												<a href="#" class="product-name"><?php echo $product_data['decryption'];  ?></a>
												<p class="product-price"><i class="fas fa-rupee-sign"><?php echo $product_data['price'];  ?></i></p>
												<!--<p class = "product-price">$ 133.00</p>-->
											</div>
											<!--<div class = "off-info">
					                            <h2 class = "sm-title">25% off</h2>
					                        </div>-->
										</div>
									</div>
									<?php if($i%3==0)
									{
										echo "<tr>";
									}
									$i++;
									};
								};
									?>
									</table>
							</div>
					    </div>
					</div>
				</form>
			</td>

	<!-- klipsch speaker end -->

</body>
</html>
<?php
include("footer.php");
?>