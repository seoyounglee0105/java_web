<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String sessionUserName = (String) session.getAttribute("userName");
	// 문제 : 로그인이 안되어 있으면 login.jsp로 이동시키시오.
	
	if (sessionUserName == null) {
		response.sendRedirect("login.jsp");
	}
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>로그인 상태여야만 이 페이지를 보여 줍니다.</h1>
	
	<form action="logoutProc.jsp">
		<input type = "submit" value = "logout">
	</form>
	
</body>
</html>