<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="Register.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css">
<script src="https://kit.fontawesome.com/fc80cafc2d.js" crossorigin="anonymous"></script>
<title>Sign Up</title>
</head>
<body>

<input type="hidden" id="status" value="<%= request.getAttribute("status") %>">
	
			<div class="container">

					<div class="signup-form">
						<h2 class="form-title">Sign up</h2>
					
						<form method="post" action="register" class="register-form"
							id="register-form">
							<div class="form-group">
								<label for="name"><i class="fa-solid fa-user"></i></label> <input
									type="text" name="name" id="name" placeholder="Username" />
							</div>
							<div class="form-group">
								<label for="email"><i class="fa-solid fa-envelope"></i></label> <input
									type="email" name="email" id="email" placeholder="Email" />
							</div>
							<div class="form-group">
								<label for="pass"><i class="fa-solid fa-lock"></i></label> <input
									type="password" name="pass" id="pass" placeholder="Password" />
							</div>
							<div class="form-group">
								<label for="re-pass"><i class="fa-solid fa-lock"></i></label>
								<input type="password" name="re_pass" id="re_pass"
									placeholder="Confirm password" />
							</div>
							<div class="form-group">
								<label for="contact"><i class="fa-solid fa-phone"></i></label>
								<input type="text" name="contact" id="contact"
									placeholder="Contact no" />
							</div>
							<div class="form-group">
								<input type="checkbox" name="agree-term" id="agree-term"
									class="agree-term" required="true"/> <label for="agree-term"
									class="label-agree-term"><span><span></span></span>I accept and
									agree to all statements in <a href="#" class="term-service">Terms
										of service</a></label>
							</div>
							<div class="form-group form-button">
								<input type="submit" name="signup" id="signup"
									class="form-submit" value="Register" />
							</div>
						</form>
					</div>
					
					
					<div class="signup-image">
						<figure>
							<img src="signup-image.jpg" alt="sing up image">
						</figure>
						<div class="Redirect"><a href="Login.jsp" class="signup-image-link">I am already
							member</a>
							
						</div>
						
					</div>
				</div>
				
				
				<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
				<link rel="stylesheet" href="alert/dist/sweetalert.css">
				
				<script type="text/javascript">
				
				var status= document.getElementById("status").value;
				
				if(status=="success"){
					swal("Congarts","Account Created Sucessfully","success");
				}
				
				</script>
	
</body>
</html>