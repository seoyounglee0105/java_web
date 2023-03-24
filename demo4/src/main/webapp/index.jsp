<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="login.jsp" method = "post">
		<label>사용자 이름 : </label>
		<input type = "text" id = "username" name = "username">
		<label>비밀번호: </label>
		<input type = "password" id = "password" name = "password">
		<input type = "submit" value = "로그인">
	</form>
	<br>
	<a href = "index2.jsp">비밀번호 찾기</a>
	
	<%-- 세션 클래스에 사용자 이름이 저장되어 있으면 로그인 상태를 유지함 --%>
	<% if (session.getAttribute("username") != null) { %>
	
		<p> 현재 로그인 상태입니다. 
		사용자 이름 : <%= session.getAttribute("username") %>
		</p>
	
	<% } %>
	
</body>
</html>