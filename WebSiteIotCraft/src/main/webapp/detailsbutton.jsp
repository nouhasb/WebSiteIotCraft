<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.util.List" %>
<%@ page import="projects.Project" %>
<%@ page import="projects.ProjectDaoImpl" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<!DOCTYPE html>
<html>
<head>
    <!-- Include your CSS and other necessary headers -->
    <link rel="stylesheet" href="detai.css">
    <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css">
</head>
<body> 
<%
Boolean loggedIn = (Boolean) request.getSession().getAttribute("loggedIn");
if (loggedIn==false) {
    // Display header for users who are not logged in
%>
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
           <a href="Home.jsp" class="butt">Home</a>
           <a href="Project.jsp" class="butt">Project</a>
           <a href="SignUp.jsp" class="butt">Sign up</a>
           <a href="SignIn.jsp" class="butt">Sign in</a>
         </nav>
   </header>
   <%
} else {
    // Display header for logged-in users
%>

<%
String isAdmin = (String) session.getAttribute("isAdmin");
if(isAdmin.equals("false")) {
%>	
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
           <a href="Userhome.jsp" class="butt">Home</a>
           <a href="UserProject.jsp" class="butt">Project</a>
     
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
   
<%
} else {
%>
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
           <a href="AdminCrud.jsp" class="butt">PlanHub</a>
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
   
<%
}
%>
   
<%
}
%>
   
   
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
