<%--
	pagina index
    Document   : index
    Created on : 27/04/2019, 17:13:16
    Author     : MohamadTarif
--%>

<%@page import="br.com.fatecpg.quiz.Db"%>
<%@page import="br.com.fatecpg.quiz.Perguntas"%>
<%@page import="br.com.fatecpg.quiz.DbConta"%>
<%@page import="br.com.fatecpg.quiz.Conta"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
<%
   if(request.getParameter("logar")!=null){
    HttpSession sessao = request.getSession();
     
     String user = request.getParameter("usuario");
     
     
     for (Conta c: DbConta.getContas()){
        if(c.getUsuario().equals(user)){
            sessao.setAttribute("userOn", user);            
            response.sendRedirect("home.jsp");
        }
        else{
%>
<script>alert('usuario não encontrado'); </script><%}%>
     <%}%>
<%}%>   


        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
     <body style="background-color: #2a247a">
         <header>
             <%@include file="WEB-INF/jspf/menu.jspf" %>
         </header>
        <h1 style="color: whitesmoke" >Pagina de login!</h1>
        <form style="color: whitesmoke" >
            Usuario <input type="text" name="usuario"/>
            <input type="submit" name="logar" value="logar"/> 
        </form>
        <a href="cadastrarConta.jsp" style="color: whitesmoke" >Cadastrar nova conta </a>
         <footer>
            <%@include file="WEB-INF/jspf/foot.jspf" %>
        </footer>
    </body>
</html>