<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<% 
response.setHeader( "Pragma", "no-cache" );
response.setHeader( "Cache-Control", "no-cache" );
response.setDateHeader( "Expires", 0 );
if((String) session.getAttribute("username")!= null){
	String name= (String) session.getAttribute("username");
}
else{
	response.sendRedirect("Index.jsp");
}

%>    
<%@ page errorPage="error.jsp" %>  
  
        
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Confirmation</title>
<style type="text/css">
.container {
    font-family: Arial, Helvetica, sans-serif;
    text-align: center;
    background-color: teal;
}</style>
</head>
<body>
<div class="container">
<h1 >Congratulations...!!!</h1>
<p>Your Order Has Been Confirmed</p>

 <div class="container signin">
    <p><a href="LogoutServlet">Logout</a>.</p>
  </div>
</div>
</body>
</html>