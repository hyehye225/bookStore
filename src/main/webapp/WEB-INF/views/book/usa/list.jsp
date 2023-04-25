<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
<html>  
<head>  
 <%@ include file="/WEB-INF/views/include/head.jsp" %>
<title>미국 만화</title>  
</head>  
<body>  
<!-- 메뉴 파일 -->
	<%@ include file="/WEB-INF/views/include/menu.jsp" %>
<h1>미국 만화</h1>  
<%@ include file="../book_list.jsp" %>
<table>  
<thead>  
<tr>  
<td>제목</td>  
<td>카테고리</td>  
<td>가격</td>  
</tr>  
</thead>  
<tbody>  
<c:forEach var="row" items="${data}">  
<tr>  
<td>  
<a href="/detail?bookId=${row.book_id}">  
${row.title}  
</a>  
</td>  
<td>${row.category}</td>  
<td><fmt:formatNumber type="number" maxFractionDigits="3" value="${row.price}" />원</td>  
</tr>  
</c:forEach>  
</tbody>  
</table>  
<p>  
<a href="/create">생성</a>  
</p>  
</body>  
</html>  