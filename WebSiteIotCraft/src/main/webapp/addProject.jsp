<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Admin pages</title>
<link rel="icon" type="image/x-icon" href="/logo">
<link rel="stylesheet" href="addprojectadmin.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css">
</head>
<body>
	<header class="header">
		<div class="icon">
			<img src="logo.png" alt="logo" class="logo">
			<h2 class="title">IotCraft</h2>
		</div>

        
		<form action="SearchSe" method="get" class="search">
			<input class="sear" type="text" name="search" placeholder="Search">
			<a href='/SearchSe'><button class="btn" type="submit">
					<i class="fas fa-search"></i>
				</button></a>
		</form>
		<nav class="navbar">
			<a href="admin.jsp" class="butt">UserHub</a> 
			<a href="UserProject.jsp" class="butt">Project</a>

		</nav>
		
	</header>
	<section class="sec">
		<div class="container">
			<form action="CrudServlet" method="post" enctype="multipart/form-data" class="signin-form">
				<h2>Add a project</h2>
				<input type="hidden" name="action" value="add">
				<div class="form-group">
					<label for="Title">Project Title:</label> <input type="text"
						id="Title" name="title" placeholder="Title"><br>
				</div>
				<div class="form-group">
					<label for="Steps">Project Steps:</label>
					<textarea id="Steps" name="steps" placeholder="Steps"></textarea>
					<br>
				</div>
				<div class="form-group">
					<label for="Components">Project Components:</label>
					<textarea id="Components" name="components" placeholder="Components"></textarea>
					<br>
				</div>
				
			    <div class="form-group">
                      <label for="image">Project Image:</label>
                       <div class="file-upload-wrapper">
                       <label for="image" id="uploadBtn" class="btn">Choose File</label>
                       <span id="fileChosen">No file chosen</span>
                       <input type="file" id="image" name="image" accept="image/*">
               </div> 
               </div> 


				<button type="submit" class="form-submit">Submit</button>
			</form>

		</div>
	</section>

<script>
document.getElementById('image').onchange = function() {
    var fileName = this.value.split('\\').pop();
    document.getElementById('fileChosen').textContent = fileName || 'No file chosen';
};

</script>
</body>
</html>