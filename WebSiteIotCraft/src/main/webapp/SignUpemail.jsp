<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Sign up form</title>
<link rel="icon" type="image/x-icon" href="/logo">
<link rel="stylesheet" href="emailexist.css">
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
           <a href="login.jsp" class="butt">Sign up</a>
           <a href="Signin.jsp" class="butt">Sign in</a>
         </nav>
   </header>
   <section>
<div class="container">
        <form method="post" action="Myservlet" class="signin-form">
            <h2>Sign Up</h2>
            <div class="form-group">
                <label for="First Name">First Name:</label>
                <input type="text" id="First Name" name="FirstName" placeholder=" your first name" required><i class='bx bx-user'></i>
            </div>
            <div class="form-group">
                <label for="Last Name">Last Name:</label>
                <input type="text" id="Last Name" name="LastName" placeholder="your last name"  required><i class='bx bx-user'></i>
            </div>
            <div class="form-group">
                <label for="email">Email:</label>
                <input type="email" id="email" name="email" placeholder=" your email"  required><i class='bx bx-envelope' ></i>
            </div>
            <div class="form-group">
                <label for="Password">Password:</label>
                <input type="password" id="Password" name="Password" placeholder=" your password" required><i class='bx bx-lock-alt' ></i>
            </div>
            
            <div class="email-exist">
                <p >Email already exists!! Try again</p>
            </div>
            <button type="submit" class="form-submit">Submit</button>
        </form>
    </div>
   </section>
   
</body>
</html>