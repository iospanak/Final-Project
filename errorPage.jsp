<%@page  isErrorPage="true" %>

<%-- 
    Document   : errorPage
    Created on : 13 Ιαν 2012, 2:07:53 μμ
    Author     : Ioannis
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>ERROR!!!</h1>
        <strong> 
            You probably entered a wrong input. Only digits 0-9 and a decimal point are allowed.
            Please go back and enter an acceptable input.<br></br>
            If your input is legal:<br></br>
            -Check your connection<br></br>
            -Possibly our server is on maintenance. We apologise for the inconvenience<br></br>
        </strong>        
       Exception type is: ${pageContext.exception}
    </body>
</html>
