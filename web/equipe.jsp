<%-- 
    Document   : equipe
    Created on : 29/04/2019, 16:14:27
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
         <h1 style="color: whitesmoke" >Equipe</h1>
        <div class="container">
            <div class="container">
                <h2 style="color: whitesmoke">Alan Bernardino</h2>
                    <div class="container">     
                        <div class="row">
                            <div class="col-lg-3 col-md-4 col-xs-6 thumb">
                                <img  src="imagem/alan.jpg" class="rounded-circle" alt="luiz.jpg" width="220" height="220" > 
                            </div>
                        </div>
                    </div>
            </div>
            <div class="container">
                <h2 style="color: whitesmoke">Luiz Henrique</h2>
                    <div class="container">     
                        <div class="row">
                            <div class="col-lg-3 col-md-4 col-xs-6 thumb">
                                <img src="imagem/luiz.jpg" class="rounded-circle" alt="luiz.jpg" width="220" height="220"> 
                            </div>
                        </div>
                    </div>
            </div>
            <div class="container">
                <h2 style="color: whitesmoke">Mohamad Tarif</h2>
                    <div class="container">     
                        <div class="row">
                            <div class="col-lg-3 col-md-4 col-xs-6 thumb">
                                <img src="imagem/mohamad.jpg" class="rounded-circle" alt="luiz.jpg" width="220" height="220"> 
                            </div>
                        </div>
                    </div>
            </div>
            </div>
       <br>
       <br>
       <br>
        <footer>
            <%@include file="WEB-INF/jspf/foot.jspf" %>
        </footer>
    </body>
</html>
