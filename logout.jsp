<%-- 
    Document   : logout
    Created on : Oct 14, 2023, 4:29:30 PM
    Author     : Dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    
    <body>
        <%
            session.removeAttribute("username");
            response.sendRedirect("signin.html");
            %>
    </body>
</html>
