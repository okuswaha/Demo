<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>
<HTML>
    <HEAD>
        <TITLE>Login using jsp</TITLE>
    </HEAD>
     <BODY>
        <H1>LOGIN FORM</H1>
        <c:if test=""></c:if>
        <c:out value="Hello World"></c:out>
        
        <%
        String myname =  (String)session.getAttribute("username");
         if(myname!=null)
            {
             out.println("Welcome  "+myname+"  , <a href=\"logout.jsp\" >Logout</a>");
            }
        else 
            {
            %>
            <form action="checkLogin.jsp">
                <table>
                    <tr>
                        <td> Username  : </td><td> <input name="username" size=15 type="text" /> </td> 
                    </tr>
                    <tr>
                        <td> Password  : </td><td> <input name="password" size=15 type="text" /> </td> 
                    </tr>
                </table>
                <input type="submit" value="login" />
            </form>
            <% 
            }
            %>
         
    </BODY>
</HTML>