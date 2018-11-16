<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page errorPage="error.jsp" %>  
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style> 
body {
    background-image: url("image/paper.gif");
    background-repeat: repeat;
    padding: 15px;
}
</style>


</head>
<body>
<a href="Index.jsp">LOGOUT</a> </br>
</br>
<form action="DisplayCustomerServlet" method="post">
<input class="button" type="submit" value= "DISPLAY CUSTOMER">
</form> </br></br>
<form action="DisplayOrderServlet" method="post">
<input class="button" type="submit" value= "DISPLAY ORDER">
</form>
</body>
</html>