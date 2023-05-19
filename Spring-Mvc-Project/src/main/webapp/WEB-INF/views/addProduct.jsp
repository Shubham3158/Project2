<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<title>Add Product</title>
<style type="text/css">
* {
	margin: 0px;
}

body {
	background: gray;
}

.navbar {
	background-color: #333;
	height: 50px;
	width: 100%;
	position: fixed;
	top: 0;
	left: 0;
	z-index: 100;
}

.navbar a {
	float: left;
	color: #f2f2f2;
	text-align: center;
	padding: 14px 16px;
	text-decoration: none;
	font-size: 17px;
}

.navbar a:hover {
	background-color: #ddd;
	color: black;
}

.navbar a.active {
	background-color: #04AA6D;
	color: white;
}

#title {
	color: white;
	margin-left: 950px;
	padding: 10px;
}

<!--
-->
.container {
	margin-top: 80px;
	margin-left: 450px;
	max-width: 400px;
	background-color: black;
	padding: 30px;
	border-radius: 5px;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
	max-width: 400px;
}

.container h2 {
	color: gray; text-align : center;
	margin-bottom: 20px;
	text-align: center;
}

.form-group {
	margin-bottom: 20px;
}

.form-group label {
	color: gray; display : block;
	font-weight: bold;
	margin-bottom: 5px;
	display: block;
}

.form-group input[type="text"], .form-group input[type="email"],
	.form-group select {
	width: 350px;
	padding: 10px;
	border: 1px solid #ccc;
	border-radius: 5px;
	font-size: 16px;
}

.form-group textarea {
	width: 350px;
	height: 100px;
	padding: 10px;
	border: 1px solid #ccc;
	border-radius: 5px;
	font-size: 16px;
}

.btn {
	display: flex;
	justify-content: space-around;
}

.btn button {
	display: block;
	width: 100px;
	padding: 10px;
	background-color: #4CAF50;
	color: #ffffff;
	border: none;
	border-radius: 5px;
	font-size: 16px;
	cursor: pointer;
}

.btn button:hover {
	background-color: #45a049;
}

.back-btn {
	text-align: center; display : block;
	width: 80px;
	padding: 10px;
	background-color: red;
	color: #ffffff;
	border: none;
	border-radius: 5px;
	font-size: 16px;
	cursor: pointer;
	display: block;
	text-decoration: none;
}
</style>
</head>
<body>
	<nav class="navbar">
		<a href="#">Home</a> <a href="#">About</a> <a href="#">Contact</a>
		<div id="title">
			<h2>
				Product Manager <span style="font-size: 12px;">@DevelopeBy
					Shubham</span>
			</h2>

		</div>
	</nav>

	<div class="container">
		<h2>Add Products</h2>
		<hr style="color: gray;">
		<form action="handleProduct" method="post">
			<br>
			<h3 style="color: gray; text-align: center;">Fill The Products
				Details</h3>
			<br>
			<div class="form-group">
				<label for="name">Product Name:</label> <input type="text" id="name"
					name="name" placeholder="Add Name" required>
			</div>
			<div class="form-group">
				<label for="price">Product Price:</label> <input type="text"
					id="price" name="price" placeholder="Product Price" required>
			</div>
			<div class="form-group">
				<label for="description">Product Description:</label>
				<textarea id="description" name="description"
					placeholder="Product Description" required></textarea>
			</div>
			<div class="btn">
				<button type="submit">Submit</button>
			</div>
		</form>
	</div>
</body>
</html>