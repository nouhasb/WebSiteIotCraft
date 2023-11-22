<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.util.List" %>
<%@ page import="projects.Project" %>
<%@ page import="projects.ProjectDaoImpl" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<!DOCTYPE html>
<html>
<head>
    <!-- Include your CSS and other necessary headers -->
    <link rel="stylesheet" href="details.css">
    <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
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
           <a href="home.jsp" class="butt">Home</a>
           <a href="url" class="butt">Project</a>
           <a href="Signup.jsp" class="butt">Sign up</a>
           <a href="registration.jsp" class="butt">Sign in</a>
         </nav>
   </header>
         <% 
         String idParam = request.getParameter("id");
         System.out.println("ID Parameter: " + idParam); // Add this line for debugging
         if (idParam != null && !idParam.isEmpty()) {
             long projectId = Long.parseLong(idParam);
             System.out.println("Parsed Project ID: " + projectId); // Add this line for debugging
             ProjectDaoImpl projectdao = new ProjectDaoImpl();
             Project project = projectdao.getOne(projectId);
            %>

            <div class="content">
                <h2 ><%= project.getTitle() %></h2>

                <div class="imgg">
                    <img src="projetimage/<%= project.getImage() %>" alt="<%= project.getTitle() %>" height=300px>
                </div>
                <div class="txt">
                <h3 >Components:</h3>
                <p><%= project.getComponents() %></p>

                <h3>Steps :</h3>
                <p><%= project.getSteps() %></p>
                </div>
            </div>

            <% }%>

</body>
</html>
