<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<html>
<head>
	<meta http-equiv="Content-Type" content="text/html"; charset="UTF-8"">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
	<link rel="stylesheet" type="text/css" href='<c:url value="/resources/css/bootstrap.css"/>' />
	<script type="text/javascript" src='<c:url value="/resources/css/bootstrap.js"/>' ></script>
	
	<link rel="stylesheet" type="text/css" href='<c:url value="/resources/css/login.css"/>' />
	<script type="text/javascript" src='<c:url value="/resources/css/login.js"/>' ></script>
	<title>Spring Final Assignment</title>

</head>
<body>

<h1> Spring Final Assignment</h1>
<h3><em>Nguyen Cong Truong</em></h3>
<div class="container">
        <div class="card card-container">
            <!-- <img class="profile-img-card" src="//lh3.googleusercontent.com/-6V8xOA6M7BA/AAAAAAAAAAI/AAAAAAAAAAA/rzlHcD0KYwo/photo.jpg?sz=120" alt="" /> -->
            <img id="profile-img" class="profile-img-card" src="//ssl.gstatic.com/accounts/ui/avatar_2x.png" />
            <p id="profile-name" class="profile-name-card"></p>
            <form class="form-signin">
                <span id="reauth-email" class="reauth-email"></span>
                <input type="email" id="inputEmail" class="form-control" placeholder="User Name" required autofocus>
                <input type="password" id="inputPassword" class="form-control" placeholder="Password" required>
                <div id="remember" class="checkbox">
                    <label>
                        <input type="checkbox" value="remember-me"> I'm Awesome, Remember Me!
                    </label>
                </div>
                <button class="btn btn-lg btn-primary btn-block btn-signin" type="submit">Let's Go!</button>
            </form><!-- /form -->
            <a href="#" class="forgot-password">
                Forgot your password?
            </a>
        </div><!-- /card-container -->
 </div><!-- /container -->
    

</body>
</html>		  