<%-- 
    Document   : phydisplay
    Created on : Oct 13, 2023, 8:44:12 PM
    Author     : Dell
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!--<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
    <center><table border="1">
            <tr>
                <th>Name</th>
                <th>Banasthali_id</th>
                <th>Activity</th>
                <th>Hostel</th>
            </tr>
            <tr>
                <td</td>
            </tr>
            
            
        
</table>
</center>
    </body>
</html>-->
<html>
    <head>
       <script type="text/javascript">
            function insert(){
                document.form1.action="phyinsert.jsp"
                document.form1.submit();
            }
            function deleter(){
                document.form1.action="phydelete.jsp"
                document.form1.submit();
            }
            function update(){
                document.form1.action="phyupdate.jsp"
                document.form1.submit();
            }
            function find(){
                document.form1.action="phyfind.jsp"
                document.form1.submit();
            }
            function clear(){
                document.form1.action="phyclear.jsp"
                document.form1.submit();
            }
            function display(){
                document.form1.action="phydisplay.jsp"
                document.form1.submit();
            }
            </script>
    </head>
    <body bgcolor="#90e0ef">
        
    <form name="form1" method="post"><center>
        <h1 style="color:#03045e ">PRACTICAL</h1>
        <img src="prac.jpg" width="1280" height="328" alt="phy"/>
        <h2 style="color:#132a13; font-style: oblique;"><u>Fill the Details:</u></h2>
        <h2 style="color:#780000">UserName:&ensp; <input type="text" name="uname1" value="" /></h2>
        <h2 style="color:#780000">Banasthali ID:&ensp; <input type="text" name="id1" value="" /></h2>
        <h2 style="color:#780000">Activity Name: <input type="text" name="activity1" value="" /></h2>
        <h2 style="color:#780000">Hostel Name: &ensp;<input type="text" name="hostel1" value="" /></h2>
        <input type="submit" value="Confirm" style="color: #ef476f; font-style: italic; font-size: 18px; " onclick="insert()" />&ensp;&ensp;&ensp;&ensp;<input type="button" value="Find" style="color: #ef476f; font-style: italic; font-size: 18px; " onclick="find()"/>&ensp;&ensp;&ensp;&ensp;<input type="button" value="Display" style="color: #ef476f; font-style: italic; font-size: 18px; " onclick="display()"/>&ensp;&ensp;&ensp;&ensp;<input type="submit" value="Delete" style="color: #ef476f; font-style: italic; font-size: 18px; " onclick="deleter()"/>&ensp;&ensp;&ensp;&ensp;<input type="button" value="Update" style="color: #ef476f; font-style: italic; font-size: 18px; " onclick="update()"/>
    </center>
        <center><table border="1">
            <tr>
                <th>Name</th>
                <th>Banasthali_id</th>
                <th>Activity</th>
                <th>Hostel</th>
            </tr>
         <%
            try{
            Connection con=new BV.Connect().con;
            Statement stat=con.createStatement();
            ResultSet rs=stat.executeQuery("Select * from practical");
            while(rs.next()){
                %>
            <tr>
                <td><%=rs.getString("name")%></td>
                <td><%=rs.getString("banasthali_id")%></td>
                <td><%=rs.getString("activity")%></td>
                <td><%=rs.getString("hostel")%></td>
            </tr>
            <% }
            }catch(Exception e){
}
            
            
        %>
</table>
</center>
    </form>
    </body>
</html>

