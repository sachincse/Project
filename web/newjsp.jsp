<%-- 
    Document   : newjsp
    Created on : Jul 11, 2017, 12:47:17 PM
    Author     : Anu Singh
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
       
<jsp:include page="home/header_top.jsp"/>
    </head>
    <body>
        <h1>Hello World!</h1>
        <h2>
            <form method ="get" action ="index.js?action=jfj&nfdif=nfi">
                <input text ="name" >
                <input type="submit" value="click">
            </form>
        </h2>
    </body>
</html>
