<%-- 
    Document   : FactorialTable
    Created on : Apr 7, 2023, 12:00:32 PM
    Author     : chong
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Factorial Table</title>
    </head>
    <body>
        <h1>Factorial Table</h1>
         <table style="border: 1px solid black;">
            <tr style="border: 1px solid black;">
                <td style="border: 1px solid black;">Number</td> <td style="border: 1px solid black;">Factorial</td>
            </tr><!-- comment -->
            <%!  int factorial = 362880;%>
            <% for (int i = 1; i < 10; i++) {

                    factorial *= i;

            %>
  
            <tr style="border: 1px solid black;">
                <td style="border: 1px solid black;"><%= i %></td><td style="border: 1px solid black;"><%= factorial %> </td><!-- comment -->
                
            </tr>
            
            <%}%>
    

            </tr>
        </table>
    </body>
</html>
