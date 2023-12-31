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
	function a(price, discount){
		var sel = f.quantity.options[f.quantity.selectedIndex].value;
		var q = parseInt(sel);
		var total = Math.ceil(q*price*(1-discount));
		f.total_price.value = total;
	}
	
	function b(){
		f.o_state.value="1";
		f.submit()
	}
</script>
</head>
<body>
<form name="f" action="${pageContext.request.contextPath }/order/add" method="post" class="container border border-primary rounded-4 border-opacity-25" style="margin-top: 30px; padding: 30px;">
<table border="1" class="table table-striped">
<tr>
<th>상품명</th><td>${p.name }</td>
</tr>
<tr>
<th>카테고리</th><td>${p.category }</td>
</tr>
<tr>
<th>가격</th><td><span style="text-decoration: line-through;">${p.price } </span><br>${p.price * (1-discount) }</td>
</tr>
<tr>
<th>주문수량</th><td><select name="quantity" onchange="a(${p.price }, ${discount })">
<option value="0">수량선택</option>
<option value="1">1</option>
<option value="2">2</option>
<option value="3">3</option>
<option value="4">4</option>
<option value="5">5</option>
</select>
</td>
</tr>
<tr>
<th>결제금액</th><td><input type="text" name="total_price"></td>
</tr>
<tr>
<th>상품 이미지</th><td><img src="${p.img }" width="300" height="300"/>
</td>
</tr>
<tr>
<th>상품상세설명</th><td>${p.content }</td>
</tr>
<tr>
<td colspan="2"><input type="submit" class="btn btn-primary" value="즉시주문">
<input type="button" value="장바구니에 담기" onclick="b()" class="btn btn-primary"></td>
</tr>
</table>
<input type="hidden" name="num" value="${p.num }">
<input type="hidden" name="o_state" value="0">
</form>
</body>
</html>