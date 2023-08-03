<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
<link href="${pageContext.request.contextPath}/view/order/orderList.css?v=1" type="text/css" rel="stylesheet" />
<title>Insert title here</title>
</head>
<body>
<div id = "basic" class="container border border-primary rounded-4 border-opacity-25" >
	<div class="d-flex justify-content-between" style="font-size:20px; margin-bottom:20px; padding :10px 0; background-color: #0d6efd; border-radius: 10px;" >
		<a href="${pageContext.request.contextPath }/view/member/result.jsp" style="padding-left: 20px; color: white;text-decoration: none;">
			<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="white" class="bi bi-person-circle" viewBox="0 0 16 16">
			  <path d="M11 6a3 3 0 1 1-6 0 3 3 0 0 1 6 0z"/>
			  <path fill-rule="evenodd" d="M0 8a8 8 0 1 1 16 0A8 8 0 0 1 0 8zm8-7a7 7 0 0 0-5.468 11.37C3.242 11.226 4.805 10 8 10s4.757 1.225 5.468 2.37A7 7 0 0 0 8 1z"/>
			</svg>
			내정보
		</a>
		<a  href="/jsp_prj/order/myList?o_state=0" style="color: white;text-decoration: none;">
		<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-list-ul" viewBox="0 0 16 16">
		  <path fill-rule="evenodd" d="M5 11.5a.5.5 0 0 1 .5-.5h9a.5.5 0 0 1 0 1h-9a.5.5 0 0 1-.5-.5zm0-4a.5.5 0 0 1 .5-.5h9a.5.5 0 0 1 0 1h-9a.5.5 0 0 1-.5-.5zm0-4a.5.5 0 0 1 .5-.5h9a.5.5 0 0 1 0 1h-9a.5.5 0 0 1-.5-.5zm-3 1a1 1 0 1 0 0-2 1 1 0 0 0 0 2zm0 4a1 1 0 1 0 0-2 1 1 0 0 0 0 2zm0 4a1 1 0 1 0 0-2 1 1 0 0 0 0 2z"/>
		</svg>
			주문내역
		</a>
		<a href="/jsp_prj/order/myList?o_state=1"  style="padding-right: 20px; color: white;text-decoration: none;">
		<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-cart4" viewBox="0 0 16 16">
		  <path d="M0 2.5A.5.5 0 0 1 .5 2H2a.5.5 0 0 1 .485.379L2.89 4H14.5a.5.5 0 0 1 .485.621l-1.5 6A.5.5 0 0 1 13 11H4a.5.5 0 0 1-.485-.379L1.61 3H.5a.5.5 0 0 1-.5-.5zM3.14 5l.5 2H5V5H3.14zM6 5v2h2V5H6zm3 0v2h2V5H9zm3 0v2h1.36l.5-2H12zm1.11 3H12v2h.61l.5-2zM11 8H9v2h2V8zM8 8H6v2h2V8zM5 8H3.89l.5 2H5V8zm0 5a1 1 0 1 0 0 2 1 1 0 0 0 0-2zm-2 1a2 2 0 1 1 4 0 2 2 0 0 1-4 0zm9-1a1 1 0 1 0 0 2 1 1 0 0 0 0-2zm-2 1a2 2 0 1 1 4 0 2 2 0 0 1-4 0z"/>
		</svg>
			장바구니
		</a>
	</div>
<h3 class="text-primary">전체 상품</h3>
<div id= "sort_area">
	<form action="${pageContext.request.contextPath }/order/list" method="post">
	<th>상품 정렬</th>
	<td>
		<select class="form-select" name ="sort" onchange="this.form.submit()">
			<option value="0">정렬 선택</option>
			<option value="num">최신순</option>
			<option value="price">가격낮은순</option>
			<option value="price desc">가격높은순</option>
		</select>
	</td>
	</form>
	<form action="${pageContext.request.contextPath }/order/list" method="post">
	<th>카테고리별 정렬</th>
	<td>
		<select class="form-select" name ="category" onchange="this.form.submit()" >
			<option value="0">정렬 선택</option>
			<option value="FOOD">음식</option>
			<option value="FURNITURE">가구</option>
			<option value="IT">IT제품</option>
		</select>
	</td>
	</form>
</div>
<table border="1" class="table table-striped">
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
</div>
</body>
</html>