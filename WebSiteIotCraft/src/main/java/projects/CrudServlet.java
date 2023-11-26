package projects;

import java.io.IOException;
import java.nio.file.Paths;
import java.util.List;

import jakarta.servlet.RequestDispatcher;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.Part;



@MultipartConfig
public class CrudServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	 private static final String IMAGE_DIR = "C:/Users/pc/git/repository6/WebSiteIotCraft/src/main/webapp/projetimage/";
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CrudServlet() {
        super();
        // TODO Auto-generated constructor stub
    }



	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		    ProjectDaoImpl projectDao = new ProjectDaoImpl();
	        List<Project> project = projectDao.getAll();
	        request.setAttribute("project", project);
	        RequestDispatcher dispatcher = request.getRequestDispatcher("AdminCrud.jsp");
	        dispatcher.forward(request, response);
	        
	        
	       
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 String action = request.getParameter("action");
	        if (action != null) {
	            switch (action) {
	                case "add":
	                    addProject(request, response);
	                    break;
	                case "edit":
	                	updateProject(request, response);
	                    break;
	                case "delete":
	                	deleteProject(request, response);
	                    break;
	                // More cases can be added here for other POST operations
	            }
	        }
	    }

	    private void addProject(HttpServletRequest request, HttpServletResponse response) 
	            throws IOException,ServletException {
	    	    String title = request.getParameter("title");
	    	    String steps = request.getParameter("steps");
	    	    String components = request.getParameter("components");
	    	   
	    	    Part filePart = request.getPart("image");
	            String fileName =Paths.get(filePart.getSubmittedFileName()).getFileName().toString();
	    
	           
	            try {
	                      
	                  	String storagePath = IMAGE_DIR + fileName;

	                      filePart.write(storagePath);	                     	            
	            
	                      } catch (IOException e) {
	                      	  e.printStackTrace(); 
	                      }
	    	    System.out.println("Received Data: Title=" + title + ", Steps=" + steps + ", Components=" + components + ", Image=" + fileName);

	    	    Project project = new Project(title,steps,components,fileName);
	    	    ProjectDaoImpl projectDao=new ProjectDaoImpl();
	    	    projectDao.addProject(project);
	    	 	    	    
	    	    response.sendRedirect("AdminCrud.jsp");
	    	    
	    }

	    private void updateProject(HttpServletRequest request, HttpServletResponse response) 
	            throws IOException {
	    	long id = Long.parseLong(request.getParameter("id"));
	        String title = request.getParameter("title");
	        String steps = request.getParameter("steps");
	        String components = request.getParameter("components");
	        String image = request.getParameter("image");

	        ProjectDaoImpl projectDao = new ProjectDaoImpl();
	        Project updatedProject = new Project(id, title, steps, components, image);
	        projectDao.updateProject(updatedProject);

	        response.sendRedirect("AdminCrud.jsp"); 
	    }
	    

	    private void deleteProject(HttpServletRequest request, HttpServletResponse response) 
	            throws IOException {
	    	long id = Long.parseLong(request.getParameter("id"));
	    	System.out.println("Received ID for deletion: " + id);
	        ProjectDaoImpl projectDao=new ProjectDaoImpl();
	        projectDao.deleteProject(id); 
	        response.sendRedirect("AdminCrud.jsp"); 
	    }

	    
	}