<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Sign in form</title>
<link rel="icon" type="image/x-icon" href="/logo">
<link rel="stylesheet" href="Sign.css">
<link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css">
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
           <a href="Home.jsp" class="butt">Home</a>
           <a href="Project.jsp" class="butt">Project</a>
           <a href="SignUp.jsp" class="butt">Sign up</a>
           <a href="SignIn.jsp" class="butt">Sign in</a>
         </nav>
   </header>
   <section>
<div class="container">
        <form method="post" action="log"  class="signin-form">
            <h2>Sign In</h2>
            <div class="form-group">
                <label for="email">Email:</label>
                <input type="email" id="email" name="email" placeholder=" your email" required><i class='bx bx-envelope' ></i>
            </div>
            <div class="form-group">
                <label for="password">Password:</label>
                <input type="password" id="password" name="password" placeholder=" your password" required><i class='bx bx-lock-alt' ></i>
            </div>
            <div class="remeber-forgot">
              <a href="">forgot you password?</a>
            </div>
            <button type="submit" class="form-submit">Sumbit</button>
        </form>
    </div>
   </section>
   
</body>
</html>
