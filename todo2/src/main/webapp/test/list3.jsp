<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Loop Example</title>
</head>
<body>
	<!-- 변수 선언 (var : 변수명) -->
	<c:set var="count" value="0" />
	
	<!-- 반복문을 사용해서  -->
	<c:forEach var="i" begin="1" end="7" step="1">	
		<c:set var="count" value="${count+1}"/>
		<c:out value="${count}" />
	</c:forEach>
</body>
</html>