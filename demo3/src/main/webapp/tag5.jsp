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
</style>
<main>
	<h1>덧셈 게임</h1>
	<% 
		int num1 = (int) (Math.random() * 10) + 1;
		int num2 = (int) (Math.random() * 10) + 1;
		int answer = num1 + num2;
	%>
	
	<p>
		<%=num1 %> + <%=num2 %> = ?
	</p>
	
	<form action = "/demo3/result.jsp" method = "post">
		<%-- 눈에 보이지 않음 --%>
		<input type = "hidden" name = "answer" value = "<%=answer%>">
		<input type = "number" name = "guess" required = "required">
		<input type = "submit" value = "정답 제출">
	</form>
	
</main>

<jsp:include page="/layout/footer.jsp"/> <!-- 셀프 클로징 태그 -->
