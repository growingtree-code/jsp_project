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
<script type="text/javascript">
	function a(){
		var flag = confirm("정말 삭제하겠습니까?")
		if(flag){
			document.f.action="${pageContext.request.contextPath }/seller/Del?num=${p.num }";
			document.f.submit();
		}else{
			alert("삭제가 취소되었습니다.");
		}
	}
</script>
</head>
<body>
<div class="container border border-primary rounded-4 border-opacity-25" style="margin-top: 30px; padding: 30px;" >
	<h3 class="text-primary">상품 수정 또는 삭제</h3>
	<br>
	
	<form name="f" action="${pageContext.request.contextPath }/seller/Edit" method="post">
		<table border="1" class="table table-striped table-hover" style="margin-top: 10px;">
			<tr>
				<th>상품명</th>
				<td><input type="text" class="form-control" value="${p.name }" name="name"></td>
			</tr>
			<tr>
				<th>카테고리</th>
				<td><input type="text" class="form-control" value="${p.category }" name="category"></td>
			</tr>
			<tr>
				<th>가격</th>
				<td><input type="text" class="form-control" value="${p.price }" name="price"></td>
			</tr>
			<tr>
				<th>수량</th>
				<td><input type="text" class="form-control" value="${p.quantity}" name="quantity"></td>
			</tr>
			<tr>
				<th>상품 이미지</th>
				<td>${p.img }<br><img src="${p.img }" width="300" height="300"/></td>
			</tr>
			<tr>
				<th>상품상세설명</th>
				<td><input type="text" class="form-control" value="${p.content }" name="content"></td>
			</tr>
			<tr>
				<td colspan="2">
					<input type="submit" class="btn btn-primary" value="수정">
					<input type="button" class="btn btn-primary" value="삭제" onclick="a()">
				</td>
			</tr>
		</table>
		<input type="hidden" name="num" value="${p.num }">
	</form>
</div>
</body>
</html>