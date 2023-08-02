<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
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
	<h3 class="text-primary">로그인</h3>
	<br>
	<form name="f" action="${pageContext.request.contextPath }/LoginController" method="post">
		<div class="mb-3">
			<label for="id" class="form-label">ID</label>
			<input type="text" class="form-control" name="id" id="id">
		</div>
		
		<div class="mb-3">
			<label for="pwd" class="form-label">PWD</label>
			<input type="password" class="form-control" name="pwd" id="pwd">
		</div>
		
		<button type="submit" class="btn btn-primary">로그인</button>
		<a class="btn btn-primary" href="${pageContext.request.contextPath }/view/member/form.jsp">회원가입</a>
	</form>
</div>
</body>
</html>