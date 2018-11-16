<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page errorPage="error.jsp" %>  
    
    <% 
    response.setHeader( "Pragma", "no-cache" );
    response.setHeader( "Cache-Control", "no-cache" );
    response.setDateHeader( "Expires", 0 );
if(session.getAttribute("username")!= null){
	String name= (String) session.getAttribute("username");
	System.out.println(name);
}
else{
	response.sendRedirect("Login.jsp");
}



%>  
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
body {
    font-family: Arial, Helvetica, sans-serif;
background-color: teal;}

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
input[type=text], input[type=password],input[type=number] {
    width: 100%;
    padding: 15px;
    margin: 5px 0 22px 0;
    display: inline-block;
    border: none;
    background: #f1f1f1;
}

input[type=text]:focus, input[type=password]:focus, input[type=number]:focus,input[type=radio]:focus {
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
  
   
   
    if(!isNaN(document.F1.prodname.value))
   {
       alert("product field  must  be  char's & can't be null")
	   document.F1.prodname.value=""
	   document.F1.prodname.focus()
	   return false
   }
   
	 if(!isNaN(document.F1.paymode.value))
   {
       alert("Payment Mode Can only be PAYTM OR COD ")
	   document.F1.statename.value=""
	   document.F1.statename.focus()
	   return false
   }
	
   return true   
   }
</SCRIPT>


</head>
<body>


<form name=F1 onSubmit="return dil(this)" action="OrderServlet" method="post">
<div class="container">
    <h1>Order</h1>
    <p>Please fill in this form to order.</p>
    <hr>
<label for="username"><b>USERNAME</b></label>
    <input type="text" placeholder="Enter Username" name="username" required>
    <br>
    PRODUCT CODE:  <br><br><SELECT NAME="prodcode"> 
									<option value=a > PROD001 
									<option value=b > PROD002
									<option value=c > PROD003
									<option value=d > PROD003
									
									</SELECT> 
									</br></br>
    
    <label for="prodname"><b>Product Name</b></label>
    <input type="text" placeholder="Enter Product Name" name="prodname" required>
    
    <label for="quantity"><b>Quantity</b></label>
    <input type="number" placeholder="Enter Quantity" name="quantity" required>
    </br></br>
    
    PAYMENT MODE:<br/>
PAYTM<input type="radio" name="paymode" value="paytm"> COD<input type="radio" name="paymode" value="cod"/><br/><br/>
   
    <button type="submit" class="registerbtn">Place Order</button>
  </div>
  
  <div class="container signin">
    <p><a href="LogoutServlet">Logout</a>|  
</p>
  </div>
</form>





</body>
</html>