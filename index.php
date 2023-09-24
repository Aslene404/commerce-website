<?php
	session_start();
	include ('./account_management/connect.php');
	include('./data_management/connectdb.php');
	include ('./populate/populate.php');
?>

<html>
<head>
	<link href='//fonts.googleapis.com/css?family=Raleway' rel='stylesheet'>
	<meta charset="UTF-8">
	<title>BeautyShop - 
		<?php
			if (isset($_GET['cat'])) echo $_GET['cat'];
			else echo "Home"; 
		?>					
	</title>
	<link rel="stylesheet" type="text/css" href="index.css">
</head>

<body>

<div class="general">


	<div class="topbar">
		<div class="connect">
			<?php 
				foreach ($_GET as $key => $value)
					$_GET[$key] = mysqli_real_escape_string($link, $value);
				foreach ($_POST as $key => $value)
					$_POST[$key] = mysqli_real_escape_string($link, $value);
				login_main();
				connect_main();
			?>
		</div>
		<div class="containertop">
			<form method="GET" action=".">
				<input type="submit" class="searchsubm" name="submitsearch" value="Search">
				<input type="text" class="searchtext" name="searchtext" placeholder="Search for item name...">
			</form>
			<form method="GET" action=".">
				<button type="submit" class="logocart" name="cat" value="mycart">My Cart</button>
			</form>
		</div>
		<form method="GET" action=".">
			<button type="submit" class="logotech" name="return" value="BeautyShop"><span >Beauty</span><span style="color: #E7192D">Shop</span></button>
		</form>
	</div>

	<div class="leftbar">
		<form method="GET" action=".">
			<br/>
			<input type="submit" class="catlist" name="cat" value="Home" />
			
			
			<?php
				if (isset($_SESSION['logged_in_user']))
					$query = 'SELECT * FROM admin WHERE login="'.$_SESSION['logged_in_user'].'"';
				if (isset($_SESSION['logged_in_user']) && mysqli_fetch_row(mysqli_query($link, $query)) != NULL)
					echo '<input type="submit" class="catlist" name="cat" value="Admin" />';
			?>
			<?php
				if (isset($_SESSION['logged_in_user']))
					$query = 'SELECT * FROM admin WHERE login="'.$_SESSION['logged_in_user'].'"';
				if (isset($_SESSION['logged_in_user']) && mysqli_fetch_row(mysqli_query($link, $query)) != NULL)
					echo '<input type="submit" class="catlist" name="cat" value="Orders" />';
			?>
			<?php
				if (isset($_SESSION['logged_in_user']))
					$query = 'SELECT * FROM usr WHERE login="'.$_SESSION['logged_in_user'].'"';
				if (isset($_SESSION['logged_in_user']) && mysqli_fetch_row(mysqli_query($link, $query)) != NULL)
					echo '<input type="submit" class="catlist" name="cat" value="My orders" />';
			?>
			
			<hr/>
			<input type="submit" class="catlist" name="cat" value="All Products" />
			<hr/>
			<?php populate_catlist()?>
			<hr/>
			<input type="submit" class="catlist" name="cat" value="Uncategorized" />
			<hr/>
		</form>
		

	</div>

	<div class="mainpage">
		<?php
			populate_main();
		?>
		<div class="cartitm" style="margin-bottom: 0.5%; margin-top:1.5%; background-color:transparent; height: 1%;"></div>
		<br/>
	</div>
</div>

</body>
</html>
