
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page errorPage="errorPage.jsp" %>
<%-- 
    Document   : index
    Created on : 13 Ιαν 2012, 11:09:08 πμ
    Author     : Ioannis
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<jsp:useBean id="Coffe" scope="page" class="newpackage.Item" />
<jsp:useBean id="Sugar" scope="page" class="newpackage.Item" />
<jsp:useBean id="Water" scope="page" class="newpackage.Item" />



<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
        
        
        <c:set var="coffetemp" scope="session" value= "0.0" />
        <c:set var="sugartemp" scope="session" value="0.0" />
        <c:set var="watertemp" scope="session" value="0.0" />

        
         
        <c:choose>
            <c:when test="${param.CoffeAmount == false}">
                <c:set var="coffetemp" scope="session" value= "${param.CoffeAmount}" />
            </c:when>
            <c:when test="${cookie.coffe.value == false}">
                <c:set var="coffetemp" scope="session" value= "${cookie.coffe.value}" />
            </c:when>
            <c:otherwise>
            </c:otherwise>
        </c:choose>
        
        
        
        
        <c:choose>
            <c:when test="${param.SugarAmount == false}">
                <c:set var="sugartemp" scope="session" value= "${param.SugarAmount}" />
            </c:when>
            <c:when test="${cookie.sugar.value == false}">
                <c:set var="sugartemp" scope="session" value= "${cookie.sugar.value}" />
            </c:when>
            <c:otherwise>
            </c:otherwise>
        </c:choose>
        
        <c:choose>
            <c:when test="${param.WaterAmount == false}">
                <c:set var="watertemp" scope="session" value= "${param.WaterAmount}" />
            </c:when>
            <c:when test="${cookie.water.value == false}">
                <c:set var="watertemp" scope="session" value= "${cookie.water.value}" />
            </c:when>
            <c:otherwise>
            </c:otherwise>
        </c:choose>
        
       
       
        
        <jsp:setProperty name="Coffe" property="price" value="${initParam.Coffe}" />
        <jsp:setProperty name="Sugar" property="price" value="${initParam.Sugar}" />
        <jsp:setProperty name="Water" property="price" value="${initParam.Water}"/>
        
        <h1>Welcome to Shopping Cart!</h1>
        <form action="<c:url value="/index.jsp"/>" method="POST">
            <table border="1" width="1" cellspacing="1" cellpadding="1">
                <thead>
                    <tr>
                        <th>Item</th>
                        <th>Price</th>
                        <th>Quantity</th>
                        <th>Total</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>Coffe</td>
                        <td>${initParam.Coffe}</td>
                        <td><input type="text" name="CoffeAmount" value="${coffetemp}" /></td>
                        <jsp:setProperty name="Coffe" property="quantity" value="${coffetemp}" />
                        <td><jsp:getProperty name="Coffe" property="total" /></td>
                    </tr>
                    <tr>
                        <td>Sugar</td>
                        <td>${initParam.Sugar}</td>
                        <td><input type="text" name="SugarAmount" value="${sugartemp}" /></td>
                        <jsp:setProperty name="Sugar" property="quantity" value="${sugartemp}" />
                        <td><jsp:getProperty name="Sugar" property="total" /></td>
                    </tr>
                    <tr>
                        <td>Water</td>
                        <td>${initParam.Water}</td>
                        <td><input type="text" name="WaterAmount" value="${watertemp}" /></td>
                        <jsp:setProperty name="Water" property="quantity" value="${watertemp}" />
                        <td><jsp:getProperty name="Water" property="total" /></td>
                    </tr>
                    <tr>
                        <td>GrandTotal</td>
                        <td></td>
                        <td></td>
                        <td>${initParam.Coffe * coffetemp + initParam.Sugar * sugartemp +initParam.Water * watertemp} </td>
                    </tr>
                </tbody>
            </table>
            <input type="submit" value="CASHIER" />
        </form>
                    
        <c:if test="${pageContext.exception == null}">
        <%Cookie coffeck = new Cookie("coffe",(String) session.getAttribute("coffetemp"));
        Cookie sugarck = new Cookie("sugar",(String) session.getAttribute("sugartemp"));
        Cookie waterck = new Cookie("water",(String) session.getAttribute("watertemp"));
        coffeck.setMaxAge(12*60*60);
        sugarck.setMaxAge(12*60*60);
        waterck.setMaxAge(12*60*60);
        response.addCookie(coffeck);
        response.addCookie(sugarck);
        response.addCookie(waterck);%>
        </c:if>
        
                                   
                    
            
        <form action="https://github.com/iospanak/Final-Project" method="GET">
               <input type="submit" value="CODE" />
        </form> 
        
        
    </body>
</html>
