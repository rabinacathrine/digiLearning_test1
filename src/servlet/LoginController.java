package servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import DAO.AuthenticationService;

@WebServlet("/LoginController")
public class LoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;
  
    public LoginController() {
        super();
    }
    
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	HttpSession session = request.getSession();
    	PrintWriter out = response.getWriter();
    	try {
    		
    		String username, password;
    		username = request.getParameter("username");
    		password = request.getParameter("password");
    		
    		boolean auth =  AuthenticationService.validateUser(username, password);
    		
    		if(auth) {
    			out.print("Success");
    			//response.sendRedirect("home.jsp");
    		}else {
    			out.print("Failed");
    			session.setAttribute("Error","Authentication Failed");
    		//	response.sendRedirect("home.jsp");
    		}
    		
    		
    		
    		
    	}catch(Exception e) {
    		e.printStackTrace();
    	}
    }

//	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//	
//		PrintWriter out = response.getWriter();
//		
//		String username, password;
//		username = request.getParameter("username");
//		password = request.getParameter("password");
//		
//		
//		out.println("Sign in successful");
//	}

}
