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
</head>
<body>
   <header class="header">
         <div class="icon">
          <img src="logo.png" alt="logo" class="logo">
          <h2 class="title">IotCraft</h2>
         </div>
         
        
         <div class="search">
             <input class="sear" type="text" placeholder="Search">
             <a href="#"><button class="btn" type="submit"><i class='bx bx-search'></i></button></a>
         </div>
         <nav class="navbar">
           <a href="home.jsp" class="butt">Home</a>
           <a href="url" class="butt">Project</a>
           <a href="Signup.jsp" class="butt">Sign up</a>
           <a href="registration.jsp" class="butt">Sign in</a>
         </nav>
   </header>
   <section>
<div class="container">
        <form method="post" action="login"  class="signin-form">
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
