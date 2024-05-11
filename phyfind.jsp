<%-- 
    Document   : my
    Created on : Oct 13, 2023, 7:17:36 PM
    Author     : Dell
--%>

<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
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
            function display(){
                document.form1.action="phyclear.jsp"
                document.form1.submit();
            }
            </script>
    </head>
    <body bgcolor="#90e0ef">
        <% 
           String u=request.getParameter("uname1");
           String i="";
           String a="";
           String h="";
           if(u!=null)
           {
               PreparedStatement ps= new BV.Connect().con.prepareStatement("select * from physical where name = ? ");
               ps.setString(1,u);
               ResultSet rs=ps.executeQuery();
               if(rs.next())
               {
                   i=rs.getString(2);
                   a=rs.getString(3);
                   h=rs.getString(4);
               }
               else
               {
                   %>
                   <script type="text/javascript">
                       alert("Error exist");
                       </script>
            <%   }
           }
            if(u==null){
                 i="";
            a="";
            h="";}
            %>
             <form name="form1" method="post"><center>
        <h1 style="color:#03045e ">PHYSICAL</h1>
        <img src="phy.jpg" width="1280" height="328" alt="phy"/>
        <h2 style="color:#132a13; font-style: oblique;"><u>Fill the Details:</u></h2>
        <h2 style="color:#780000">UserName:&ensp; <input type="text" name="uname1" value="<%=u%>" /></h2>
        <h2 style="color:#780000">Banasthali ID:&ensp; <input type="text" name="id1" value="<%=i%>" /></h2>
        <h2 style="color:#780000">Activity Name: <input type="text" name="activity1" value="<%=a%>" /></h2>
        <h2 style="color:#780000">Hostel Name: &ensp;<input type="text" name="hostel1" value="<%=h%>" /></h2>
        <input type="submit" value="Confirm" style="color: #ef476f; font-style: italic; font-size: 18px; " onclick="insert()" />&ensp;&ensp;&ensp;&ensp;<input type="button" value="Find" style="color: #ef476f; font-style: italic; font-size: 18px; " />&ensp;&ensp;&ensp;&ensp;<input type="button" value="Display" style="color: #ef476f; font-style: italic; font-size: 18px; " onclick="display()"/>&ensp;&ensp;&ensp;&ensp;<input type="submit" value="Delete" style="color: #ef476f; font-style: italic; font-size: 18px; " onclick="deleter()"/>&ensp;&ensp;&ensp;&ensp;<input type="button" value="Update" style="color: #ef476f; font-style: italic; font-size: 18px; " onclick="update()"/>
    </center>
         </center>
        
    </body>
</html>
