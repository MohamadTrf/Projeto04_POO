<%-- 
    Document   : cadastrarConta
    Created on : 29/04/2019, 09:57:48
    Author     : MohamadTarif
     if(request.getParameter("user")==null){
                String erro ="Não pode Cadastrar usuário ";
                
            }
        response.sendRedirect(request.getRequestURI()); 
--%>

<%@page import="br.com.fatecpg.quiz.DbConta"%>
<%@page import="br.com.fatecpg.quiz.Conta"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cadastrar Conta</title>
<%

    if(request.getParameter("cadastrar")!=null){
    String user = request.getParameter("user1");    
     
        Conta c1 = new Conta();
        c1.setUsuario(user);
        DbConta.getContas().add(c1);
    
%>
<script> alert("usuário cadastrado com sucesso!");</script>
<% response.sendRedirect("index.jsp");  
   }
%>
        
    </head>
    <body>
        <h1>Faça um Cadastro no nosso Quiz!</h1>
        <form>
          Usuário:  <input type ="text" name="user1"/>
          <input type="submit" name="cadastrar" value="Cadastrar Conta"/>
          <a href="index.jsp">Voltar a página inicial</a>
        </form>
        <%@include file="WEB-INF/jspf/foot.jspf" %>
    </body>
</html>
