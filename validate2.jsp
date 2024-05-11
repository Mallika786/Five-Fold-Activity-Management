<%-- 
    Document   : validate2.jsp
    Created on : Oct 11, 2023, 11:55:18 AM
    Author     : Dell
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
   
    </head>
    <body>
         <%
            Connection con=new BV.Connect().con;
            String u=request.getParameter("uname");
            String r=request.getParameter("roll");
            String c=request.getParameter("course");
            String e=request.getParameter("email");
            String p=request.getParameter("pass");
            PreparedStatement ps=con.prepareStatement("insert into Login (name,roll_no,course,email_id,password) values (?,?,?,?,?)");
            ps.setString(1,u);
            ps.setString(2,r);
            ps.setString(3,c);
            ps.setString(4,e);
            ps.setString(5,p);
            if(ps.executeUpdate()>0){
//                request.setAttribute("Message","Signed Up succesfully.");
                response.sendRedirect("signin.html");}
            else
                response.sendRedirect("error.html");
        %>
    </body>
</html>
