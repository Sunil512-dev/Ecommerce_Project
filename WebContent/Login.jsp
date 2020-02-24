<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>
#login{
padding-top: 5%;
}
</style>
</head>
<body>


	<form action="LoginServlet" method="post">
		<%@include file="Header.jsp"%>
		<center id="login">
			<table>
				<h1 style="color:red;">Login</h1>
				<tr>
					<td><label>User name</label></td>
					<td><input type="text" value="${param.userName}"
						name="userName"></td>
					<td><span style="color: red">${errorMessages.userNameError}</span>
					</td>
				</tr>
				<tr>
					<td><label>Password</label></td>
					<td><input type="password" value="${param.password}"
						name="password"></td>
					<td><span style="color: red">${errorMessages.passwordError}</span></td>
				</tr>
				<tr>

					<td style="padding-left:45%" ><input type="submit" name=" submit" value="login"
						style="background-color: lime;"></td>
				</tr>



			</table>

		</center>
	</forM>


</body>
</html>