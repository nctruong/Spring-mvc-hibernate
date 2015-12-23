<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
	<link rel="stylesheet" type="text/css" href='<c:url value="/resources/css/bootstrap.css"/>' />
	
	<script type="text/javascript" src='<c:url value="/resources/css/bootstrap.js"/>' ></script>
	<title>University Enrollments</title>

	<style>
		tr:first-child{
			font-weight: bold;
			background-color: #C6C9C4;
		}
		.table .table-striped .table-condensed{
			width:80%;
		}
	</style>

</head>


<body>

	<h2>List of Students</h2>	
	<table class="table table-striped table-condensed">
		<tr>
			<td>NAME</td>
			<td>Sex</td>
			<td>Age</td>
			<td></td>
			<td></td>
		</tr>
		<c:forEach items="${students}" var="student">
			<tr>
			<td>${student.firstName}</td>
			<td>${student.sex}</td>
			<td>${student.age}</td>
			<td><a href="<c:url value='/edit-${student.id}-student' />">edit</a></td>
			<td><a href="<c:url value='/delete-${student.id}-student' />">delete</a></td>
			</tr>
		</c:forEach>
	</table>
	<br/>
	<a href="<c:url value='/new' />">Add New Student</a>
</body>
</html>