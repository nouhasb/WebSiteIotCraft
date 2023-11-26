<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Insert title here</title>
<link rel="icon" type="image/x-icon" href="/logo">
<link rel="stylesheet" href="userprofile.css">
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
					var dropdownContent = document
							.getElementById("userDropdown");
					if (dropdownContent.style.display === "block") {
						dropdownContent.style.display = "none";
					} else {
						dropdownContent.style.display = "block";
					}
				}
				// Fermer le menu déroulant si l'utilisateur clique en dehors de celui-ci
				window.onclick = function(event) {
					if (!event.target.matches('.dropbtn')) {
						var dropdowns = document
								.getElementsByClassName("dropdown-content");
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
	<section class="sec">
		<div class="container">
			<form action="Adding" method="post" enctype="multipart/form-data" class="signin-form">
				<h2>Add a project</h2>
				<div class="form-group">
					<label for="projectTitle">Project Title:</label> <input type="text"
						id="projectTitle" name="projectTitle" placeholder="Title"><br>
				</div>
				<div class="form-group">
					<label for="projectSteps">Project Steps:</label>
					<textarea id="projectSteps" name="projectSteps" placeholder="Steps"></textarea>
					<br>
				</div>
				<div class="form-group">
					<label for="projectComponents">Project Components:</label>
					<textarea id="projectComponents" name="projectComponents"
						placeholder="Components"></textarea>
					<br>
				</div>
				<div class="form-group">
    <label for="projectImage">Project Image:</label>
    <div class="file-upload-wrapper">
        <label for="projectImage" id="uploadBtn" class="btn">Choose File</label>
        <span id="fileChosen">No file chosen</span>
        <input type="file" id="projectImage" name="projectImage" accept="image/*">
    </div>
</div>

				<button type="submit" class="form-submit">Submit</button>
			</form>

		</div>
	</section>

<script>
document.getElementById('projectImage').onchange = function() {
    var fileName = this.value.split('\\').pop();
    document.getElementById('fileChosen').textContent = fileName || 'No file chosen';
};

</script>
</body>
</html>