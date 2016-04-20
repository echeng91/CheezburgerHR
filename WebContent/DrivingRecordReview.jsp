<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Driving Record</title>
</head>
<body>
<h2>Driving Record Review</h2>
<!-- Show user info and list incomplete dependent activity -->
<p> User: <c:out value="  ${user.username}" />         HR Role: <c:out value="  ${user.chUserRoles[0].chHrrole.roleDescription}" /></p>
<p>
	<c:if test="${depflag == \"1\"}">
		<table>
		  <tr>
		    <th> Incomplete Dependent Activities</th>
		  </tr>
		  <c:forEach items="${depactlist}" var="depact">
			<tr>
				<td><c:out value="  ${depact.chActivity.actdescription}" /></td>
			</tr>
		  </c:forEach>
		</table>
	</c:if>
	<br/>
	<br/>

	<table>
		<tr>
			<th> Application ID</th>
			<th> Applicant Name</th>
			<th> Application Status</th>
		</tr>
		<tr>
			<td><c:out value="  ${application.appid}" /></td>
			<td><c:out value="  ${application.name}" /></td>
			<td><c:out value="  ${application.appstatus}" /></td>
		</tr>
	</table>

		
	<c:if test="${application.appstatus != \"F\" && depflag == \"0\"}">
		<form action="UpdateDrivingRecordReviewServlet" method="post">
			<input type="radio" name="status" value="P">Confirm<br>
			<input type="radio" name="status" value="F">Reject<br>
			<input type="radio" name="status" value="I" checked>In process<br>
			<br>
			Comments: <br><textarea name="drivingrecordcomment" rows="8" cols="40" maxlength="255"><c:out value="${drivingrecordcomment}" /></textarea><br>
			<input type="submit" value="Submit">
		</form>	
	</c:if>
	
	<form action="ApplicationActivityListServlet" method="post">
		<input type="submit" value="Return to activity list">
	</form>	

	<form action="ApplicationListServlet" method="post">
		<input type="submit" value="Return to application list">
	</form>

	<form action="LogoutServlet" method="post">
		<input type="submit" value="Logout">
	</form>
</body>
</html>