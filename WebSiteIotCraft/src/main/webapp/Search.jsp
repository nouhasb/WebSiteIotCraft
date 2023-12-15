<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.util.List" %>
<%@ page import="projects.Project" %>
<%@ page import="projects.ProjectDaoImpl" %>
<%@ page import="users.USERDaoImpl" %>




<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Project page</title>
<link rel="icon" type="image/x-icon" href="/logo">
<link rel="stylesheet" href="projetpage.css">
<link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
</head>
<body>
<%
Boolean loggedIn = (Boolean) request.getSession().getAttribute("loggedIn");
if (loggedIn == null || loggedIn == false) {
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
			<a href="Home.jsp" class="butt">Home</a> <a href="url" class="butt" >Project</a>
			<a href="SignUp.jsp" class="butt">Sign up</a> <a href="SignIn.jsp"
				class="butt">Sign in</a>
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
	
	
<div class="container">
    <%
        String searchParam = request.getParameter("search");
        ProjectDaoImpl projectDao = new ProjectDaoImpl();
        List<Project> projectList = projectDao.getAll(searchParam);

        // Check if the projectList is not null and not empty
        if (projectList != null && !projectList.isEmpty()) {
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
        } else {
            // Display a default card with a placeholder image
    %>
            <div class="card" style="width: 18rem;">
                <img class="card-img-top" src="projetimage/noresult.png" alt="Placeholder Image" >
                <div class="card-body" style=" text-align: center;background-color: transparent">
                    <h4 class="card-title"  style="color:red" >No Results Found !!</h4>
                    
                </div>
            </div>
    <%
        }
    %>
</div>


  <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</body>


</body>
</html>