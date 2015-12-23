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
	
	<link rel="stylesheet" type="text/css" href='<c:url value="/resources/css/studentInfo.css"/>' />
	<script type="text/javascript" src='<c:url value="/resources/css/studentInfo.js"/>' ></script>
	<title>Spring Final Assignment</title>

</head>
<body>

<div class="container">
    <div class="row col-md-6 col-md-offset-2 custyle">
    <table class="table table-striped custab">
    
    <thead>
    <tr>
    	<th colspan="4">
    	<p>Full Name:${student.firstName} ${student.lastName}</p>
    	<p>Address:</p>
    	<p>Age:${student.age}</p>
    	<p>Sex:${student.sex}</p>
    	</th>
    </tr>
    <a href="#" class="btn btn-primary btn-xs pull-right"><b>+</b> Add new Subject</a>
        
    </thead>
    <tr>
            <th>No</th>
            <th>Subject</th>
            <th>Score</th>
            <th class="text-center">Action</th>
    </tr>
    
	<c:forEach var="score" items="${scores}"> 
            <tr>
                <td>${score.score_id}</td>
                <td>${score.subject}</td>
                <td>${score.score}</td>
                <td class="text-center"><a class='btn btn-info btn-xs' href="#"><span class="glyphicon glyphicon-edit"></span> Edit</a> <a href="#" class="btn btn-danger btn-xs"><span class="glyphicon glyphicon-remove"></span> Del</a></td>
            </tr>
    </c:forEach>
    
          
    </table>
    </div>
</div>

</body>
</html>