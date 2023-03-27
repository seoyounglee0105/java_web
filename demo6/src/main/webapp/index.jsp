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
	// 멤버변수와 같은 개념이라서 null로 자동 초기화됨
	String imgDir;
	String testServerIp;
	String realServerIp;
	
	imgDir = application.getInitParameter("imgDir");
	testServerIp = application.getInitParameter("testServerIp");
	realServerIp = application.getInitParameter("realServerIp");	
%>

<p>imgDir : <%=imgDir %></p>
<p>testServerIp : <%=testServerIp %></p>
<p>realServerIp : <%=realServerIp %></p>
<div>
	<img alt="배너" src="/demo6<%=imgDir %>/a.png">
</div>
</body>
</html>