package pendingProjects;
import java.io.IOException;
import java.nio.file.Paths;




import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.Part;


@MultipartConfig
public class Addprsevlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    private static final String IMAGE_DIR = "C:/Users/pc/git/repository6/WebSiteIotCraft/src/main/webapp/uploads/";


    public Addprsevlet() {
        super();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.getWriter().append("Served at: ").append(request.getContextPath());
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    	
    	   
        String projectTitle = request.getParameter("projectTitle");
        String projectSteps = request.getParameter("projectSteps");
        String projectComponents = request.getParameter("projectComponents");
        
        Part filePart = request.getPart("projectImage");
        String fileName =Paths.get(filePart.getSubmittedFileName()).getFileName().toString();
        
  try {
            
        	String storagePath = IMAGE_DIR + fileName;

            filePart.write(storagePath);
           
  
  
            } catch (IOException e) {
            	  e.printStackTrace(); 
            }

    	
         PendingProject proj = new PendingProject(projectTitle, projectSteps, projectComponents, fileName);
         PendingProjectDaoImpl member = new PendingProjectDaoImpl();
         member.addproject(proj);

                        // Redirect to a success page or do further processing
         response.sendRedirect("/WebSiteIotCraft/Userhome.jsp");
    }}         