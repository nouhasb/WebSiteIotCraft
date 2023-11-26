<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="projects.Project" %>
<%@ page import="projects.ProjectDaoImpl" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="addprojectadmin.css">
<title>Insert title here</title>
</head>
<body>
</head>
<body>
<header class="header">
		<div class="icon">
			<img src="logo.png" alt="logo" class="logo">
			<h2 class="title">IotCraft</h2>
		</div>

        
		<form action="SearchSe" method="get" class="search">
			<input class="sear" type="text" name="search" placeholder="Search">
			<a href='/SearchSe'><button class="btn" type="submit">
					<i class="fas fa-search"></i>
				</button></a>
		</form>
		<nav class="navbar">
			<a href="Userhome.jsp" class="butt">Home</a> 
			<a href="UserProject.jsp" class="butt">Project</a>

		</nav>
		
	</header>
	
		<%

		long id = Long.parseLong(request.getParameter("id"));

		// Retrieve the project using the 'id'
		ProjectDaoImpl projectDao = new ProjectDaoImpl();
		Project project = projectDao.getOne(id);

		// Set the project as an attribute
		request.setAttribute("project", project);
        %>
 <section class="sec">
	<div class="container">
    
    <form action="CrudServlet" method="post"  class="signin-form">
    <h2>Edit Project</h2>
        <input type="hidden" name="action" value="edit">
        <input type="hidden" name="id" value="<%= project.getID() %>">
        <div class="form-group">
        <label for="title">Title:</label>
        <input type="text" id="title" name="title" value="<%= project.getTitle() %>"><br>
         </div>
        <div class="form-group">
        <label for="steps">Steps:</label>
        <textarea id="steps" name="steps"><%= project.getSteps() %></textarea><br>
         </div>
        <div class="form-group">
        <label for="components">Components:</label>
        <textarea id="components" name="components"><%= project.getComponents() %></textarea><br>
         </div>
        <div class="form-group">
        <label for="image">Image:</label>
        <input type="text" id="image" name="image" value="<%= project.getImage() %>"><br>
        </div>
        <button type="submit" class="form-submit">Submit</button>
         
    </form>
    </div>
	</section>
    
</body>
</html>
