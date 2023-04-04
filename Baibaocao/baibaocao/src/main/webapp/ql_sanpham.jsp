<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@page import="abc.database"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
<style>
td{
	text-align:center
}
</style>
</head>
<body>
	<table border="1" width=60%>
		<tr>
			<td colspan="2"> <h1 align="center">QUẢN LÝ SẢN PHẨM</h1> </td>
		</tr>
		<tr>
			<td>Sản phẩm</td>
			<td>
				<a href="themsanpham.jsp">Thêm mới</a>
				<table border="1" width=100% >
					<tr>
						<td>ID sản phẩm</td>
						<td>Tên sản phẩm</td>
						<td>Đơn giá</td>										
						<td>Số Lượng</td>
						<td>Hình ảnh:</td>
						<td>Nút lệnh</td>
					</tr>
					<%
					request.setCharacterEncoding("utf-8");
					try{
						Connection connect = database.connect();
						Statement st = connect.createStatement();
						String sql = "Select * from sanphamga";
						ResultSet rs = st.executeQuery(sql);
						while(rs.next())
						{
					
					%>
					<tr>
						<td><p name="id"><%=rs.getString("idsp") %></p></td>
						<td><p name="ten"><%=rs.getString("tensp") %></p></td>
						<td><p name="gia"><%=rs.getString("giasp") %></p></td>
						<td><p name="sol"><%=rs.getString("SOLUONG") %></p></td>
						<td><img src ="img/<%= rs.getString("urlhinhanh") %>" width="100px" height = "100px"> </td>
						<td>
							<a href="xoasanpham.jsp?id=<%=rs.getString("idsp") %>">Xoá</a>
							<a href="sua_sp.jsp?id=<%=rs.getString("idsp") %>">Sửa</a> 
						</td>
					</tr>
					
					<%	}
						st.close();
						connect.close();
					}catch(Exception e){
						out.print(e);
					}
					%>
				</table>
			</td>
		</tr>
	</table>
	<a href="index.jsp" >Trang chủ</a>
</body>
</html>


