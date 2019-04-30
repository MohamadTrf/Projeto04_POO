<%-- 
    Document   : classeHtml
    Created on : 29/04/2019, 15:18:33
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body style="background-color: #2a247a">
        <header>
            <%@include file="WEB-INF/jspf/menu.jspf" %>
        </header>
        <div class="mx-auto" style="width: 1200px"> 
        <%@include  file="WEB-INF/jspf/historico.jspf"%>
        </div>
        <br>
        <br>
          <footer>
            <%@include file="WEB-INF/jspf/foot.jspf" %>
        </footer>
    </body>
</html>
