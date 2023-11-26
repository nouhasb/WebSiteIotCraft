<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.util.List" %>
<%@ page import="projects.Project" %>
<%@ page import="projects.ProjectDaoImpl" %>




<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Project page</title>
<link rel="icon" type="image/x-icon" href="/logo">
<link rel="stylesheet" href="admin.css">
<link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css">

</head>
<body>
	<header class="header">
         <div class="icon">
          <img src="logo.png" alt="logo" class="logo">
          <h2 class="title">IotCraft</h2>
         </div>
         
        
         <form action="SearchSer" method="get" class="search">
             <input class="sear" type="text" name="search" placeholder="Search">
             <a href='/SearchSer'><button class="btn" type="submit"><i class="fas fa-search"></i></button></a>
         </form>
         <nav class="navbar">
           <a href="UserProject.jsp" class="butt">Project</a>
           <a href="admin.jsp" class="butt">UserHub</a>
     
           <div class="dropdown">
            <button class="dropbtn">
                <i class="fa fa-user"></i> 
                <i class="fa fa-chevron-down"></i> 
            </button>
            <div class="dropdown-content">
                <a href="#">${sessionScope.username}</a>
                <a href="userProfileadd.jsp">Add a project</a>
                <a href="#">Settings</a>
                <a href="logout">Log out</a>
            </div>
        </div> 
     <script>
    function toggleDropdown() {
        var dropdownContent = document.getElementById("userDropdown");
        if (dropdownContent.style.display === "block") {
            dropdownContent.style.display = "none";
        } else {
            dropdownContent.style.display = "block";
        }
    }
    // Fermer le menu déroulant si l'utilisateur clique en dehors de celui-ci
    window.onclick = function(event) {
        if (!event.target.matches('.dropbtn')) {
            var dropdowns = document.getElementsByClassName("dropdown-content");
            for (var i = 0; i < dropdowns.length; i++) {
                var openDropdown = dropdowns[i];
                if (openDropdown.style.display === "block") {
                    openDropdown.style.display = "none";
                }
            }
        }
    }
    </script>
         </nav>
   </header>
	
 <div class="container">
        <%
           
            
            ProjectDaoImpl projectDao = new ProjectDaoImpl();
	        List<Project> projectList = projectDao.getAll();
	        request.setAttribute("project", projectList);
	       
        %>
  <!-- Button to navigate to the form for adding new projects -->
        <a href="addProject.jsp" class="btn btn-success">Add Project</a>
        <table class="table">
            <thead>
                <tr>
                    
                    <th scope="col">Title</th>
                    <th scope="col">Components</th>
                    <th scope="col">Image</th>
                    <th scope="col">Details</th>
                    <th scope="col">Delete</th>
                    <th scope="col">Edit</th>
                    
                </tr>
            </thead>
            <tbody>
                <%
                    // Get the list from the request attribute
                    if (projectList != null) {
                        for (Project project : projectList) {
                %>
                            <tr>
                                
                                <td><%= project.getTitle() %></td>
                                <td><%= project.getComponents() %></td>
                                <td><img src="projetimage/<%= project.getImage() %>" alt="<%= project.getTitle() %>" style="max-width: 50px; max-height: 50px;"></td>
                                <td><a href="detailsbutton.jsp?id=<%= project.getID() %>" class="btn btn-primary">Details</a></td>
                                <td><form action="CrudServlet" method="post"><input type="hidden" name="action" value="delete"><input type="hidden" name="id" value="<%= project.getID() %>"  ><button type="submit" class="btn btn-danger">Delete</button></form></td>
                                 <td><a href="Editproject.jsp?id=<%= project.getID() %>" class="btn btn-warning">Edit</a></td>
                            </tr>
                <%
                        }
                    }
                %>
            </tbody>
        </table>

      
    </div>


  <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</body>


</body>
</html>