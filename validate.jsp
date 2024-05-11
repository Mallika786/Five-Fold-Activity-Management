<%-- 
    Document   : validate
    Created on : Oct 10, 2023, 6:33:50 PM
    Author     : Dell
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <body>
        <%
            Connection con=new BV.Connect().con;
            String u=request.getParameter("usname");
            String p=request.getParameter("upass");
            PreparedStatement ps=con.prepareStatement("select * from "
                    + "Login where name=? and password=?");
            ps.setString(1,u);
            ps.setString(2,p);
            ResultSet rs=ps.executeQuery();
            if(rs.next()){
                session.setAttribute("username",rs.getString(1));
                response.sendRedirect("home.jsp");}
            else
                response.sendRedirect("error.html");
        %>
    </body>
</html>
