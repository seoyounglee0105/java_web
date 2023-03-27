<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>ㅎㅇ</h1>
	<div>
		<% 
			String msg1 = (String) request.getAttribute("msg1");
			String msg2 = (String) request.getAttribute("msg2");
		%>
		
		<p><%=msg1 %></p>
		<p><%=msg2 %></p>
		<p><%=msg1 %></p>
		<p><%=msg2 %></p>
	</div>
</body>
</html>