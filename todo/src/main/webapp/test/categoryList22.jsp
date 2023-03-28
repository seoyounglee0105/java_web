<%@page import="com.tenco.todo.dto.CategoryDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="java.util.ArrayList"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>Category List</h1>
	
	<table>
		<tr>
			<th>id</th>
			<th>name</th>
		</tr>                      
		<c:forEach var="category" items="${list}">
			<tr>
				<td> ${category.id} </td> 
				<td> ${category.name} </td> 
			</tr>
		</c:forEach>
	</table>
	
</body>
</html>