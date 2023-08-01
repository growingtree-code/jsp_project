<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<a href="${pageContext.request.contextPath }/view/member/result.jsp">
내정보
</a><br>
<a href="/jsp_prj/order/myList?o_state=0">
주문내역
</a><br>
<a href="/jsp_prj/order/myList?o_state=1">
장바구니
</a><br>

<h3>전체 상품</h3>
<form action="${pageContext.request.contextPath }/order/list" method="post">
<h5>상품 정렬</h5>
<td>
	<select name ="sort" onchange="this.form.submit()">
		<option value="0">정렬 선택</option>
		<option value="num">최신순</option>
		<option value="price">가격낮은순</option>
		<option value="price desc">가격높은순</option>
	</select>
</td>
</form>
<table border="1">
<tr><th>상품이미지</th><th>상품명</th><th>카테고리</th><th>가격</th><th>리뷰</th></tr>
<c:forEach var="p" items="${products }">
<tr>
<td><img src="${p.img }" width="50" height="50"></td>
<td><a href="${pageContext.request.contextPath }/seller/detail?num=${p.num }">${p.name }</a></td>
<td>${p.category }</td>
<td>${p.price }</td>
<td>
<a href="${pageContext.request.contextPath }/review/list?num=${p.num }">리뷰보기</a>
</td>
</tr>
</c:forEach>
</table>
</body>
</html>