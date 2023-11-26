<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="users.USERDaoImpl" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Insert title here</title>
<link rel="icon" type="image/x-icon" href="/logo">
<link rel="stylesheet" href="userpage.css">
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
           <a href="Home.jsp" class="butt">Home</a>
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
        var dropdownContent = document.getElementById("userDropdown");
        var timer; // Déclarer une variable de minuterie

        // Fonction pour afficher le menu déroulant
        function showDropdown() {
            dropdownContent.style.display = "block";
        }

        // Fonction pour masquer le menu déroulant
        function hideDropdown() {
            dropdownContent.style.display = "none";
        }

        // Ajouter un gestionnaire d'événements au bouton du menu déroulant
        document.querySelector(".dropbtn").addEventListener("click", function() {
            clearTimeout(timer); // Effacer la minuterie précédente (si elle existe)
            showDropdown();
        });

        // Fermer le menu déroulant si l'utilisateur clique en dehors de celui-ci
        window.addEventListener("click", function(event) {
            if (!event.target.matches('.dropbtn')) {
                hideDropdown();
            }
        });

        // Ajouter un délai pour masquer le menu déroulant après 5 secondes (par exemple)
        dropdownContent.addEventListener("mouseleave", function() {
            timer = setTimeout(hideDropdown, 10000); // Masquer après 5 secondes (5000 millisecondes)
        });
    </script>
         </nav>
   </header>
 <section class="sec" >
  <div class="explaine">
    <div ><p>Explore the world </p>
           <p>of IOT</p></div>
     
  </div>
 </section>
 <script>
        // Ajoutez un gestionnaire d'événements au bouton du menu déroulant
        document.querySelector(".dropbtn").addEventListener("click", function() {
            var dropdownContent = document.querySelector(".dropdown-content");
            if (dropdownContent.style.display === "block") {
                dropdownContent.style.display = "none";
            } else {
                dropdownContent.style.display = "block";
            }
        });
    </script>
   
</body>
</html>