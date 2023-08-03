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
	<h3 class="text-primary">회원가입</h3>
	<br>
	<form name="f" action="${pageContext.request.contextPath }/JoinController" method="post">
		<div class="mb-3">
			<label for="id" class="form-label">ID</label>
			<input type="text" class="form-control" name="id" id="id">
		</div>
		<div class="mb-3">
			<label for="pwd" class="form-label">PWD</label>
			<input type="password" class="form-control" name="pwd" id="pwd">
		</div>
		<div class="mb-3">
			<label for="name" class="form-label">NAME</label>
			<input type="text" class="form-control" name="name" id="name">
		</div>
		<div class="mb-3">
			<label for="email" class="form-label">EMAIL</label>
			<input type="email" class="form-control" name="email" id="email">
		</div>
		<div class="mb-3">
			<label for="addr" class="form-label">ADDRESS</label>
			<input type="text" class="form-control" name="addr" id="addr">
		</div>
		
		<p class="form-label">회원종류</p>
		
		<div class="form-check form-check-inline">
  			<input class="form-check-input" type="radio" name="type" id="type1" value="1">
  			<label class="form-check-label" for="type1">
    		판매자
  			</label>
		</div>
		<div class="form-check form-check-inline">
  			<input class="form-check-input" type="radio" name="type" id="type2" value="2">
  			<label class="form-check-label" for="type2">
    		구매자
  			</label>
		</div>
		
		<br><br>
		<button type="submit" class="btn btn-primary">가입</button>
		<button type="reset" class="btn btn-primary">취소</button>
	</form>
</div>
</body>
</html>