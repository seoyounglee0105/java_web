<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style type="text/css">
	body {
		height: 100vh;
		display: flex;
		flex-direction: column;
		align-items: center;
	}

	.visible-form {
		border: 1px solid #ccc;
	}
	
	.form-row {
		margin: 10px 30px 10px 10px;
	}
	
	.form-btn {
		display: flex;
		justify-content: center;
		margin-top: 20px;
		margin-bottom: 10px;
	}

</style>

</head>
<body>
	<header>
		<h1>장바구니에 담기</h1>
	</header>
	
	<section>
		<form class = "visible-form" action="cartProc.jsp" method = "post">
			<div class = form-row>
				<input type = "checkbox" name = "fruit" id = "banana">		
				<label for = "banana">바나나</label>
			</div>
			<div class = form-row>
				<input type = "checkbox" name = "fruit" id = "apple">		
				<label for = "apple">사과</label>
			</div>
			<div class = form-row>
				<input type = "checkbox" name = "fruit" id = "peach">		
				<label for = "peach">복숭아</label>
			</div>
			<div class = form-btn>
				<input type = "submit" value = "저장">
				<input type = "submit" name = "delete" value = "삭제">
			</div>
		</form>
	</section>

	
</body>
</html>