<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" import="model.Member"%>
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

	<c:if test="${not empty m }">
	<h3 class="text-primary">내정보 수정</h3>
	<br>
	
	<form action="${pageContext.request.contextPath }/EditController" method="post">
	<table border="1" class="table table-striped table-hover" style="margin-top: 10px;">
	<tr>
		<td>id</td>
		<td>
			<div class="input-group">
				<c:if test="${m.type==1 }">
				<span class="input-group-text">판매자</span>
				</c:if>
				<c:if test="${m.type==2 }">
				<span class="input-group-text">구매자</span>
				</c:if>
			  <input type="text" class="form-control" name="id" value="${m.id }" readonly>
			</div>
		</td>
	</tr>
	<tr>
		<td>pwd</td>
		<td><input type="text" class="form-control" name="pwd" value="${m.pwd }"></td>
	</tr>
	<tr>
	<td>name</td>
	<td><input type="text" class="form-control" name="name" value="${m.name }" readonly>
	</td>
	</tr>
	<tr>
	<td>email</td>
	<td><input type="text" class="form-control" name="email" value="${m.email }">
	</td>
	</tr>
	<tr>
	<td>address</td>
	<td><input type="text" class="form-control" name="addr" value="${m.addr }">
	</td>
	</tr>
	<tr>
	<td colspan="2"><input type="submit" class="btn btn-primary" value="수정"></td>
	</tr>
	</table>
	</form>
	</c:if>

</div>
</body>
</html>