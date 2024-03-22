<?php
include("header.php");
include("connection.php");
?>


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
	    <!--<link rel="stylesheet" href="css/style.php">-->
	    <link rel="stylesheet" href="css/pstyle.css">
	</head>
		<body>

			<!-- apple laptop start -->

			
			
				<h1 class="heading"> Apple <span>Laptop</span> </h1>
					<td>
						<form>
							<div class = "products">
							    <div class = "container">
							        <!--<h1 class = "lg-title">Special Shoes With Offers</h1>-->
							            <!--<p class = "text-light">Lorem ipsum dolor sit amet consectetur adipisicing elit. Aspernatur quos sit consectetur, ipsa voluptatem vitae necessitatibus dicta veniam, optio, possimus assumenda laudantium. Temporibus, quis cum.</p>-->
										<div class="product-items">

										<?php 
										$query1="select *, categories_name, company from products where categories_name = 'Laptop' and company = 'Apple' ";
										$pquery=mysqli_query($conn,$query1);
										$i=1;
										echo "<table>";
										
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


							


						

						<!-- qpple laptop end -->


						<!-- assus laptop start -->

							
								
						<h1 class="heading"> Asus <span>Laptop</span> </h1>
							<td>
								<form>
									<div class = "products">
										<div class = "container">
			    							<div class="product-items">
			    								<?php
													include("connection.php");
													$query1="select *, categories_name, company from products where categories_name = 'Laptop' and company = 'asus' ";
													$pquery=mysqli_query($conn,$query1);
													$i=1;
													echo "<table>";
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


							<!-- asus laptop end -->




						<!-- dell laptop start -->

							
								
						<h1 class="heading"> Dell <span>Laptop</span> </h1>
							<td>
								<form>
									<div class = "products">
										<div class = "container">
			    							<div class="product-items">
			    								<?php
													include("connection.php");
													$query1="select *, categories_name, company from products where categories_name = 'Laptop' and company = 'dell' ";
													$pquery=mysqli_query($conn,$query1);
													$i=1;
													echo "<table>";
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


							<!-- dell laptop end -->

							<!-- hp laptop start -->

							
								
						<h1 class="heading"> Hp <span>Laptop</span> </h1>
							<td>
								<form>
									<div class = "products">
										<div class = "container">
			    							<div class="product-items">
			    								<?php
													include("connection.php");
													$query1="select *, categories_name, company from products where categories_name = 'Laptop' and company = 'hp' ";
													$pquery=mysqli_query($conn,$query1);
													$i=1;
													echo "<table>";
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


							<!-- hp laptop end -->


							<!-- lenovo laptop start -->

							
								
						<h1 class="heading"> Lenovo <span>Laptop</span> </h1>
							<td>
								<form>
									<div class = "products">
										<div class = "container">
			    							<div class="product-items">
			    								<?php
													include("connection.php");
													$query1="select *, categories_name, company from products where categories_name = 'Laptop' and company = 'lenovo' ";
													$pquery=mysqli_query($conn,$query1);
													$i=1;
													echo "<table>";
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


							<!-- lenovo laptop end -->
						

								    



								                        
		
										

										
								

								
								


									
							
									
						
							

									
									
	
						






						





							 


		</body>
</html>
<?php
	include("footer.php");
?>