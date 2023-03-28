<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>카테고리 정보 수정하기</title>
</head>
<body>
	<h1>category update form</h1>
	<p>
		HTTP 메세지 시작 줄에 추가적인 정보를 달아서 서버에 보낼 수 있다
		쿼리 파라미터 방식, 패스베리어블 방식
		
	</p> <!-- 쿼리 파라미터 방식 : "action"이라는 key로 'update'라는 value를 가져올 수 있게 함 -->
	<!-- 주소?key1=value1&key2=value2 ... -->
	<!-- 헤더에 담는 부분이라 용량이 적음 -->
	<!-- &로 연결하면 여러 key-value를 보낼 수 있음 -->
	<form action="/todo2/cTest?action=update" method = "post">
		<input type="number" name="id" required="required">
		<input type="text" name="name" required="required">
		<input type="submit" value="카테고리수정">
	</form>
</body>
</html>