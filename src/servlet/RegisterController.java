package servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import DAO.UserDeclaration;
import DAO.UserOperation;
import model.User;

@WebServlet("/RegisterController")
public class RegisterController extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
    public RegisterController() {
        super();
    }


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		HttpSession session = request.getSession();
		try{
		PrintWriter out = response.getWriter();
		String name, username, email, password;
		name = request.getParameter("name");
		username = request.getParameter("username");
		email = request.getParameter("email");
		password = request.getParameter("password");
		
		User user = new User(name, email, username, password);
		UserDeclaration ud = new UserOperation();
		long id = ud.insertUser(user);
		if(id>0) {
			out.println("Sign up successful");
			response.sendRedirect(request.getContextPath() + "/home.jsp");
		}
		}catch(Exception e) {
			e.printStackTrace();
			session.setAttribute("Error","User Already Exists");
			response.sendRedirect(request.getContextPath() + "/registration_form.jsp");
			
		}
//		else {
//			out.println("something went wrong");
//		}
	}

}
