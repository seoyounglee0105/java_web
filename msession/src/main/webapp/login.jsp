<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String userName = request.getParameter("userName");
	String password = request.getParameter("password");
	
	// 최초로 접근했을 때는 null이라서 아래 코드 실행 X
	// 로그인 버튼을 누르고 나면 null이 아니라서 아래 코드 실행 O
	if (userName != null && password != null) {
		// 로그인 
		if (userName.equals("admin") && password.equals("1234")) {
			session.setAttribute("userName", userName);
			// 로그인되었다면 index.jsp로 
			response.sendRedirect("index.jsp");
		} else {  // 로그인 실패 시 경고 창을 띄우고 다시 login.jsp로 이동
			out.println("<script> alert('로그인에 실패했습니다.'); location.href = 'login.jsp'; </script>");
		}
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">

	body {
		display: flex;
		justify-content: center;
		align-items: center;
		height: 100vh;
		flex-direction: column;
	}
	
	form {
		display: flex;
		flex-direction: column;
	}
	
	/* 속성 선택자 - 태그[속성="값"] */
	input[type = "text"], 
	input[type = "password"], 
	input[type = "submit"] {
		padding: 8px;
		border-radius: 5px;
		border: 1px solid #ccc;
	}
	
	input[type = "submit"] {
		background-color: #007bff;
		color: #fff;
		border: none;
		cursor: pointer; /* 가져다 대면 마우스 커서 모양 바뀜 */
	}
	
	/* 속성 선택자 + 가상 선택자 */
	input[type = "submit"]:hover {
		background-color: #000bff;
	}
	
	label {
		margin-bottom: 5px;
		font-weight: bold;
	}

</style>
</head>
<body>
	<h1>Login Page</h1>
	
	<!-- action으로 자기 자신으로 돌아올 수 있음 -->
	<form action="login.jsp" method="post">
		<label for = "userName">UserName : </label>
		<input type = "text" name = "userName" id = "userName" required="required">
		<label for = "password">Password : </label>
		<input type = "password" name = "password" id = "password" required="required">
		<br>
		<input type = "submit" value = "login">
	</form>
	
</body>
</html>



