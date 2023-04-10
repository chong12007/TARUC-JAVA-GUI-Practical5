<%-- 
    Document   : GetCountryDetails
    Created on : Mar 23, 2023, 6:05:12 PM
    Author     : User
--%>
<%@page import="model.Country" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id="country" class="model.Country" scope="session"></jsp:useBean>
<jsp:setProperty name="country" property="*" />
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Get Country Detail</title>
    </head>
    <body>
        <h1>Confirm Country Detail</h1>

        Name         : <%=country.getName()%> <br>
        Official Name: <%=country.getOfficialName()%> <br>
        Capital      :<%=country.getCapital()%> <br><!-- comment -->

        <form method="post" action ="SaveCountryDetails.jsp">

            <input type="submit" value="confirm"><!-- comment -->
            <a href="AddCountry.html"
               <button>Back</button>
            </a>
            

        </form>
    </body>
</html>
