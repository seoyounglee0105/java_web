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
	String imgDir;

	imgDir = application.getInitParameter("imgDir");
%>

<p>imgDir : <%=imgDir %></p>

<div>
	<img alt="배너" src="/demo6_1<%=imgDir %>/a.png">
</div>

</body>
</html>