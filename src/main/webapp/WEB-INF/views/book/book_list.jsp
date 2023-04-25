<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <style>
    
	.wrapper { 
  border : 2px solid #000; 
  overflow:hidden;
}

.wrapper div {
   min-height: 200px;
   padding: 10px;
}
.mqdiv {
  background-color: white;
  float:left; 
  margin:10px;
  width:300px;
  height:150px;
  
}
.mqdiv2 { 
  background-color: white;
  overflow:hidden;
  margin:10px;
  height:150px;
  min-height:170px;
}

@media screen and (max-width: 400px) {
   .mqdiv { 
    float: none;
    margin-right:0;
    width:auto;
    border:0;
       
  }
}
	</style>
 <h1 style="text-align: center;">책 목록</h1> 
<div class="wrapper"> 
<div class="mqdiv"style="border : 2px solid #04AA6D;  " >
<div style="margin:auto; " >
<form>  
<input type="text" placeholder="제목으로" name="keyword" value="${keyword}" maxlength="30" />  
<input type="submit" value="검색" />  
</form> 
<form>  
<input type="text" placeholder="카테고리로" name="cate" value="${cate}" />  
<input type="submit" value="검색" />  
</form>
<form>  
<input type="text" placeholder="특정 가격 이하로" name="maximalprice" value="${maximalprice}" />  
<input type="submit" value="검색" />  
</form> 
</div>
 </div>
<div class="mqdiv2" style="border : 2px solid #04AA6D;  ">
<table style="margin:auto; text-align:center;">  
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
<p style="text-align: center;">  
<a href="/create">생성</a>  
</p>  
</div>
</div>