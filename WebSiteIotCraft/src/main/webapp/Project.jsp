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
<link rel="stylesheet" href="projetpage.css">
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
			<a href="Home.jsp" class="butt">Home</a> <a href="url" class="butt" >Project</a>
			<a href="SignUp.jsp" class="butt">Sign up</a> 
			<a href="SignIn.jsp" class="butt">Sign in</a>
		</nav>
	</header>
	
	
<div class="container">
	<%
	    ProjectDaoImpl projectDao = new ProjectDaoImpl();
        List<Project> projectList = projectDao.getAll(); // Assume this method exists and returns a List of Project objects
        request.setAttribute("projects", projectList);
    %>

	 <%
    // Get the list from the request attribute
    if (projectList != null) {
        for (Project project : projectList) {
%>
            <div class="card" style="width: 18rem;">
                <img class="card-img-top" src="projetimage/<%= project.getImage() %>" alt="<%= project.getTitle() %>">
                <div class="card-body">
                    <h5 class="card-title"><%= project.getTitle() %></h5>
                    <p class="card-text"><%= project.getComponents() %></p>
                    <a href="detailsbutton.jsp?id=<%= project.getID() %>" class="btn btn-primary">Details</a>
                </div>
            </div>
<%
        }
    }
%>
</div>

  <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</body>


</body>
</html>