package users;

import java.io.IOException;

import org.mindrot.jbcrypt.BCrypt;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Myservlet
 */
//@WebServlet("/Myservlet")
public class SignUpServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SignUpServlet() {
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
		
		String Fname=request.getParameter("FirstName");
		String Lname=request.getParameter("LastName");
		String Email=request.getParameter("email");
		String Password=request.getParameter("Password");
		String hashedPassword = BCrypt.hashpw(Password, BCrypt.gensalt());
		
		
		USER user = new USER(Fname, Lname, Email, hashedPassword);
		USERDaoImpl member = new USERDaoImpl();
        if (member.emailExists(user.getEmail())) {
            // If the email exists, redirect to the sign-in page
            response.sendRedirect("/WebSiteIotCraft/SignUpemail.jsp");
        } else {
            // If the email doesn't exist, proceed with user registration
            member.adduser(user);
            // Redirect to the sign-in success page
            response.sendRedirect("/WebSiteIotCraft/SignIn.jsp");
        }
		
	}

}
