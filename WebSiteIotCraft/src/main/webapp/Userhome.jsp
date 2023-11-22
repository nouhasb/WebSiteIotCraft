<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Insert title here</title>
<link rel="icon" type="image/x-icon" href="/logo">
<link rel="stylesheet" href="userhome.css">
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
           <a href="url" class="butt">Home</a>
           <a href="url" class="butt">Project</a>
     
           <div class="dropdown">
            <button class="dropbtn">
                <i class="fa fa-user"></i> <!-- Icône d'utilisateur -->
                <i class="fa fa-chevron-down"></i> <!-- Icône de flèche vers le bas -->
            </button>
            <div class="dropdown-content">
                <a href="#">${sessionScope.username}</a>
                <a href="#">My profile</a>
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
 <section class="sec" >
  <div class="explaine">
    <div ><p>Explore the world </p>
           <p>of IOT</p></div>
     
  </div>
 </section>
   
   
</body>
</html>