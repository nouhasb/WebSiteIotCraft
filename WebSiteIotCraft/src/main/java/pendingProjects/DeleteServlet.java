package pendingProjects;

import jakarta.servlet.ServletException;

import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;


import java.io.IOException;

/**
 * Servlet implementation class DeleteServlet
 */
public class DeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DeleteServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		long id = Long.parseLong(request.getParameter("id"));
        System.out.println("Received ID for deletion: " + id);
        PendingProjectDaoImpl projectDao = new PendingProjectDaoImpl();
        projectDao.deleteUProject(id);
        response.sendRedirect("admin.jsp");
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 long id = Long.parseLong(request.getParameter("id"));
	        System.out.println("Received ID for deletion: " + id);
	        PendingProjectDaoImpl projectDao = new PendingProjectDaoImpl();
	        projectDao.deleteUProject(id);
	        response.sendRedirect("admin.jsp");
		
	}

	
}
