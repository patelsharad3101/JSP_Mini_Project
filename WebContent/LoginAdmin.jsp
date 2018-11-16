<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page errorPage="error.jsp" %>  
   
<!DOCTYPE html>
<html lang="en">
<head>
	<title>Login V4</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->	
	<link rel="icon" type="image/png" href="LoginCSS/images/icons/favicon.ico"/>
<!--===============================================================================================-->
<!-- 	<link rel="stylesheet" type="text/css" href="vendor/bootstrap/css/bootstrap.min.css">
 --><!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="LoginCSS/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="LoginCSS/fonts/iconic/css/material-design-iconic-font.min.css">
<!--===============================================================================================-->
<!-- 	<link rel="stylesheet" type="text/css" href="vendor/animate/animate.css">
 --><!--===============================================================================================-->	
<!-- 	<link rel="stylesheet" type="text/css" href="vendor/css-hamburgers/hamburgers.min.css">
 --><!--===============================================================================================-->
<!-- 	<link rel="stylesheet" type="text/css" href="vendor/animsition/css/animsition.min.css">
 --><!--===============================================================================================-->
<!-- 	<link rel="stylesheet" type="text/css" href="vendor/select2/select2.min.css">
 --><!--===============================================================================================-->	
<!-- 	<link rel="stylesheet" type="text/css" href="vendor/daterangepicker/daterangepicker.css">
 --><!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="LoginCSS/css/util.css">
	<link rel="stylesheet" type="text/css" href="LoginCSS/css/main.css">
<!--===============================================================================================-->
<SCRIPT LANGUAGE="JavaScript">
function dil(form)
{
  
 if(!isNaN(document.F2.username.value))
   {
       alert("User Name  must  be  char's & can't be null")
	   document.F2.username.value=""
	   document.F2.username.focus()
	   return false
   }
  
    if(document.F2.password.value!=document.F2.repassword.value)
    {
	   alert("Check Confirm PWD"); 
	   document.F2.repassword.value=""
	   document.F2.repassword.focus()	
	   return false
	}
    return true  
}
</script>
</head>
<body>
	
	<div class="limiter">
		<div class="container-login100" style="background-image: url('LoginCSS/images/bg-01.jpg');">
			
			<div class="wrap-login100 p-l-55 p-r-55 p-t-65 p-b-54">
				<form class="login100-form validate-form"name=F2 onSubmit="return dil(this)" action="LoginAdminServlet" method="post" >
					<span class="login100-form-title p-b-49">
						Login Admin
					</span>

					<div class="wrap-input100 validate-input m-b-23" data-validate = "Username is reauired">
						<span class="label-input100">Username</span>
						<input class="input100" type="text" name="username" placeholder="Type your username">
						<span class="focus-input100" data-symbol="&#xf206;"></span>
					</div>

					<div class="wrap-input100 validate-input" data-validate="Password is required">
						<span class="label-input100">Password</span>
						<input class="input100" type="password" name="password" placeholder="Type your password">
						<span class="focus-input100" data-symbol="&#xf190;"></span>
					</div>
					
					<div class="text-right p-t-8 p-b-31">
						<a href="#">
							Forgot password?
						</a>
					</div>
					
					<div class="container-login100-form-btn">
						<div class="wrap-login100-form-btn">
							<div class="login100-form-bgbtn"></div>
							<button class="login100-form-btn" type="submit">
								Login
							</button>
						</div>
					</div>

					
				</form>
			</div>
		</div>
	</div>
	

	<div id="dropDownSelect1"></div>
	

<!--===============================================================================================-->
	<script src="LoginCSS/js/main.js"></script>

</body>
</html>