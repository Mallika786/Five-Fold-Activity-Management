<%-- 
    Document   : phydelete
    Created on : Oct 13, 2023, 6:31:03 PM
    Author     : Dell
--%>

<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <body>
        <%
            Connection con=new BV.Connect().con;
            String u=request.getParameter("uname1");
            PreparedStatement ps=con.prepareStatement("delete from intellectual where name=?");
            ps.setString(1,u);
            if(ps.executeUpdate()>0){
                   %>
                   <script type="text/javascript">
                       alert("Data deleted successfully!");
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

