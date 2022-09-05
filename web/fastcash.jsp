<%-- 
    Document   : menu
    Created on : Feb 15, 2022, 12:37:04 PM
    Author     : khatr
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Fast Cash</title>
        <link rel="stylesheet" href="style/style.css"/>
    </head>
    <body>
        <form class="main-container" action="fastCashServlet" method="post">
            <div class="name"><h1 class="name-b" id=>ATM PROJECT</h1></div>
            <div class="buttons"  id="btnsSecreen">
                <div><h1 class="heading">Please Choose for Your Transactions</h1></div>
                <div class="buttons-left">
                    <a class="btn"  id="500"><h1 class="btn-text" name="fiveh"><i style="font-size:21px;margin-right:10px; color:white" class="fas fa-caret-right"></i>500</h1></a>
                    <a class="btn"  id="1000"><h1 class="btn-text" name="onet"><i style="font-size:21px;margin-right:10px; color:white" class="fas fa-caret-right"></i>1000</h1></a>
                    <a class="btn"  id="5000"><h1 class="btn-text" name="fivet"><i style="font-size:21px;margin-right:10px; color:white" class="fas fa-caret-right"></i>5000</h1></a>

                </div>
                <div class="buttons-right">
                    <a class="btn"  id="10000"><h1 class="btn-text" name="tent"><i style="font-size:21px;margin-right:10px; color:white" class="fas fa-caret-right"></i>10000</h1></a>
                    <a class="btn"  id="20000"><h1 class="btn-text" name="twentyt"><i style="font-size:21px;margin-right:10px; color:white" class="fas fa-caret-right"></i>20000</h1></a>
                    <a class="btn" href="exit.jsp" id="Exit"><h1 class="btn-text"><i style="font-size:21px;margin-right:10px; color:white" class="fas fa-caret-right"></i>Exit</h1></a>


                </div>
            </div>
        </form>
    </body>
</html>
