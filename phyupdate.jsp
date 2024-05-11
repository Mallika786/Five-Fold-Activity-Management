<%-- 
    Document   : phyupdate
    Created on : Oct 13, 2023, 6:49:38 PM
    Author     : Dell
--%>

<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            Connection con=new BV.Connect().con;
            String u=request.getParameter("uname1");
            String a=request.getParameter("activity1");
            PreparedStatement ps=con.prepareStatement("Update physical set activity=? where name=?");
            ps.setString(1,a);
            ps.setString(2,u);
            if(ps.executeUpdate()>0){
                   %>
                   <script type="text/javascript">
                       alert("Data updated successfully!");
                       </script>
            <%   }
            else
                {
                   %>
                   <script type="text/javascript">
                       alert("Sorry, there's an error!");
                       </script>
            <%   }
        %>
    </body>
</html>
