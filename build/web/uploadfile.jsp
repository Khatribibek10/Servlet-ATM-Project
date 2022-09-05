<%-- 
    Document   : uploadfile
    Created on : Mar 9, 2022, 3:24:34 PM
    Author     : khatr
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action="UploadServlet" method="post">
            <input type="file">
            <input type="submit" value="Submit">
        </form>
    </body>
</html>
