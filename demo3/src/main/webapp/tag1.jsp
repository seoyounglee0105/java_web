<%@page import="java.util.Date"%>
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
		align-items: center;
		justify-content: flex-start;
	}
	
	main pre {
		width: 100%;
		border: 1px solid black;
		padding: 20px;
	}
</style>
<main>
	<pre>
		<-- 스크립트 릿 (ScriptLet, HTML 렌더링 후 태그는 보이지 않음 -->
		<%  %>
		<-- 표현식 (expression, HTML 렌더링 후 태그는 보이지 않음 -->
		<%="" %>
		<-- JSP 주석 (HTML 렌더링 후 태그는 보이지 않음) -->
		<%-- JSP 주석 (소스 보기로 확인 불가)--%>
		<!--  HTML 주석은 소스 보기로 확인 가능함 -->
		------------------------------------------
		스크립트 릿은 HTML과 Java 코드를 혼합하여 사용할 수 있습니다.
		<% new java.util.Date(); %> <!-- 내부적으로 동작하지만, 출력 X -->
		화면에 데이터를 출력하려면 표현식을 사용해야 함
		<%= new java.util.Date() %> <!-- 표현식에는 세미콜론 X -->
		------------------------------------------
		사용 방법
		스크립트 릿 : <% %> JSP 페이지에서 코드를 실행할 수 있음
		표현식 : <%="" %> JSP 페이지에서 Java 코드의 결과 값을 출력할 수 있음
		<!-- 표현식 안에 아무것도 작성하지 않으면 오류 -->
		자바 코드 위치
		스크립트 릿 : JSP 페이지 어디든지 위치 가능
		표현식 : HTML 태그 내부에서만 사용할 수 있음
		
		출력 결과
		스크립트 릿 : 출력 결과를 지정하지 않으면 아무런 출력이 되지 않음
		표현식 : 자바 결과 값을 출력함
	</pre>
</main>

<jsp:include page="/layout/footer.jsp"/> <!-- 셀프 클로징 태그 -->

