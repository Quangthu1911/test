<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<div class="container">
	    <div class="row">
	        <div class="col-sm-6 col-md-4 ">
	            <div class="account-wall">
	                <img class="img" src="images/cat.jpg"
	                    alt="">
	                <form class="signin" action="Login">
	                <input type="text" class="control" placeholder="Name" name="name" required autofocus>
	                <input type="password" class="control" placeholder="Password" name="pass" required>
	                <input type="submit" class="control" value="Login">
	                
	                </form>
	                 <li><a href="index">come back</a></li>
	            </div>
	           
	        </div>
	    </div>
	</div>
</body>
</html>