<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>  
<head>  
<title>책 수정</title>  
</head>  
 <%@ include file="/WEB-INF/views/include/head.jsp" %>
<body>  
<!-- 메뉴 파일 -->
	<%@ include file="/WEB-INF/views/include/menu.jsp" %>
<h1>책 수정</h1>  
<form method="POST">  
<p>제목 : <input required type="text" name="title" value="${ data.title }" /></p>  
<p>카테고리 : <input  type="text" name="category"  value="${ data.category }" /></p>  

<form method="get" action="SelectServlet"  >
		<label  for="country" >국가</label> 
		<select  required id="country" name="country" size="1" >
			<option value="${ data.country }">${ data.country }</option>
			<option value="대한민국">대한민국</option>
			<option value="일본">일본</option>
			<option value="미국">미국</option>
			
		</select> <br> <br>
  <form method="get" action="SelectServlet">
		<label for="genre">장르</label> 
		<select  required id="genre" name="genre" size="1">
			<option value="${ data.genre }">${ data.genre }</option>
			<option value="순정만화">순정만화</option>
			<option value="성인만화">성인만화</option>
			<option value="소년만화">소년만화</option>
			<option value="기획도서">기획도서</option>
			
		</select> <br> <br>
<p>가격 : <input required type="number" name="price"  value="${ data.price }" /></p>  
<p><input type="submit" value="저장" />  
</form>  
</body>  
</html>  