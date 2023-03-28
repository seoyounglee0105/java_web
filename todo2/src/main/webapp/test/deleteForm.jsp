<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>카테고리 정보 저장하기</title>
</head>
<body>
	<h1>category insert form</h1>
	<form action="/todo2/cTest?action=delete" method = "post">
		<input type="number" name="id" required="required">
		<input type="text" name="name" required="required">
		<input type="submit" value="카테고리삭제">
	</form>
</body>
</html>