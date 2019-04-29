<%--
	pagina home
    Document   : home
    Created on : 27/04/2019, 17:13:16
    Author     : MohamadTarif
--%>

<%@page import="br.com.fatecpg.quiz.Conta"%>
<%@page import="br.com.fatecpg.quiz.DbConta"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    HttpSession sessao = request.getSession();
    
    if(sessao.getAttribute("userOn")== null){
        response.sendRedirect("index.jsp");
    }
    String user = sessao.getAttribute("userOn").toString();
    
    if(request.getParameter("sair")!=null){
        sessao.invalidate();
        response.sendRedirect("index.jsp");
    }
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home Quiz</title>
    </head>
    <body>

        <h1>Usuário <%=user%></h1>
        <form>  <input type="submit" value="Sair" name="sair"/> </form>
    </body>
</html>