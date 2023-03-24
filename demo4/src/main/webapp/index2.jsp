<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<form action="pwfind.jsp" method = "post">
		<label>사용자 이름 : </label>
		<input type = "text" id = "username" name = "username">
		<label>이메일 : </label>
		<input type = "email" id = "email" name = "email">
		<input type = "submit" value = "비밀번호 찾기">
	</form>
	<br>
	<a href = "index.jsp">로그인</a>

</body>
</html>