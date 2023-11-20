package users;

import java.io.IOException;

import org.mindrot.jbcrypt.BCrypt;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class LginServlet
 */
//@WebServlet("/LginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String Email=request.getParameter("email");
		String Password=request.getParameter("Password");
		
		String hashedPassword = BCrypt.hashpw(Password, BCrypt.gensalt());

		USER user = new USER(Email, hashedPassword);
		USERDaoImpl member = new USERDaoImpl();

		
		 if (member.userExists(user.getEmail(),user.getPassword())) {
	            // User exists, redirect to home
	            response.sendRedirect("/WebSiteIotCraft/Home.jsp"); 
	        } else {
	            // User does not exist, redirect to sign up form
	            response.sendRedirect("/WebSiteIotCraft/SignUp.jsp");
	        }
	}

}
