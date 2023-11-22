package users;

import java.io.IOException;



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
		String Password=request.getParameter("password");
		
		

		USER user = new USER(Email, Password);
		USERDaoImpl member = new USERDaoImpl();

		
		
         if (member.emailExists(user.getEmail())) {
             // Email exists, check password
             if (member.userExists(user.getEmail(),user.getPassword())==true) {
                 // Password is correct, redirect to home
            	 String userName = member.getUserNameByEmail(user.getEmail());
            	 request.getSession().setAttribute("username", userName);
                 response.sendRedirect("/WebSiteIotCraft/Userhome.jsp");
             } else {
                 // Password is incorrect
                 
                 response.sendRedirect("/WebSiteIotCraft/SignInpass.jsp");
             }
         } else {
             // Email does not exist, redirect to sign up
           
             response.sendRedirect("/WebSiteIotCraft/SignUpnotemail.jsp");
         }
	}

}
	