<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>Home Page</h3>
     <form action="home" method="post" modelAttribute="contactsForm">
     	<label>University : </label>
        <input type="text" name="university"/> <br>
        
        <label>Student ID : </label>
        <input type="text" name="studentId"/> <br>
        
        <label>Firstname : </label>
        <input type="text" name="firstname"/> <br>
        
        <label>Lastname : </label>
        <input type="text" name="lastname"/> <br>
        
        <label>E-mail : </label>
        <input type="email" name="email"/> <br>
        
        <label>Phone : </label>
        <input type="text" name="phone"/> <br>
        
        <label>Gender : </label>
        <input type="text" name="gender"/> <br>
        
        <input type="submit" value="send"/>
     </form>
    <%--  <h3>Result</h3>
		<p>University : ${university}</p>
		<p>StudentId : ${studentId}</p>
		<p>Firstname : ${firstname}</p>
		<p>Lastname : ${lastname}</p>
		<p>E-mail : ${email}</p>
		<p>Phone : ${phone}</p>
		<p>Gender : ${gender}</p> --%>
		
	<table class="tg">
	<tr>
		<th width="120">University</th>
		<th width="80">Student ID</th>
		<th width="120">FirstName</th>
		<th width="120">LastName</th>
		<th width="120">Email</th>
		<th width="120">Phone</th>
		<th width="80">Gender</th>
		<th width="60">Edit</th>
		<th width="60">Delete</th>
	</tr>
	<c:forEach items="${listPersons}" var="person">
		<tr>
			<th width="120">${person.university}</th>
			<th width="80">${person.studentId}</th>
			<th width="120">${person.firstname}</th>
			<th width="120">${person.lastname}</th>
			<th width="120">${person.email}</th>
			<th width="120">${person.phone}</th>
			<th width="80">${person.gender}</th>
			<%-- <td><a href="<c:url value='/edit/${person.studentId}' />" >Edit</a></td>
			<td><a href="<c:url value='/remove/${person.studentId}' />" >Delete</a></td> --%>
		</tr>
	</c:forEach>
	</table>
</body>
</html>