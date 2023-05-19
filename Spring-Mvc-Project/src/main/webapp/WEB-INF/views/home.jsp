<%@page import="javax.servlet.jsp.tagext.TryCatchFinally"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="com.powerbank.springmvcproject.model.Product"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home Page</title>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css"
	integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
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
table {
	border-collapse: collapse;
	width: 100%;
}

th, td {
	padding: 8px;
	text-align: left;
	border-bottom: 1px solid #ddd;
}

th {
	background-color: #f2f2f2;
}

tr:hover {
	background-color: #f5f5f5;
}

.table-container {
	margin-top: 150px;
}

.add-btn {
	margin-top: 60px;
	margin-left: 550px;
}

.add-btn a {
	text-decoration: none;
	background-color: gray;
	border: 2px solid black;
	padding: 10px;
	color: black;
}

.add-btn a:hover {
	color: white;
	background-color: black;
	border-color: white;
}

#delete-btn {
	color: black;
}

#delete-btn:hover {
	color: red;
	font-size: 25px;
	
}
</style>
</head>
<body>
	<nav class="navbar">
		<a href="#">जय</a> <a href="#">श्री </a> <a href="#">राम ⛳</a>
		<div id="title">
			<h2>
				Product Manager <span style="font-size: 12px;">@DevelopeBy
					Shubham</span>
			</h2>

		</div>
	</nav>

	<div class="table-container">
		<table>
			<tr>
				<th>Product ID</th>
				<th>Product Name</th>
				<th>Product Description</th>
				<th>Product Price</th>
				<th>Action</th>
			</tr>
			<%
				List<Product> products = (List)request.getAttribute("products");
			
			%>
			<%
			for (Product p : products) {
			%>

			<tr>
				<td>sHuB<%=p.getId()%></td>
				<td><%=p.getName()%></td>
				<td><%=p.getDescription()%></td>
				<td>&#x20B9;<%=p.getPrice()%></td>
				<td><a href="delectProduct/<%=p.getId()%>">
				      <i class="fa-solid fa-trash fa-lg" id="delete-btn">Delete</i>
					</a> 
				
				</td>
			</tr>
			<%
			}
			%>
		</table>
	</div>

	<div class="add-btn">
		<a href="addProduct">Add Product</a>
	</div>
</body>
</html>