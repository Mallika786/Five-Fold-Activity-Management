<%-- 
    Document   : phyinsert
    Created on : Oct 13, 2023, 6:17:30 PM
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
            String i=request.getParameter("id1");
            String a=request.getParameter("activity1");
            String h=request.getParameter("hostel1");
            //String p=request.getParameter("pass");
            PreparedStatement ps=con.prepareStatement("insert into intellectual (name,banasthali_id,activity,hostel) values (?,?,?,?)");
            ps.setString(1,u);
            ps.setString(2,i);
            ps.setString(3,a);
            ps.setString(4,h);
            //ps.setString(5,p);
            if(ps.executeUpdate()>0){
                   %>
                   <script type="text/javascript">
                       alert("Data entered successfully!");
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

