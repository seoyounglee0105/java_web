<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- 여기 jsp 파일을 error 전용 페이지로 사용하려면
	 반드시 isErrorPage = true를 선언해야 함
 -->
 
 <%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<h2>잘못된 요청입니다.</h2>
	<!-- 에러 메시지는 거의 띄우지 않고, 꾸며서 보여줌 -->
	<!-- 코드는 사용자에게 보여주지 않는 것이 좋기 때문에, 에러 페이지를 만들어주어야 함 -->
	<h3>error message : <%=exception.getMessage() %></h3>
	
</body>
</html>