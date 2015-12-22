<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
	<link type="text/css" href="<%=request.getContextPath() %>/css/bootstrap.css" rel="stylesheet"/>
	<script type="text/javascript" src="<%=request.getContextPath() %>/js/bootstrap.min.js" ></script>
	<title>University Enrollments</title>

	<style>
		tr:first-child{
			font-weight: bold;
			background-color: #C6C9C4;
		}
	</style>

</head>


<body>
<%=request.getContextPath() %>
<div class="container-fluid">
		<div class="row-fluid">
			<div class="span12">
				<fieldset>
				<legend>Bootstrap Form With Spring Mvc Example</legend>
				<form class="form-horizontal" method="post" action='employee/add.htm' name="employeeForm" id="employeeForm">
					<div class="control-group">
						<label class="control-label">First Name</label>
						<div class="controls">
							<input type="text" name="firstName" id="firstName" title="First Name" value="">
						</div>
					</div>
					<div class="control-group">
						<label class="control-label">Last Name</label>
						<div class="controls">
							<input type="text" name="lastName" id="lastName" title="Last Name" value="">
						</div>
					</div>
					<div class="control-group">
						<label class="control-label">Email</label>
						<div class="controls">
							<input type="text" name="email" id="email" title="Email" value="">
						</div>
					</div>
					<div class="form-actions">
						<button type="submit" class="btn btn-success">Submit</button>
						<button type="button" class="btn">Cancel</button>
					</div>
				</form>
				</fieldset>
			</div>
		</div>
	</div>		
	
	<h2>List of Students</h2>	
	<table class="table table-striped table-condensed">
		<tr>
			<td>NAME</td>
			<td>Sex</td>
			<td>Address</td>
			<td></td>
			<td></td>
		</tr>
		<c:forEach items="${students}" var="student">
			<tr>
			<td>${student.fullName}</td>
			<td>${student.sex}</td>
			<td>${student.address}</td>
			<td><a href="<c:url value='/edit-${student.id}-student' />">edit</a></td>
			<td><a href="<c:url value='/delete-${student.id}-student' />">delete</a></td>
			</tr>
		</c:forEach>
	</table>
	<br/>
	<a href="<c:url value='/new' />">Add New Student</a>
</body>
</html>