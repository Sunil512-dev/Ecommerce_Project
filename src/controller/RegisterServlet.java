package controller;

import java.io.IOException;
import java.util.Map;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dto.User;
import service.Service;
import util.MailUtility;
import util.UserValidation;

/**
 * Servlet implementation class RegisterServlet
 */
@WebServlet("/RegisterServlet")
public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		User user = new User();
		String userName = request.getParameter("userName");
		String email = request.getParameter("email");
		String mobile = request.getParameter("mobile");
		String password = request.getParameter("password");
		user.setUserName(userName);
		user.setEmail(email);
		user.setMobile(mobile);
		user.setPassword(password);
		System.out.println(userName);

		UserValidation userValid = new UserValidation();

		Map<String, String> errorMessages = userValid.validate(user);
		if (errorMessages.size() > 0) {
			request.setAttribute("errorMessages", errorMessages);
			request.getRequestDispatcher("Register.jsp").forward(request, response);
		} else {
            Service service=new Service();
         boolean result  = service.dataBaseConnection(user);
			
		if(result) {
		MailUtility mail=new MailUtility();
		mail.sendMail(userName, email);
			request.getRequestDispatcher("Login.jsp").forward(request, response);
		}
		else {
			request.getRequestDispatcher("Register.jsp").forward(request, response);
		}

		}

	}

}
