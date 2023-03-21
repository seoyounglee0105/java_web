<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
@import url('https://fonts.googleapis.com/css?family=Noto+Sans+KR:300,400&display=swap');
	* {
		box-sizing: border-box;
		margin: 0;
		padding: 0;
	}
	
	body {
		font-family: 'Noto Sans KR', sans-serif;
		background-color: #eee;
	}
	
	header {
		color: black;
		padding: 30px;
		text-align: center;
	}
	
	form {
		border: 1px solid black;
		padding: 10px;
		margin: 20px;
	}
	
	.form-row {
		display: flex;
		padding: 15px;
	}
	
	.form-row label {
		flex : 1;
	}
	
	.form-row input {
		flex : 3;
	}
	
	@media (max-width: 768px){
		.form-row {
			flex-direction: column;
		}
	}

</style>

</head>
<body>

	<header>
		<h1>Flex Box Form 태그 만들어 보기</h1>
	</header>

	<section>
		<form action = "보낼_주소" method = "post">
			<div class = "form-row">
				<label for = "userName">Name : </label>
				<input type = "text" id = "userName" name = "name"> <!-- 셀프 클로징 태그 (닫는 태그가 없음) -->
				<!-- name 속성 : 중복 가능 / id : 중복 불가능 -->
			</div>
			<div class = "form-row">
				<label for = "pwd">Password : </label>
				<input type = "password" id = "pwd" name = "password">
			</div>
		</form>
	</section>

</body>
</html>