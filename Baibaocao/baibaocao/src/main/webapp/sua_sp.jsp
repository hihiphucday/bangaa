<%@page import="abc.database"%>
<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%
		request.setCharacterEncoding("utf-8");
		String id2 = request.getParameter("id");
		try{
			Connection con = database.connect();
			Statement st = con.createStatement();
			String sql ="select * from sanphamga where idsp=" +id2;
			ResultSet rs = st.executeQuery(sql);
			if(rs.next()){
	%>
<html>
<body>
	<form action="xuly_suasp.jsp" method="post">
		<table border="1">
			<tr>
				<td>ID sản phẩm: </td>
				<td> <input type="text" name="idsp" readonly="readonly" value="<%=rs.getString("idsp") %>"> </td>
			</tr>
			<tr>
				<td>Tên sản phẩm: </td>
				<td> <input type="text" name="tensp" value="<%out.print(rs.getString("tensp")); %>"> </td>
			</tr>
			<tr>
				<td>Đơn giá: </td>
				<td> <input type="text" name="giasp" value="<%out.print(rs.getString("giasp")); %>"> </td>
			</tr>
			<tr>
				<td>So Luong: </td>
				<td> <input type="text" name="SOluong" value="<%out.print(rs.getString("SOLUONG")); %>"> </td>
			</tr>
			<tr>
				<td colspan="2" align="center"> <input type="submit" value="Sửa"> </td>
			</tr>
		</table>
	</form>
	<% }
			st.close();
			con.close();
		}catch(Exception e){
			out.print(e);
		}
	
	%>
</body>
</html>