<%-- 
    Document   : SaveCountryDetails
    Created on : Mar 23, 2023, 6:05:48 PM
    Author     : User
--%>
<%@page import="controller.CountryController"%>
<%@page import="model.Country" %>
<%@page import="da.CountriesDA" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id="country" class="model.Country" scope="session"></jsp:useBean>
<jsp:setProperty name="country" property="*" />

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>SaveCountryDetails</title>
    </head>
    <body>
        <h1>Save Country Detail</h1>

        <%
            CountryController countryControl = new CountryController();
           
            Country countryDB = new Country(
                    country.getName(),
                    country.getOfficialName(),
                    country.getCapital()
            );
            
             CountriesDA da = new CountriesDA();
             countryControl.addCountry(country);

        %>



        Your Country : <%= country.getName()%> has been saved in database

    </body>
</html>
