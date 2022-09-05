<%-- 
    Document   : withdraw
    Created on : Feb 15, 2022, 1:14:48 PM
    Author     : khatr
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Withdraw</title>
        <link rel="stylesheet" href="style/style.css"/>
    </head>
    <body>
        <form class="main-container" action="withdrawLogicServlet" method="post">
  
   <div class="name"><h1 class="name-b" id=>ATM PROJECT</h1></div>
   <div class="main">
    <div class="pas" id="pas" style="display:block">
     <div><h1 class="heading head1" id="accNo">Please Enter Your Amount</h1></div>
     <div id="accDiv" style="display:block;">
         <input type="text" id="withdraw" placeholder="" class="pin" name="amount" />
    <div><h1 class="heading head1" id="pinHeading">Please Enter Your Pin</h1></div>
    <div id="pinDiv" style="display:block;">
    <input type="password" id="pin" placeholder="" class="pin" maxlength="4" name="pin"/>
    <button class="btnOK" id="btnEnter">Enter</button>
    </div>
    </div>
   </div>
   </div>
       </form>
    </body>
</html>
