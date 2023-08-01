<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

<h3>리뷰 등록</h3>
<form action="${pageContext.request.contextPath }/review/add?num=${p.num}" method="post">

상품명:${p.name }<br>
<img src="${p.img }" width="200" height="200"/><br>
리뷰:<br>
<textarea rows="10" cols="30" name="content"></textarea><br>
<input type="submit" value="등록">
</form>


</body>
</html>