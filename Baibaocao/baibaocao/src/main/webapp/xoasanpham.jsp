
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@page import="java.sql.*" %>
    <%@page import="abc.database" %>
<%
		request.setCharacterEncoding("utf-8");
    	int id = Integer.parseInt(request.getParameter("id"));
    	
    	try{
    		Connection con = database.connect();
			Statement st = con.createStatement();
			String sql="delete from sanphamga where idsp = "+id;
			st.executeUpdate(sql);
            response.sendRedirect("ql_sanpham.jsp");
			st.close();
			con.close();
    	}catch(Exception e){
    		out.print(e);
    	}
		%>