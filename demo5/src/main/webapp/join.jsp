<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>Join</h1>
	<form action="joinProc.jsp" method="post">
		<label for = "userName">UserName : </label>
		<input type = "text" id = "userName" name = "userName" value = "abc">
		
		<label for = "password">Password : </label>
		<input type = "password" id = "password" name = "password" value = "123">
		
		<label for = "email">Email : </label>
		<input type = "email" id = "email" name = "email" value = "a@nate.com">
		
		<input type = "submit" value = "회원가입">
	</form>
</body>
</html>