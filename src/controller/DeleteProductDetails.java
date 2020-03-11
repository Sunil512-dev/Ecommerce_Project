package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import service.Service;

/**
 * Servlet implementation class DeleteProductDetails
 */
@WebServlet("/DeleteProductDetails")
public class DeleteProductDetails extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id=request.getParameter("id");
	Integer productId=	Integer.parseInt(id);
	Service sc=new Service();
	boolean deleted=sc.deleteProductDetails(productId);
	if(deleted) {
		response.sendRedirect("EditProductsServlet");
		response.getWriter().print("product is Deleted ");
		
	}
	else {
		request.getRequestDispatcher("editproducts.jsp").forward(request, response);
	}
	}

	

}
