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
		var flag = confirm("���� �����ϰڽ��ϱ�?")
		if(flag){
			document.f.action="${pageContext.request.contextPath }/seller/Del?num=${p.num }";
			document.f.submit();
		}else{
			alert("������ ��ҵǾ����ϴ�.");
		}
	}
</script>
</head>
<body>
<div class="container border border-primary rounded-4 border-opacity-25" style="margin-top: 30px; padding: 30px;" >
	<h3 class="text-primary">��ǰ ���� �Ǵ� ����</h3>
	<br>
	
	<form name="f" action="${pageContext.request.contextPath }/seller/Edit" method="post">
		<table border="1" class="table table-striped table-hover" style="margin-top: 10px;">
			<tr>
				<th>��ǰ��</th>
				<td><input type="text" class="form-control" value="${p.name }" name="name"></td>
			</tr>
			<tr>
				<th>ī�װ�</th>
				<td><input type="text" class="form-control" value="${p.category }" name="category"></td>
			</tr>
			<tr>
				<th>����</th>
				<td><input type="text" class="form-control" value="${p.price }" name="price"></td>
			</tr>
			<tr>
				<th>����</th>
				<td><input type="text" class="form-control" value="${p.quantity}" name="quantity"></td>
			</tr>
			<tr>
				<th>��ǰ �̹���</th>
				<td>${p.img }<br><img src="${p.img }" width="300" height="300"/></td>
			</tr>
			<tr>
				<th>��ǰ�󼼼���</th>
				<td><input type="text" class="form-control" value="${p.content }" name="content"></td>
			</tr>
			<tr>
				<td colspan="2">
					<input type="submit" class="btn btn-primary" value="����">
					<input type="button" class="btn btn-primary" value="����" onclick="a()">
				</td>
			</tr>
		</table>
		<input type="hidden" name="num" value="${p.num }">
	</form>
</div>
</body>
</html>