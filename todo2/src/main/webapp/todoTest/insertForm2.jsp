<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>todo 저장하기</title>
<style type="text/css">
	form {
		display: flex;
		flex-direction: column;
		width: 300px;
	}
	
	div {
		display: flex;
		margin-bottom: 10px;
	}
	
	div label {
		flex: 1;
	}
	
	div input {
		flex: 2;
	}
</style>
</head>
<body>
	<h1>todolist insert form</h1>
	<form action="/todo2/tTest?action=insert" method = "post">
	<div>
		<label for="title">title *</label>
		<input type="text" name="title" id="title" required="required">
	</div>
	<div>
		<label for="description">description</label>
		<input type="text" name="description" id="description">
	</div>
	<div>
		<label for="priority">priority</label>
		<input type="number" name="priority" id="priority" min="0" max="5">
	</div>
	<div>
		<label for="categoryId">categoryId *</label>
		<input type="number" name="categoryId" id="categoryId" required="required">
	</div>
	<div>
		<input type="submit" value="insert" value="투두저장">
	</div>
	</form>
</body>
</html>