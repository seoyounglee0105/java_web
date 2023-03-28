<%@ page import="com.tenco.todo.dto.CategoryDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
<script src="https://cdn.jsdelivr.net/npm/jquery@3.6.3/dist/jquery.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
<title>Insert title here</title>
<style>
body {
	padding: 30px;
}
h2 {
	text-align: center;
	margin-bottom: 20px;
}
button {
	padding: 1px;
	border: 1px solid black;
	border-radius: 2px;
}
</style>
</head>
<body>
	<h2>Todo List</h2>
	<table class="table">
		<thead class="thead-dark">
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
		</thead>
		<tbody>

		<c:forEach var="todoList" items="${list}">

			<tr>
				<td>${todoList.id}</td>
				<td>${todoList.title}</td>
				<td>${todoList.description}</td>
				<td>${todoList.priority}</td>
				<td>${todoList.completed}&nbsp;
					<button>
						<a href="/todo2/tTest?action=update&tid=${todoList.id}&tComp=${todoList.completed}">변경</a>
					</button>
				</td>
				<td>${todoList.createdAt}</td>
				<td>${todoList.categoryId}</td>
				<td><button>
						<a href="/todo2/tTest?action=delete&tid=${todoList.id}">삭제</a>
					</button></td>
			</tr>
		</c:forEach>
		</tbody>
	</table>
</body>
</html>
