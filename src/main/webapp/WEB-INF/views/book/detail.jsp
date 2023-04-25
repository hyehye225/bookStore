<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html>
 <head>
  <%@ include file="/WEB-INF/views/include/head.jsp" %>
  <title>책 상세</title>
 </head>
 <body>
 <!-- 메뉴 파일 -->
	<%@ include file="/WEB-INF/views/include/menu.jsp" %>
  <h1>책 상세</h1>
  <p>제목 : ${ data.title } </p>
  <p>카테고리 : ${ data.category }</p>
  <p>국가 : ${ data.country }</p>
  <p>장르 : ${ data.genre }</p>
  <p>가격 : <fmt:formatNumber type="number" maxFractionDigits="3" value="${data.price}" />원</p> 
  
  <p>입력일 :  <fmt:timeZone value="GMT"><fmt:formatDate value="${data.insert_date}" timeZone="${timeZone}" pattern="yyyy.MM.dd HH:mm:ss" /> </fmt:timeZone></p>

  <p>
   <a href="/update?bookId=${bookId}">수정</a>
  </p>
  <form method="POST" action="/delete">
   <input type="hidden" name="bookId" value="${bookId}" />
   <input type="submit" value="삭제" />
  </form>
  <p>
   <a href="/list">목록으로</a>
  </p>
 </body>
</html>