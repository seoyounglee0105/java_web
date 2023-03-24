<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%
	String username = request.getParameter("username");
	String email = request.getParameter("email");
	
	if (username != null && email != null) {
		
		if (username.equals("admin") && email.equals("a@naver.com")) {
			out.print("<p> 비밀번호는 1234입니다 </p>");
		} else {
			out.print("<p> 잘못된 정보입니다. </p>");
		}
	}
%>

</body>
</html>