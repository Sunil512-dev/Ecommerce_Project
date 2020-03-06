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


}
</style>
</head> 
<body background="images/shop.jpg" id="img" >

<%@include file="Home.jsp"%>
	<form  action="LoginServlet" method="post" name="logform" onsubmit="return loginValidation()">
		
		
		<center id="login">
			<table>
				<h1 style="color:red;">Login</h1>
				<tr>
					<td><label>email</label></td>
					<td><input type="email" value="${param.email}" name="email" pattern="[a-zA-Z0-9]{1,}+@[a-zA-z]{2,7}+.[a-z]{3,6}"></td>
					<td><span style="color:red">${errorMessages.emailError}</span>	</td>
				</tr>
				<tr>
					<td><label>Password</label></td>
					<td><input type="password" value="${param.password}" pattern="[a-zA-Z0-9]{8}" title="enter  valid password"
						name="password"></td>
					<td><span style="color: red">${errorMessages.passwordError}</span></td>
				</tr>
				<tr>

					<td style="padding-left:45%" ><input type="submit" name=" submit" value="login"
						style="background-color: lime;"></td>
				</tr>



			</table>

		</center>
	</form>
    <script type="text/javascript" src="Validation.js"></script>

</body>
</html>