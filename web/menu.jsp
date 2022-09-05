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
        <title>Menu</title>
        <link rel="stylesheet" href="style/style.css"/>
    </head>
    <body>
        <form class="main-container" action="menuLogic.jsp" method="post">
            <div class="name"><h1 class="name-b" id=>ATM PROJECT</h1></div>
            <div class="buttons"  id="btnsSecreen">
                <div><h1 class="heading">Please Select Your Desired Transactions</h1></div>
                <div class="buttons-left">
                    <a class="btn" href="deposit.jsp" id="deposit"><h1 class="btn-text"><i style="font-size:21px;margin-right:10px; color:white" class="fas fa-caret-right"></i>Deposit</h1></a>
                    <a class="btn" href="withdraw.jsp" id="withdraw"><h1 class="btn-text"><i style="font-size:21px;margin-right:10px; color:white" class="fas fa-caret-right"></i>Cash Withdraw</h1></a>
                    <a class="btn" href="balanceEnquiryServlet" id="balance"><h1 class="btn-text"><i style="font-size:21px;margin-right:10px; color:white" class="fas fa-caret-right"></i>Balance Inquiry</h1></a>

                </div>
                <div class="buttons-right">
                    <a class="btn" href="fastcash.jsp" id="fastCash"><h1 class="btn-text"><i style="font-size:21px;margin-right:10px; color:white" class="fas fa-caret-right"></i>Fast Cash</h1></a>
                    <a class="btn" href="pinChange.jsp" id="pinChange"><h1 class="btn-text"><i style="font-size:21px;margin-right:10px; color:white" class="fas fa-caret-right"></i>Pin Change</h1></a>
                    <a class="btn" href="exit.jsp" id="Exit"><h1 class="btn-text"><i style="font-size:21px;margin-right:10px; color:white" class="fas fa-caret-right"></i>Exit</h1></a>


                </div>
            </div>
        </form>
    </body>
</html>
