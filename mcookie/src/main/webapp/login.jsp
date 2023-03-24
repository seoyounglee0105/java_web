<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String hasUserId = "";
	Cookie[] cookies = request.getCookies();

	// 방어적 코드
	if (cookies != null) {
		
		for (Cookie c : cookies) {
			if (c.getName().equals("userId")) {
				hasUserId = c.getValue();
				out.println("쿠키에 저장된 사용자 아이디 : " + hasUserId);
				break;
			}
		}
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>쿠키 사용해보기</title>
</head>
<body>		      <!-- 상대 경로 -->
	<form action = "loginProc.jsp" method = "post">
		<div>                                   <!-- 쿠키에 저장된 아이디가 기본값으로 입력됨 -->
			아이디 : <input type = "text" name = "userId" value = "<%=hasUserId %>" required="required">
		</div>
		<div>
			비밀번호 : <input type = "password" name = "password" value = "1234" required="required">
		</div>
		<div>
			<input type = "checkbox" name = "remember" value=""> 아이디 기억하기
		</div>
		<div>
			<input type = "submit" value = "쿠키 저장 및 삭제">
		</div>
	</form>
</body>
</html>