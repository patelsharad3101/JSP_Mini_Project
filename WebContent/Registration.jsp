<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page errorPage="error.jsp" %>  
   
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Registration</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script href="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css" integrity="sha384-B4dIYHKNBt8Bc12p+WXckhzcICo0wtJAoU8YZTY5qE0Id1GSseTk6S+L3BlXeVIU" crossorigin="anonymous"><style>
body {
    font-family: Arial, Helvetica, sans-serif;
    background-color: teal;
}

* {
    box-sizing: border-box;
}

/* Add padding to containers */
.container {
width: 50%;
margin: 50px 330px;
    padding: 16px;
    background-color: white;
}

/* Full-width input fields */
input[type=text], input[type=password],input[type=country] {
    width: 100%;
    padding: 15px;
    margin: 5px 0 22px 0;
    display: inline-block;
    border: none;
    background: #f1f1f1;
}

input[type=text]:focus, input[type=password]:focus, input[type=country]:focus {
    background-color: #ddd;
    outline: none;
}

/* Overwrite default styles of hr */
hr {
    border: 1px solid #f1f1f1;
    margin-bottom: 25px;
}

/* Set a style for the submit button */
.registerbtn {
    background-color: #4CAF50;
    color: white;
    padding: 16px 20px;
    margin: 8px 0;
    border: none;
    cursor: pointer;
    width: 100%;
    opacity: 0.9;
}

.registerbtn:hover {
    opacity: 1;
}

/* Add a blue text color to links */
a {
    color: dodgerblue;
}

/* Set a grey background color and center the text of the "sign in" section */
.signin {
    background-color: #f1f1f1;
    text-align: center;
}
</style>
<SCRIPT LANGUAGE="JavaScript">
function dil(form)
{
   
 if(!isNaN(document.F1.username.value))
   {
       alert("User Name  must  be  char's & can't be null")
	   document.F1.username.value=""
	   document.F1.username.focus()
	   return false
   }
  
    if(document.F1.password.value!=document.F1.repassword.value)
    {
	   alert("Check Confirm PWD"); 
	   document.F1.repassword.value=""
	   document.F1.repassword.focus()	
	   return false
	}
	
	 
   
    if(!isNaN(document.F1.adderess.value))
   {
       alert("adderess field  must  be  char's & can't be null")
	   document.F1.adderess.value=""
	   document.F1.adderess.focus()
	   return false
   }
   if(!isNaN(document.F1.cityname.value))
   {
       alert("cityname field  must  be  char's & can't be null")
	   document.F1.cityname.value=""
	   document.F1.cityname.focus()
	   return false
   }
	
	 if(!isNaN(document.F1.statename.value))
   {
       alert("statename field  must  be  char's & can't be null")
	   document.F1.statename.value=""
	   document.F1.statename.focus()
	   return false
   }
	
	if(!isNaN(document.F1.phone.value))
   {
	   if(document.F1.phone.value >9999999999 )
	   {
		 alert("Wrong Phone NUmber")
		 document.F1.phone.value=""
		 document.F1.phone.focus()
         return false   
	   }
   }
   else
   {
       alert("This  field  must  be  number")
	   document.F1.phone.value=""
	   return false
   }
   return true   
   }
</SCRIPT>


</head>
<body>
<form name=F1 onSubmit="return dil(this)" action="RegistrationServlet" method="post">
<div class="container">
    <h1>Register</h1>
    <p>Please fill in this form to create an account.</p>
    <hr>
    
       <i class="fa fa-user fa-fw" aria-hidden="true"></i>&nbsp;
<label for="username"><b>USERNAME</b></label>
    <input type="text" placeholder="Enter Username" name="username" required>
    
    <label for="psw"><b>Password</b></label>
    <input type="password" placeholder="Enter Password" name="password" required>
           <i class="fa fa-address-book fa-fw" aria-hidden="true"></i>&nbsp;
   
    <label for="address"><b>Address</b></label>
    <input type="text" placeholder="Enter Your Address" name="address" required>
    
    <label for="cityname"><b>Cityname</b></label>
    <input type="text" placeholder="Enter Your City" name="cityname" required>
    
    <label for="statename"><b>Statename</b></label>
    <input type="text" placeholder="Enter Your State" name="statename" required>

    <label for="country"><b>Country Name</b></label></br></br>
    <SELECT NAME="country"> 
									<option value=a > America 
									<option value=b > Bangladesh
									<option value=c1 > China
									<option value=c2 > Canada
									<option value=g > Germany 
									<option value=h > Holland
									<option value=i > India
									<option value=a > Malasia
									<option value=p > Polland
									<option value=r > Russia
									<option value=u>  UK 
									</SELECT> 
									</br> </br>
									           <i class="fa fa-mobile fa-fw" aria-hidden="true"></i>&nbsp;
     <label for="mobile"><b>Mobile</b></label>
    <input type="text" placeholder="Enter Mobile NUmber" name="phone" required>
    
    									           <i class="fa fa-envelope fa-fw" aria-hidden="true"></i>&nbsp;
    
    <label for="email"><b>Email</b></label>
    <input type="text" placeholder="Enter Email" name="email" required>

   
    <p>By creating an account you agree to our <a href="#">Terms & Privacy</a>.</p>

    <button type="submit" class="registerbtn">Register</button>
  </div>
  
  <div class="container signin">
    <p>Already have an account? <a href="Login.jsp">Sign in</a>.</p>
  </div>
</form>


</body>
</html>