<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%

	// name
	String[] fruits = request.getParameterValues("fruit");

	if (fruits != null && fruits.length > 0) {
		// 체크박스를 하나 이상 선택한 경우
		for (String fruit : fruits) {
			out.println(fruit);
		}
	}
	
	String isDelete = request.getParameter("delete");

%>