<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
<title>Insert title here</title>
</head>
<body>
<div class="container border border-primary rounded-4 border-opacity-25" style="margin-top: 30px; padding: 30px;">
<h3 class="text-primary">리뷰 등록</h3>
<form action="${pageContext.request.contextPath }/review/add?num=${p.num}" method="post">
<table border="1" class="table table-striped">
<tr>
<th>상품명</th><td>${p.name }</td>
</tr>
<tr>
<th>상품 이미지</th><td><img src="${p.img }" width="200" height="200"/>
</td>
<tr>
<th>리뷰</th><td><textarea rows="10" cols="30" name="content"></textarea></td>
</tr>

</table>
<input type="submit" class="btn btn-primary" value="등록">
</form>

</div>
</body>
</html>