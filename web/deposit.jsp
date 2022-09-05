<%-- 
    Document   : deposit
    Created on : Feb 15, 2022, 12:56:47 PM
    Author     : khatr
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Deposit</title>
<link rel="stylesheet" href="style/style.css"/>
</head>
<body >
<form class="main-container"action="depositLogicServlet" method="post">
            <div class="name"><h1 class="name-b" id=>ATM PROJECT</h1></div>
            <div class="main">
                <div class="pas" id="pas" style="display:block">
                    <div><h1 class="heading head1" id="oldPin">Please Enter Your Account Number:</h1></div>
                    <div id="accDiv" style="display:block;">
                        <input type="text" id="withdraw" placeholder="" class="pin" maxlength="6" name="accno"/>
                        <div><h1 class="heading head1" id="newPin">Please Enter Your Amount:</h1></div>
                        <div id="pinDiv" style="display:block;">
                            <input type="text" id="pin" placeholder="" class="pin" name="amount"/>
                            <button class="btnOK" id="btnEnter">Enter</button>
                        </div>
                    </div>
                </div>
            </div>
        </form>
    
</body>
</html>
