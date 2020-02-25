<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<style>
#submit{
padding-left: 13%;
padding-top: 3%;
}
#body{

padding-left: 40%;
padding-top: 5%;
}


</style>
</head>
<body background="shop.jpg" id="img">

<%@include file="HeadRegister.jsp"%>
		
	<div id="body">
		<h1 style="color: red;">Registration</h1>
	
		<form name="regForm" action="RegisterServlet" method="post"  onsubmit="return validation()">
	
			<table>
				<tr>
					<td><label>User name</label></td>
					<td><input type="text" value="${param.userName}" name="userName" pattern="[a-zA-Z]{5,15}"></td>
					<td>	<span id="fullnameerror"></span></td>
				<td><span style="color:red">${errorMessages.userNameError}</span>	</td>
			
				</tr>
				<tr>
					<td><label>email</label></td>
					<td><input type="email" value="${param.email}" name="email" pattern="[a-zA-Z0-9]{1,}+@[a-zA-z]{2,7}+.[a-z]{3,6}"></td>
					<td><span style="color:red">${errorMessages.emailError}</span>	</td>
				</tr>
				<tr>
					<td><label>Mobile</label></td>
					<td><input type="tel" value="${param.mobile}" name="mobile" pattern="[0-9]{10}"></td>
					<td><span style="color:red">${errorMessages.mobileError}</span></td>
				</tr>
				<tr>
					<td><label>Password</label></td>
					<td><input type="password" value="${param.password}" name="password" pattern="[a-zA-Z0-9]{8}"></td>
					<td><span style="color:red">${errorMessages.passwordError}</span></td>
				</tr>
				
			</table>
			<div id="submit">
				<tr>

					<td><input type="submit" name=" submit" value="register" style=" background-color:lime;"></td>
				</tr>
				</div>

		</form>
			<script src="Validation.js"></script>
	</div>
</body>
</html>