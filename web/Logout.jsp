<%-- 
    Document   : Logout
    Created on : Oct 12, 2016, 4:19:56 PM
    Author     : DuongNguyen
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Logout Page</title>
    </head>
    <body>
        <%
            if (session != null) {
                session.removeAttribute("youremail");
                response.sendRedirect("index.jsp");
            }
        %>
    </body>
</html>
