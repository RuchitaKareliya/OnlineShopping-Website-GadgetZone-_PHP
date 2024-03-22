<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">

	<!-- Boxicons -->
	<link href='https://unpkg.com/boxicons@2.0.9/css/boxicons.min.css' rel='stylesheet'>
	<!-- My CSS -->
	<link rel="stylesheet" href="css/style.css">

	<title>GadgetZone_Adminside</title>

</head>
<body>
	<!-- SIDEBAR -->
	<section id="sidebar">
		<a href="#" class="brand">
			<i class='bx bxs-smile'></i>
			<span class="text">GadgetZone</span>
		</a>
		<ul class="side-menu top">
			<li class="active">
				<a href="index.php">
					<i class='bx bxs-dashboard' ></i>
					<span class="text">Dashboard</span>
				</a>
			</li>
			<li>
				<a href="userlist.php">
					<i class='bx bxs-user' ></i>
					<span class="text">RegisterUser</span>
				</a>
			</li>
			<li>
				<a href="add_product.php">
					<i class='bx bxs-store' ></i>
					<span class="text">Product</span>
				</a>
			</li>
			<li>
				<a href="contactlist.php">
					<i class='bx bxs-contact' ></i>
					<span class="text">ContactUs</span>
				</a>
			</li>
			<li>
				<a href="feedbacklist.php">
					<i class='bx bxs-comment' ></i>
					<span class="text">Feedback</span>
				</a>
			</li>
			<li>
				<a href="wishlist.php">
					<i class='bx bxs-heart' ></i>
					<span class="text">WishList</span>
				</a>
			</li>
		</ul>
		<ul class="side-menu">
			<!--<li>
				<a href="#">
					<i class='bx bxs-cog' ></i>
					<span class="text">Settings</span>
				</a>
			</li>-->
			<li>
				<a href="logout.php" class="logout">
					<i class='bx bxs-log-out-circle' ></i>
					<span class="text">Logout</span>
				</a>
			</li>
		</ul>
	</section>
	<!-- SIDEBAR -->



	<!-- CONTENT -->
	<section id="content">
		<!-- NAVBAR -->
		<nav>
			<i class='bx bx-menu' ></i>
			<a href="#" class="nav-link">Categories</a>
			<form action="#">
				<!--<div class="form-input">
					<input type="search" placeholder="Search...">
					<button type="submit" class="search-btn"><i class='bx bx-search' ></i></button>
				</div>-->
			</form>
			<input type="checkbox" id="switch-mode" hidden>
			<!--<label for="switch-mode" class="switch-mode"></label>-->
			<!--<a href="#" class="notification">
				<i class='bx bxs-bell' ></i>
				<span class="num">8</span>
			</a>-->
			<a href="#" class="profile">
				<img src="images/profilepic2.jpg">
			</a>
		</nav>
		<!-- NAVBAR -->

		<script src="js/script.js"></script>
</body>
</html>