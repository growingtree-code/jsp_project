<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

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
<h3 class="text-primary">리뷰</h3>

<table border="1" class="table table-striped">

<tr>
	<th>작성자</th>
	<th>리뷰</th>
	<th>작성시간</th>
</tr>

<c:forEach var="r" items="${list }">

<tr>

	<td>${r.writer }</td>
	<td>${r.content }</td>
	<td>${r.date_time }</td>

</tr>

</c:forEach>

</table>


</div>
</body>
</html>