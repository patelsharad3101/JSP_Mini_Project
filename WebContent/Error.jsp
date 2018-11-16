<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page isErrorPage="true" %>  

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Error</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
body, html {
    height: 100%;
    margin: 0;
}

.bgimg {
    background-image: url('image/error.png');
    height: 100%;
    background-position: center;
    background-size: cover;
    position: relative;
    color: white;
    font-family: "Courier New", Courier, monospace;
    font-size: 25px;
}

.topleft {
    position: absolute;
    top: 0;
    left: 16px;
}

.bottomleft {
    position: absolute;
    bottom: 0;
    left: 16px;
}

.middle {
    position: absolute;
    top: 50%;
    left: 50%;
    transform: translate(-50%, -50%);
    text-align: center;
}

hr {
    margin: auto;
    width: 40%;
}
</style>
</head>
<body>
  <div class="bgimg">
  <div class="topleft">
    <p><i class="fa fa-warning" style="font-size:48px;color:red"></i>
    </p>
  </div>
  <div class="middle">
<h3>Sorry an Error occured!</h3>  
    <hr>
    <p>When Nothing Goes Right...</p></br>
    <p>GO <a href="Index.jsp"><i class="fa fa-home fa-fw" aria-hidden="true"></a></i></p>
  </div>
  <div class="bottomleft">
    <p>Bye.</p>
  </div>
</div>
</body>
</html>