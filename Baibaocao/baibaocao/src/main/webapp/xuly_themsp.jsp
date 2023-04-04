<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="utf-8"%>
    <%@page import="abc.database" %>
    <%
		request.setCharacterEncoding("utf-8");
    	String id = request.getParameter("idsp");
    	String tensp = request.getParameter("tensp");
    	String giasp = request.getParameter("dongia");
    	String sl = request.getParameter("SOLUONG");
    	String hinh = request.getParameter("urlhinhanh");
    	try{
    		Connection con = database.connect();
			Statement st = con.createStatement();
			String sql="insert into sanphamga values ('"+ id + "',N'"+tensp+"',N'"+giasp+ "',N'"+sl+"',N'"+hinh+"')";
			st.executeUpdate(sql);
			out.println("Thanh Cong");
			response.sendRedirect("ql_sanpham.jsp");
			st.close();
			con.close();
    	}catch(Exception e){
    		out.print(e);
    	}
		%>