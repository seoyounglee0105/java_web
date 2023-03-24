<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

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
	@import url('https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@500&display=swap');

	body {
		display: flex;
		flex-direction: column;
		align-items: center;
		font-family: 'Noto Sans KR', sans-serif;
	}
	
	header {
		padding: 20px;
	}
	
	section {
		width: 300px;
	}
	
	form {
		display: flex;
		flex-direction: column;
	}
	
	.form-row {
		display: flex;
		margin-bottom: 10px;
	}
	
	.form-row label {
		flex: 1;
	}
	
	.form-row input {
		flex: 2;
	}
	
	.form-btn {
		display: flex;
		justify-content: center;
		margin-top: 10px;
	}
</style>
</head>
<body>
	<!-- 로그인 폼 양식을 만들어서 제출하는 코드를 작성하시오. -->
	<header>
		<h1>Login</h1>
	</header>	
	<section>	<!-- 자바코드 처리하는 쪽으로 보냄 -->
		<form action="loginProc.jsp" method="post">
			<div class="form-group">
				<label for = "userName">UserName : </label>
				<input class="form-control" type = "text" id = "userName" name = "userName" required="required">			
			</div>
			
			<div class="form-group">
				<label for = "pw">Password : </label>
				<input class="form-control" type = "password" id = "pw" name = "pw" required="required">			
			</div>
			
			<div class = "form-btn">
				<input class="btn btn-primary" type = "submit" value = "login">
			</div>
		</form>
	</section>

</body>
</html>