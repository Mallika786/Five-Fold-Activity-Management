<%-- 
    Document   : home
    Created on : Oct 11, 2023, 3:22:28 PM
    Author     : Dell
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <style>
            img{
                background-size: cover;
            }
            h4{
                position: absolute;
                top: 0px;
                right: 0px;
                }
        </style>
        <script type="text/javascript">
            function signup(){
                document.form2.action="physical.html"
                document.form2.submit();
            }
        </script>
    </head>
    <body>
         <%
            Object u=session.getAttribute("username");
            if(u!=null){
                %>
<center>
        <h1 style="color: #43aa8b;"><u>Panchmukhi Shiksha</u></h1>
        <h3 style="color: #01497c">(Five Fold Education)</h3></center>
        <a href="logout.jsp"><h4><input type="submit" value="Log Out" style="background-color:red;"/> </h4>  </a>
        <img src="bv2.jpg" width="1500" height="71" alt="bv2"/>
        <p>Banasthali Vidyapith aims at the synthesis of spiritual value of the East and scientific spirit of the West. The main thrust of all the activities of the Banasthali Vidyapith is the development of a complete personality. The institution firmly believes that the personality consists of interdependent components, each being equally important requiring equal attention and can only be developed through a wholesome education. </p>
        <h3 style="color: #f94144">Physical:</h3><p>Under physical education programme, various activities like parade , shooting, riding, flying, girl guiding, bulbul, swimming, yoga and various modern and traditional sports like kabbadi, kho-kho, hockey, basket ball, badminton, long jump, high jump etc . are included. </p>
        <h3 style="color: #f94144">Aesthetic:</h3><p>Students learn  music and  painting up to class v,. They can choose either music (vocal or instrumental) or painting. Dance education is being provided to  the students  of all levels.</p>
        <h3 style="color: #f94144">Practical:</h3><p>Under practical education sanganary printing & dying, batique, bandhej, tailoring, embroidery, craft, papermache etc. are included. Under domestic education, students are supposed to perform cleaning and washing and collective Shramadan.</p>
        <h3 style="color: #f94144">Moral:</h3><p> The aim of moral education is to develop personality of the students, so as to cultivate in them the feeling of respect for all religions. It is achieved by the means of weekly prayers, talks, Veda, Geeta & Ramayana path etc. The common evening prayer and Udbodhen program is unique.</p>
        <h3 style="color: #f94144">Intellectual:</h3><p> Intellectual education is being given to the students in order to avoid the relative aspects of modern education. Natural and social sciences with languages and Maths are being taught with sciences from the beginning . Education methods are adopted with the help of projects related to social and natural environment.</p>
        <center><h2 style="color: #43aa8b">Select your preference:</h2>
            <a href="physical1.jsp"><input type="button" value="Physical" style="color: #5a189a; font-style: italic; font-size: 18px; " /></a>&emsp;&emsp;&emsp;&emsp;<a href="aesthetic1.jsp"><input type="button" value="Aesthetic" style="color: #5a189a; font-style: italic; font-size: 18px;"/></a>&emsp;&emsp;&emsp;&emsp;<a href="practical1.jsp"><input type="button" value="Practical" style="color: #5a189a; font-style: italic; font-size: 18px;"/></a>&emsp;&emsp;&emsp;&emsp;<a href="moral1.jsp"><input type="button" value="Moral" style="color: #5a189a; font-style: italic; font-size: 18px;"/></a>&emsp;&emsp;&emsp;&emsp;<a href="intellectual1.jsp"><input type="button" value="Intellectual" style="color: #5a189a; font-style: italic; font-size: 18px;"/></a><br>
            <br><img src="hom.jpg" width="1280" height="328" alt="hom"/>
        </center>
           <% }
           else
            response.sendRedirect("error.html");
            %>
<!--    <center>
        <h1 style="color: #43aa8b;"><u>Panchmukhi Shiksha</u></h1>
        <h3 style="color: #01497c">(Five Fold Education)</h3></center>
        <h4><input type="submit" value="Log Out" style="background-color:;"/> </h4>  
        <img src="bv2.jpg" width="1500" height="71" alt="bv2"/>
        <p>Banasthali Vidyapith aims at the synthesis of spiritual value of the East and scientific spirit of the West. The main thrust of all the activities of the Banasthali Vidyapith is the development of a complete personality. The institution firmly believes that the personality consists of interdependent components, each being equally important requiring equal attention and can only be developed through a wholesome education. </p>
        <h3 style="color: #f94144">Physical:</h3><p>Under physical education programme, various activities like parade , shooting, riding, flying, girl guiding, bulbul, swimming, yoga and various modern and traditional sports like kabbadi, kho-kho, hockey, basket ball, badminton, long jump, high jump etc . are included. </p>
        <h3 style="color: #f94144">Aesthetic:</h3><p>Students learn  music and  painting up to class v,. They can choose either music (vocal or instrumental) or painting. Dance education is being provided to  the students  of all levels.</p>
        <h3 style="color: #f94144">Practical:</h3><p>Under practical education sanganary printing & dying, batique, bandhej, tailoring, embroidery, craft, papermache etc. are included. Under domestic education, students are supposed to perform cleaning and washing and collective Shramadan.</p>
        <h3 style="color: #f94144">Moral:</h3><p> The aim of moral education is to develop personality of the students, so as to cultivate in them the feeling of respect for all religions. It is achieved by the means of weekly prayers, talks, Veda, Geeta & Ramayana path etc. The common evening prayer and Udbodhen program is unique.</p>
        <h3 style="color: #f94144">Intellectual:</h3><p> Intellectual education is being given to the students in order to avoid the relative aspects of modern education. Natural and social sciences with languages and Maths are being taught with sciences from the beginning . Education methods are adopted with the help of projects related to social and natural environment.</p>
        <center><h2 style="color: #43aa8b">Select your preference:</h2>
            <a href="physical1.html"><input type="button" value="Physical" style="color: #5a189a; font-style: italic; font-size: 18px; " /></a>&emsp;&emsp;&emsp;&emsp;<a href="aesthetic1.html"><input type="button" value="Aesthetic" style="color: #5a189a; font-style: italic; font-size: 18px;"/></a>&emsp;&emsp;&emsp;&emsp;<a href="practical1.html"><input type="button" value="Practical" style="color: #5a189a; font-style: italic; font-size: 18px;"/></a>&emsp;&emsp;&emsp;&emsp;<a href="moral1.html"><input type="button" value="Moral" style="color: #5a189a; font-style: italic; font-size: 18px;"/></a>&emsp;&emsp;&emsp;&emsp;<a href="intellectual1.html"><input type="button" value="Intellectual" style="color: #5a189a; font-style: italic; font-size: 18px;"/></a><br>
            <br><img src="hom.jpg" width="1280" height="328" alt="hom"/>
        </center>-->
        
    </body>
</html>