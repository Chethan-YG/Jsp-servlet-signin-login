<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css">
<script src="https://kit.fontawesome.com/fc80cafc2d.js" crossorigin="anonymous"></script>
<link rel="stylesheet" href="Login.css">
<title>Sign In</title>
</head>
<body>
	<input type="hidden" id="status" value="<%= request.getAttribute("status") %>">
	

	<div class="container">

		<div class="signin-image">
			<div class="image">
				<img src="signin-image.jpg" alt="sign up image">
			</div>
			<div class="link">
				<a href="Register.jsp" class="signin-image-link">Create an account</a>
			</div>
		</div>

		<div class="signin-form">
			<h1 class="form-title">Sign In</h1>
			<form method="post" action="Login" class="register-form" id="login-form">
				<div class="form-group">
					<label for="username"> 
						<i class="fa-solid fa-user"></i>
					</label> 
					<input type="text" name="username" id="username" placeholder="Username" />
				</div>
				<div class="form-group">
					<label for="password"> 
						<i class="fa-solid fa-lock"></i>
					</label> 
					<input type="password" name="password" id="password" placeholder="Password" />
				</div>
				<div class="form-group" id="check">
					<input type="checkbox" name="remember-me" id="remember-me" class="agree-term" /> 
					<label for="remember-me" class="label-agree-term"><span><span></span></span>Remember me</label>
				</div>
				<div class="form-button">
					<input type="submit" name="signin" id="signin" value="Log in" />
				</div>
			</form>
			
			<div class="social-login">
				<span class="social-label">Or login with</span>
				<ul class="socials">
					<li><a href="#"><i class="fa-brands fa-facebook" style="color: #2f4eac;"></i></a></li>
					<li><a href="#"><i class="fa-brands fa-twitter" style="color: #3da2f0;"></i></i></a></li>
					<li><a href="#"><i class="fa-brands fa-google" style="color: #d72323;"></i></a></li>
				</ul>
			</div>
		</div>
	</div>
	
	<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
				<link rel="stylesheet" href="alert/dist/sweetalert.css">
				
				<script type="text/javascript">
				
				var status= document.getElementById("status").value;
				
				if(status=="failed"){
					swal("Sorry!","Something went Wrong","error");
				}
				
				</script>


	
</body>
</html>