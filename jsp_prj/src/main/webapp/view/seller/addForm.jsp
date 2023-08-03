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
	<h3 class="text-primary">��ǰ ���</h3>
	<br>
	
	<form action="${pageContext.request.contextPath }/seller/Add" method="post" enctype="multipart/form-data">
		<div class="mb-3">
			<label for="name" class="form-label">��ǰ��</label>
			<input type="text" class="form-control" name="name" id="name">
		</div>
		
		<div class="mb-3">
			<label for="category" class="form-label">ī�װ�</label>
			<select class="form-select" name ="category" id="category">
				<option value="0">ī�װ�����</option>
				<option value="FOOD">����</option>
				<option value="FURNITURE">����</option>
				<option value="IT">IT��ǰ</option>
			</select>
		</div>
		
		<div class="mb-3">
			<label for="quantity" class="form-label">����</label>
			<input type="text" class="form-control" name="quantity" id="quantity">
		</div>
		
		<div class="mb-3">
			<label for="price" class="form-label">����</label>
			<input type="text" class="form-control" name="price" id="price">
		</div>
		
		<div class="input-group mb-3">
		  <label class="input-group-text" for="file">�̹��� ���ε�</label>
		  <input type="file" class="form-control" id="file" name="file">
		</div>
		
		<div class="input-group mb-3">
		  <span class="input-group-text">�󼼼���</span>
		  <textarea class="form-control" name="content"></textarea>
		</div>
	
		<button type="submit" class="btn btn-primary">���</button>
		<button type="reset" class="btn btn-primary">���</button>
	</form>
</div>
</body>
</html>