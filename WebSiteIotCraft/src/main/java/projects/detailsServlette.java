package projects;

import java.io.IOException;

import jakarta.servlet.ServletException;

import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class detailsServlette
 */
//@WebServlet("/detailsServlette")
public class detailsServlette extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public detailsServlette() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		    long projectId = Long.parseLong(request.getParameter("id"));

	        
		    ProjectDaoImpl projectdao = new ProjectDaoImpl();
            Project project = projectdao.getOne(projectId);

	        
	        request.setAttribute("project", project);

	        
	        
	        request.getRequestDispatcher("detailsbutton.jsp").forward(request, response);

	        
}

	

	

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
