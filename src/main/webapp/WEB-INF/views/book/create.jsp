<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
 <head>
 <%@ include file="/WEB-INF/views/include/head.jsp" %>
  <title>책 생성</title>
 </head>
 <body>
 <!-- 메뉴 파일 -->
	<%@ include file="/WEB-INF/views/include/menu.jsp" %>
  <h1>책 생성</h1>
  <form method="POST">
   <p>제목 : <input required type="text" name="title" /></p>
   <p>카테고리 : <input  type="text" name="category" /></p> 
   <!--카테고리만 낫필수  -->
   <form method="get" action="SelectServlet">
		<label for="country">국가</label> 
		<select required id="country" name="country" size="1">
			<option value="">국가를 선택하시오.</option>
			<option value="대한민국">대한민국</option>
			<option value="일본">일본</option>
			<option value="미국">미국</option>
			
		</select> <br> <br>
  <form method="get" action="SelectServlet">
		<label for="genre">장르</label> 
		<select required id="genre" name="genre" size="1">
			<option class="대한민국 일본 미국" value="">장르를 선택하시오.</option>
			<option class="대한민국 일본" value="순정만화">순정만화</option>
			<option class="대한민국 일본" value="성인만화">성인만화</option>
			<option class="대한민국 일본" value="소년만화">소년만화</option>
			<option class="대한민국 일본" value="기획도서">기획도서</option>
			<option class="대한민국" value="만화잡지">만화잡지</option>
			<option class="미국" value="DC 코믹스마블">DC 코믹스마블</option>
			<option class="미국" value="코믹스리터러리">코믹스리터러리</option>
			<option class="미국" value="그래픽노블">그래픽노블</option>
			
		</select> <br> <br>
   <p>가격 : <input required type="number" name="price" /></p>
   <!-- 숫자만 입력가능 -->
   <p><input type="submit" value="저장" />
  </form>
  <script>
  var genre = $("[name=genre] option").detach()
  $("[name=country]").change(function() {
    var val = $(this).val()
    $("[name=genre] option").detach()
    genre.filter("." + val).clone().appendTo("[name=genre]")
  }).change()</script>
 </body>
</html>