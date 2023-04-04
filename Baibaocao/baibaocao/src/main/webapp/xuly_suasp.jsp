<%@page import="abc.database"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>

<%
	request.setCharacterEncoding("utf-8");
	String id2 = request.getParameter("idsp");
	String name2 = request.getParameter("tensp");
	String dg2 = request.getParameter("giasp");
	String sl2 = request.getParameter("SOluong");
	try{
		Connection con = database.connect();
		Statement st = con.createStatement();
		String sql = "update sanphamga set tensp=N'"+name2+"',giasp=N'"+dg2+"',SOLUONG=N'"+sl2+"'where idsp="+id2;
		st.executeUpdate(sql);
		response.sendRedirect("ql_sanpham.jsp");
		st.close();
		con.close();
	}catch(Exception e){
		out.print(e);
	}
%>