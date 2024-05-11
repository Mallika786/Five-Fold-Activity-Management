<%-- 
    Document   : intellectual1
    Created on : Oct 14, 2023, 4:22:29 PM
    Author     : Dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    
    <body>
        <%
            Object u=session.getAttribute("username");
            if(u!=null){
                %>
               <html>
    <head>
       <script type="text/javascript">
            function insert(){
                document.form1.action="intinsert.jsp"
                document.form1.submit();
            }
            function deleter(){
                document.form1.action="intdelete.jsp"
                document.form1.submit();
            }
            function update(){
                document.form1.action="intupdate.jsp"
                document.form1.submit();
            }
            function find(){
                document.form1.action="intfind.jsp"
                document.form1.submit();
            }
            
            function display(){
                document.form1.action="intdisplay.jsp"
                document.form1.submit();
            }
            function home(){
                document.form1.action="home.jsp"
                document.form1.submit();
            }
            </script>
            <style>
                h4{
                position: absolute;
                top: 0px;
                right: 0px;
                }
            </style>
    </head>
    <body bgcolor="#90e0ef">
        
    <form name="form1" method="post"><center>
            <h1 style="color:#03045e ">INTELLECTUAL</h1><input type="submit" value="Home" />
        <a href="home.jsp"><h4><input type="submit" value="Home" onclick="home()" /></h4>  </a>
        <img src="inte.jpg" width="1280" height="328" alt="phy"/>
        <h2 style="color:#132a13; font-style: oblique;"><u>Fill the Details:</u></h2>
        <h2 style="color:#780000">UserName:&ensp; <input type="text" name="uname1" value="" /></h2>
        <h2 style="color:#780000">Banasthali ID:&ensp; <input type="text" name="id1" value="" /></h2>
        <h2 style="color:#780000">Activity Name: <input type="text" name="activity1" value="" /></h2>
        <h2 style="color:#780000">Hostel Name: &ensp;<input type="text" name="hostel1" value="" /></h2>
        <input type="submit" value="Confirm" style="color: #ef476f; font-style: italic; font-size: 18px; " onclick="insert()" />&ensp;&ensp;&ensp;&ensp;<input type="button" value="Find" style="color: #ef476f; font-style: italic; font-size: 18px; " onclick="find()"/>&ensp;&ensp;&ensp;&ensp;<input type="button" value="Display" style="color: #ef476f; font-style: italic; font-size: 18px; " onclick="display()"/>&ensp;&ensp;&ensp;&ensp;<input type="submit" value="Delete" style="color: #ef476f; font-style: italic; font-size: 18px; " onclick="deleter()"/>&ensp;&ensp;&ensp;&ensp;<input type="button" value="Update" style="color: #ef476f; font-style: italic; font-size: 18px; " onclick="update()"/>
    </center>
    </form>
    </body>
</html>

           <% }
           else
            response.sendRedirect("error.html");
            %>
    </body>
</html>
