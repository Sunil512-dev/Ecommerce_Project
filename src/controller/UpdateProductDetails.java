package controller;

import java.io.IOException;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dto.ProductDetails;
import service.Service;
import util.ProductsValidation;

@WebServlet("/UpdateProductDetails")
public class UpdateProductDetails extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String id = request.getParameter("productId");
		Integer productId = null;
		try {
			productId = Integer.parseInt(id);
		} catch (Exception e) {
			e.printStackTrace();
		}

		String productName = request.getParameter("productName");
		String Price = request.getParameter("productPrice");
		Double productPrice = Double.valueOf(Price);
		String quantity = request.getParameter("noOfQuantity");
		Integer noOfQuantity = Integer.valueOf(quantity);
		String specifications = request.getParameter("specifications");
		System.out.println(specifications);
		ProductDetails pd = new ProductDetails();
		pd.setProductId(productId);
		pd.setProductName(productName);
		pd.setProductPrice(productPrice);
		pd.setNoOfQuantity(noOfQuantity);
		pd.setSpecifications(specifications);

		ProductsValidation valid = new ProductsValidation();
		Map<String, String> errorMessages = valid.productValidation(pd);
		if (errorMessages.size() > 0) {
			request.setAttribute("errorMessages", errorMessages);
			request.getRequestDispatcher("updateproductdetails.jsp").forward(request, response);
		} else {

			Service service = new Service();

			boolean updated = service.updateProductDetails(pd);
			if (updated) {
				response.sendRedirect("EditProductsServlet");
				response.getWriter().print("Updated Successfully");
			} else {
				request.getRequestDispatcher("updateproductdetails.jsp").forward(request, response);
			}
		}
	}

}
