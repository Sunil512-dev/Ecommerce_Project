<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<link rel="stylesheet" href="Header.css">
<style>
*{
padding:0;
margin:0;
}
#banner{
padding-bottom: 2%;

}
#menu{
padding-right: 15%;
}
</style>
</head>
<body background="shop.jpg">
<div id="banner">
		<div id="head">
			<h1>ECOMMERCE</h1>
		</div>
		<div id="menu">
		<a href="Addproduct.jsp"><button Style="color: red">Add Product</button></a>
			<a href="Editproduct.jsp"><button Style="color: red">Edit product</button></a> <a
				href="Deleteproduct.jsp"><button Style="color: red">Delete product</button></a>
				<a href="LogoutServlet"><button Style="color: red">LogOut</button></a>
				
		</div>
	</div>
</body>
</html>