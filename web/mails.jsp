<%-- 
    Document   : mails
    Created on : Mar 17, 2022, 3:10:50 PM
    Author     : khatr
--%>

<%@page import="javax.mail.Transport"%>
<%@page import="javax.mail.Message"%>
<%@page import="javax.mail.internet.InternetAddress"%>
<%@page import="javax.mail.internet.MimeMessage"%>
<%@page import="javax.mail.PasswordAuthentication"%>
<%@page import="javax.mail.Authenticator"%>
<%@page import="javax.mail.Session"%>
<%@page import="java.util.Properties"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String result;
            final String to = "khatribk10@gmail.com";
            final String subject = "Your booking sucessful";
            final String messages = "please visit the hotel";

// sender's emailid and password
            final String from = "bibekkhatri709@gmail.com";//sender email
            final String pass = "testpurpose@123";//sender's password

//define the gmail host
            String host = "smtp.gmail.host";

// create the properties object
            Properties pros = new Properties();

//define the properties
            pros.put("mail.stmp.host", host);
            pros.put("mail.transport.protocol", "smtp");
            pros.put("mail.smtp.auth", "true");
            pros.put("mail.smtp.starttls.enable", "true");
            pros.put("mail.user", from);
            pros.put("mail.password", pass);
            pros.put("mail.smto.port", "587");

// authorized the session objects
            Session mailSession = Session.getInstance(pros, new Authenticator() {

                protected PasswordAuthentication getPasswordAuthentication() {
                    return new PasswordAuthentication(from, pass);
                }
            });

//create a default mime message object
            try {
                MimeMessage message = new MimeMessage(mailSession);

                //set from: header field
                message.addRecipient(Message.RecipientType.TO, new InternetAddress(to));

                //set the subject
                message.setSubject(subject);

                //set the message field
                message.setText(messages);

                //send the message
                Transport.send(message);
                result = "Mail send Sucessfully";
                System.out.println(result);
                response.sendRedirect("reservation.jsp");

            } catch (Exception e) {
                e.printStackTrace();
                result = "Error: Unable to send the message";
            }
        %>
    </body>
</html>
