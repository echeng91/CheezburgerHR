<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
<script	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="table.css">
<title>Applicant info</title>
</head>
<body>

	<nav class="navbar navbar-default">
		<div class="container-fluid">
			<div class="navbar-header">
				<a class="navbar-brand" href="#">
					<img src="Images/CheezburgerHR_HDZ_Logo.png" height="30">
				</a>
			</div>
			<ul class="nav navbar-nav">
				<li><a href="index.jsp">Home</a></li>
				<li><a href="LogoutServlet">Logout</a></li>
				<li><a href="ApplicationListServlet">Application List</a></li>	
				<li class="active"><a href="ApplicationActivityListServlet">Activity List</a></li>
				<li><a href="NewApplicationFormServlet">New Application</a></li>
			</ul>
		</div>
	</nav>

<!-- this is page 2 -->
<p> User: <c:out value="  ${user.username}" />        <br> HR Role: <c:out value="  ${user.chUserRoles[0].chHrrole.roleDescription}" /></p>
<br><br>
<h4>Application ID: <c:out value="${application.appid}" /></h4>
<br>
<table>
<tr>
<th> Activity</th>
<th> Activity Status</th>
<th> Action</th>
</tr>
<c:forEach items="${activitymap}" var="entry">
			<tr>
				<td><c:out value="  ${entry.key.chActivity.actdescription}" /></td>
				<td>
				<c:choose>
						<c:when test="${entry.key.actstatus ==  \"P\"}">
							<img src="Images/burger.png" alt="Pass" title="Pass" height="40">
						</c:when>
						
						<c:when test="${entry.key.actstatus ==  \"F\"}">
							<img src="Images/sad_cat.png" alt="Fail" title="Fail" height="40">
						</c:when>
						
						<c:otherwise>
							<img src="Images/cat.png" alt="In Process" title="In Process" height="40">
						</c:otherwise>
					</c:choose>
				</td>
				<td> 
				<c:if test="${entry.value==1}">
   <form action="ApplicantServlet" method="Post">
						<input type="submit" value="update">
						<input type="hidden" name="actid" value="${entry.key.chActivity.actid}">
					</form>
</c:if>
</td>
			</tr>
		</c:forEach>
		</table>
		
</body>
</html>