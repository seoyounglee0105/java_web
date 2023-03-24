<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	// 세션을 꺼내는 방법
	String userName = (String) session.getAttribute("userName");
	// 로그인되어 null이 아니라면 index.jsp 페이지를 볼 수 있게 됨
	if (userName == null) {
		// 세션이 없으면 바로 login.jsp로 보냄
		response.sendRedirect("login.jsp");
	}
%>   
 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style type="text/css">
	@import url('https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@500&display=swap');
	
	body {
		display: flex;
		flex-direction: column;
		align-items: center;
		font-family: 'Noto Sans KR', sans-serif;
	}

	input[type = "submit"] {
		padding: 8px;
		border-radius: 5px;
		background-color: #64A9A4;
		color: #fff;
		border: none;
		cursor: pointer; /* 가져다 대면 마우스 커서 모양 바뀜 */
		font-weight: bold;
		font-size: 20px;
	}
	
	input[type = "submit"]:hover {
		background-color: #266770;
	}
	
</style>

</head>
<body>
	<h1>Welcome, <%=userName %>!</h1>
	<form action="logout.jsp">
		<input type = "submit" value = "logout">
	</form>
</body>
</html>