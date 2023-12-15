<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.util.List" %>
<%@ page import="pendingProjects.PendingProject" %>
<%@ page import="pendingProjects.PendingProjectDaoImpl" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Admin Dashboard</title>
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
         
        
         <form action="SearchSe" method="get" class="search">
             <input class="sear" type="text" name="search" placeholder="Search">
             <a href='/SearchSe'><button class="btn" type="submit"><i class="fas fa-search"></i></button></a>
         </form>
         <nav class="navbar">
           <a href="UserProject.jsp" class="butt">Project</a>
           <a href="AdminCrud.jsp" class="butt">PlanHub</a>
     
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
PendingProjectDaoImpl projectDao = new PendingProjectDaoImpl();
List<PendingProject> pendingProjectsList = projectDao.getAllp();
request.setAttribute("projectsp", pendingProjectsList);
%>
<table class="table">
    <thead>
        <tr>
            <th>Title</th>
            <th>Components</th>
            <th>Steps</th>
            <th>Image</th>
            <th>Approve</th>
            <th>Delete</th>
        </tr>
    </thead>
    <tbody>
    <% for(PendingProject project : pendingProjectsList) { %>
        <tr>
            <td><%= project.getTitlep() %></td>
            <td><%= project.getComponentsp() %></td>
            <td><%= project.getStepsp() %></td>
            <td>
                <% if(project.getImagep() != null && !project.getImagep().isEmpty()) { %>
                     <img src="projetimage/<%= project.getImagep() %>" alt="Project Image" style="max-width: 60px; max-height: 60px;" />
                <% } else { %>
                    No Image
                <% } %>
            </td>
            <td>
                <form action="Approve" method="post">
                    <input type="hidden" name="projectId" value="<%= project.getIDP() %>" />
                    <button type="submit" class="btn btn-primary">Approve</button>
                </form>
            </td>
            <td>
                <form action="DeleteServ" method="get"  >
                    <input type="hidden" name="id" value="<%= project.getIDP() %>" />
                   <button type="submit" class="btn btn-danger">Delete</button>
                </form>
            </td>
        </tr>
    <% } %>
    </tbody>
</table>
</div>
</body>
</html>
