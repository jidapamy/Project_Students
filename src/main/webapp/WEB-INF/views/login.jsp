<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Login</title>
</head>
<body>

<h3>Login</h3>
     <form action="login" method="post" modelAttribute="loginForm">
     	<label>Passport : </label>
        <input type="text" name="passportno"/> <br>
        
        <label>Date Of Birth : </label>
        <input type="text" name="birthday"/> <br>

        <input type="submit" value="Search"/>
     </form>
</body>
</html>