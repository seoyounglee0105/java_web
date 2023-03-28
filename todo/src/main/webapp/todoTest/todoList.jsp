<%@ page import="com.tenco.todo.dto.CategoryDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
table {
	border-collapse: collapse;
}

th, td {
	padding: 5px;
}
</style>
</head>
<body>
	<h2>Todo List</h2>
	<table border="1">
		<tr>
			<th>id</th>
			<th>title</th>
			<th>description</th>
			<th>priority</th>
			<th>completed</th>
			<th>createdAt</th>
			<th>categoryId</th>
			<th>삭제</th>
		</tr>




		<c:forEach var="todoList" items="${list}">

			<tr>
				<td>${todoList.id}</td>
				<td>${todoList.title}</td>
				<td>${todoList.description}</td>
				<td>${todoList.priority}</td>
				<td>${todoList.completed}
					<button>
						<a href="/todo/tTest?action=update&tid=${todoList.id}&tComp=${todoList.completed}">변경</a>
					</button>
				</td>
				<td>${todoList.createdAt}</td>
				<td>${todoList.categoryId}</td>
				<td><button>
						<a href="/todo/tTest?action=delete&tid=${todoList.id}">삭제</a>
					</button></td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>
