package pendingProjects;

import jakarta.servlet.ServletException;


import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import projects.Project;
import projects.ProjectDaoImpl;

/**
 * Servlet implementation class ApproveProject
 */
public class ApproveProject extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ApproveProject() {
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
		long projectId = Long.parseLong(request.getParameter("projectId"));
		PendingProjectDaoImpl pendingProjectDao = new PendingProjectDaoImpl();
		PendingProject pendingProject = pendingProjectDao.getOne(projectId);
		
		
		  String title = pendingProject.getTitlep();
          String components = pendingProject.getComponentsp();
          String steps = pendingProject.getStepsp();
          String image = pendingProject.getImagep();
          
          
          ProjectDaoImpl projectDao = new ProjectDaoImpl();
          Project project = new Project(title,steps,components,image);
          
          projectDao.addProject(project);
          
          pendingProjectDao.deleteUProject(projectId);
          
          response.sendRedirect("admin.jsp");
	}

}
