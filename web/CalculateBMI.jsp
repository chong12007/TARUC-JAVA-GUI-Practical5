<%-- 
    Document   : WebB
    Created on : Mar 23, 2023, 5:37:02 PM
    Author     : User
--%>

<%@page import="java.text.DecimalFormat"%>
<%@page import="model.BMI" %>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>BMI Calculation</title>
    </head>
    <body>
        <%
           double height = Double.parseDouble( request.getParameter("height"));
           double weight = Double.parseDouble( request.getParameter("weight"));
           BMI bmi = new BMI(height,weight);
          
          
         %>
         
        <h1>BMI Calculation</h1>
        Height in cm    :   <%=bmi.getHeight() %> cm   <br>
        Weight in kg    :    <%=bmi.getWeight() %>  kg   <br>
        BMI             :    <%=bmi.getBMI() %>     <br>
        Category        :   <%= String.format("%.2f", bmi.getBMI()) %>      <br>
    </body>
</html>
