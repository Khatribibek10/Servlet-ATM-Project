<%@page import="java.sql.Connection"%>
<%@page import="com.atmProject.database.DatabaseConnection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>choose</title>
<link rel="stylesheet" href="style/style.css"/>
</head>
<body >
    <form class="main-container" action="indexLogicServlet" method="post">
        <div>
            <div class="name"><h1 class="name-b" id=>ATM PROJECT</h1></div>
            <div class="main">
                <div class="pas" id="pas" style="display:block">
                    <div><h1 class="heading head1" id="accNo">Please Enter Your AccountNo</h1></div>
                    <div id="accDiv" style="display:block;">
                        <input type="text" id="pin1" placeholder="" class="pin" maxlength="6" name="accno"/>
                        <div><h1 class="heading head1" id="pin">Please Enter Your Pin</h1></div>
                        <div id="pinDiv" style="display:block;">
                            <input type="password" id="pin1" placeholder="" class="pin" maxlength="4" name="pin"/>
                            <button class="btnOK" id="btnEnter">Enter</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>
    
</body>
</html>