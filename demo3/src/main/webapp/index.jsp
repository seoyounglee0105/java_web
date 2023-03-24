<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- 액션 태그 -->
<!-- include : 복사해서 가져오기 -->
<jsp:include page="/layout/header.jsp"/> <!-- 셀프 클로징 태그 -->
<style>
	main {
		height: 300px;
		display: flex;
		justify-content: center;
		align-items: center;
	}
</style>
<main>
	여기는 index.jsp 파일입니다.
</main>

<jsp:include page="/layout/footer.jsp"/> <!-- 셀프 클로징 태그 -->
