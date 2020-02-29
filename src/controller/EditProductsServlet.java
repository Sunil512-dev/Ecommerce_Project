package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import dto.ProductDetails;
import service.Service;

/**
 * Servlet implementation class EditProductsServlet
 */
@WebServlet("/EditProductsServlet")
public class EditProductsServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		Service service=new Service();
		List<ProductDetails> listOfProducts=service.getProducts();
		if(listOfProducts!=null) {
			request.setAttribute("listOfProducts", listOfProducts);
			request.getRequestDispatcher("editproducts.jsp").forward(request, response);;
		}
		else {
			response.getWriter().print("No products to Edit");
		}
		
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
