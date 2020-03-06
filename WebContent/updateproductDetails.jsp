<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action="UpdateProductDetails" method="post">
<table border="1" width="100%" :collapse; bordercolor"black">
				<tr>
				<th>productId</th>
					<th>productName</th>
					<th>productPrice</th>
					<th>noOfQuantity</th>
					<th>specifications</th>
					<th>ProductImage</th>
					<th>update</th>
		
				</tr>
				
					<tr>
					  <td><input type="text" value="${productDetails.productId}"></td>
						<td><input type="text" value="${productDetails.productName}"></td>
						<td><input type="text" value="${productDetails.productPrice}"></td>
						<td><input type="text" value="${productDetails.noOfQuantity}"></td>
						<td><input type="text" value="${productDetails.specifications}"></td>
						<td><img width="250" height="250"  src="${prodimages}/${Products.productId}.jpg"/></td>
	          <td><input type="submit" value="update"></td>
					</tr>
				
			</table>
</form>
</body>
</html>