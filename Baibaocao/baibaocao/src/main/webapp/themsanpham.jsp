<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
	<h1 align="Center" >Thêm mới sản phẩm</h1>
	<form action="xuly_themsp.jsp" method="post" style="font-size: 20px" >
		<table align="center"  >
			<tr>
				<td>ID sản phẩm: </td>
				<td> <input type="number" name="idsp"> </td>
			</tr>
			<tr>
				<td>Tên sản phẩm: </td>
				<td> <input type="text" name="tensp"> </td>
			</tr>
			<tr>
				<td>Đơn giá: </td>
				<td> <input type="number" maxlength="11" name="dongia"> </td>
			</tr>
			<tr>
				<td>So Luong: </td>
				<td> <input type="text" name="SOLUONG"> </td>
			</tr>
			<tr>
				<td>Hinh anh</td>
				<td> <input type="file" name ="urlhinhanh"></td>
			</tr>
			<tr>
				<td colspan="2" align="center"> <input type="submit" value="Thêm mới"> </td>
			</tr>
		</table>
	</form>
</body>
</html>
