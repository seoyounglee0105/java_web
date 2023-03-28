<%@ page import="com.tenco.todo.dto.CategoryDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
    <h2>Category List</h2>
    <table>
        <tr>
            <th>ID</th> 
            <th>Name</th> 
        </tr>
        <%-- jstl이 있어서 request.getAttribute("list") 안해도 됨 --%>
        <%-- items : 반복을 돌릴 녀석 ${자바코드} --%>

		<%-- ${ } 안에 key이름 (getAttribute 생략) --%>
		<%-- ${ } 안에 자바 코드 --%>
        <c:forEach var="category" items="${list}">
            <tr>
                <td>${category.id}</td> <%-- DTO에 getter 메서드가 정의되어 있어서 바로 불러올 수 있는 것 --%>
                <td>${category.name} <button><a href="/todo2/cTest?action=delete&cid=${category.id}">delete</a></button></td>
            </tr>
        </c:forEach>
    </table>
</body>
</html>
