<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
											           <!-- 중요 !! -->
	<form action="uploadProc" method="post" enctype="multipart/form-data">
		<label for="file">Choose a file : </label>
		<input type="file" name="file" id="file">
		<br>
		<input type="submit" value="파일 업로드">
	</form>
</body>
</html>