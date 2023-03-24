<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- 액션 태그 -->
<!-- include : 복사해서 가져오기 -->
<jsp:include page="/layout/header.jsp"/> <!-- 셀프 클로징 태그 -->
<style>
	main {
		display: flex;
		padding: 20px;
		flex-direction: column;
		align-items: flex-start;
		justify-content: flex-start;
	}
	
	h1 {
		margin-top: 30px;
		margin-bottom: 10px;
		font-size: 28px;
		font-weight: bold;
		text-align: center;
	}
	
	main pre {
		width: 100%;
		border: 1px solid black;
		padding: 20px;
	}
	
	a {
		text-decoration: none;
		color: black;
	}
	
	a:hover {
		color: blue;
	}
</style>
<main>
	<h1>덧셈 게임</h1>
	<%
		// 방어적 코드
		if (request.getParameter("answer") != null) {
			int answer = Integer.parseInt(request.getParameter("answer"));
			int guess = Integer.parseInt(request.getParameter("guess"));
			
			// 정답이라면
			if (answer == guess) {
				out.println("<p>축하합니다! 정답입니다.</p>");				
			// 정답이 아니라면
			} else {
				out.println("<p>아쉽지만 틀렸습니다. 바보님 다시 도전해보세요.</p>");
			}
		}
	%>
	<br>
	<div>
		<a href = "/demo3/tag5.jsp">문제 더 풀어보기</a>
	</div>
	
</main>

<jsp:include page="/layout/footer.jsp"/> <!-- 셀프 클로징 태그 -->
