<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
<html>  
<head>  
 <%@ include file="/WEB-INF/views/include/head.jsp" %>
<title>미국 그래픽노블</title>  
</head>  
<body>  
<!-- 메뉴 파일 -->
	<%@ include file="/WEB-INF/views/include/menu.jsp" %>
<h1>미국 그래픽노블</h1>  
<%@ include file="../../book_list.jsp" %>
<p>  
<a href="/create">생성</a>  
</p>  
</body>  
</html>  