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
<title>Insert title here</title>
</head>

<body>
<div class="container border border-primary rounded-4 border-opacity-25" style="margin-top: 30px; padding: 30px;" >
	<div class="bg-primary bg-opacity-75" style="margin-bottom: 20px;">
		<div style="height: 40px; line-height: 40px; text-align: right; padding-right: 20px;">
	      	<a href="${pageContext.request.contextPath }/view/member/result.jsp" style="text-decoration: none; color: white;">
	      	<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="white" class="bi bi-person-circle" viewBox="0 0 16 16">
			  <path d="M11 6a3 3 0 1 1-6 0 3 3 0 0 1 6 0z"/>
			  <path fill-rule="evenodd" d="M0 8a8 8 0 1 1 16 0A8 8 0 0 1 0 8zm8-7a7 7 0 0 0-5.468 11.37C3.242 11.226 4.805 10 8 10s4.757 1.225 5.468 2.37A7 7 0 0 0 8 1z"/>
			</svg>
			내정보
			</a>
	    </div>
	</div>
	
	<h3 class="text-primary">내가 등록한 상품</h3>
	<br>
	<div>
	<a href="${pageContext.request.contextPath }/seller/AddForm" style="text-decoration: none;">
	<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-plus-square text-primary" viewBox="0 0 16 16">
	  <path d="M14 1a1 1 0 0 1 1 1v12a1 1 0 0 1-1 1H2a1 1 0 0 1-1-1V2a1 1 0 0 1 1-1h12zM2 0a2 2 0 0 0-2 2v12a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V2a2 2 0 0 0-2-2H2z"/>
	  <path d="M8 4a.5.5 0 0 1 .5.5v3h3a.5.5 0 0 1 0 1h-3v3a.5.5 0 0 1-1 0v-3h-3a.5.5 0 0 1 0-1h3v-3A.5.5 0 0 1 8 4z"/>
	</svg>
	새 상품 등록
	</a>
	</div>
	
	<br><br>
	<form action="${pageContext.request.contextPath }/seller/List" method="post" style="display: inline;">
	상품 정렬
		<select class="form-select" name ="sort" onchange="this.form.submit()" style="width: 180px; display: inline;">
			<option value="0">정렬 선택</option>
			<option value="num">최신순</option>
			<option value="price">가격낮은순</option>
			<option value="price desc">가격높은순</option>
		</select>
	</form>
	
	<form action="${pageContext.request.contextPath }/seller/List" method="post" style="display: inline;">
	카테고리별 보기
		<select class="form-select" name ="category" onchange="this.form.submit()" style="width: 180px; display: inline;">
			<option value="0">카테고리 선택</option>
			<option value="FOOD">음식</option>
			<option value="FURNITURE">가구</option>
			<option value="IT">IT제품</option>
		</select>
	</form>
	
	<table border="1" class="table table-striped table-hover" style="margin-top: 10px;">
	<tr><th>상품번호</th><th>상품명</th><th>가격</th><th>상품카테고리</th><th>리뷰</th></tr>
	<c:forEach var="p" items="${products }">
	<tr>
	<td>${p.num }</td><td><a href="${pageContext.request.contextPath }/seller/detail?num=${p.num }">${p.name }</a></td>
	<td>${p.price }</td>
	<td>${p.category }</td>
	<td>
	<a href="${pageContext.request.contextPath }/review/list?num=${p.num }">리뷰보기</a>
	</td>
	</tr>
	</c:forEach>
	</table>
</div>
</body>
</html>