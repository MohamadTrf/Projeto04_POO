<%--
	pagina home
    Document   : home
    Created on : 27/04/2019, 17:13:16
    Author     : MohamadTarif
--%>

<%@page import="br.com.fatecpg.quiz.Perguntas"%>
<%@page import="br.com.fatecpg.quiz.Db"%>
<%@page import="br.com.fatecpg.quiz.Conta"%>
<%@page import="br.com.fatecpg.quiz.DbConta"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
    <head>
        <%
    double nota = 0.0;
    if(request.getParameter("AvengersQuiz") != null){
        int acertos = 0;
        
        for( Perguntas pergunta: Db.getAvengersQuiz()){
            String resposta = request.getParameter(pergunta.getPergunta());
            
            if (!resposta.isEmpty() && resposta != null) {
                if(pergunta.getResposta().equals(resposta)){
                    acertos++;
                }
            }
        }
        
        nota = (double) acertos / (double)Db.getAvengersQuiz().size();
    }
%>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home Quiz</title>
    </head>
    <body style="background-color: #2a247a">
         <header>
             <%@include file="WEB-INF/jspf/menu.jspf" %>
         </header>
<%
  HttpSession sessao = request.getSession(true);
  
  try{
    
    if(sessao.getAttribute("userOn")== null){
        response.sendRedirect("index.jsp");
    }
    String user = sessao.getAttribute("userOn").toString();
    
    if(request.getParameter("sair")!=null){
        sessao.invalidate();
        response.sendRedirect("index.jsp");
     }
     

%>
        <h1 style="color: whitesmoke">Usuário <%=user%></h1>
        
        <form style="color: whitesmoke">  <input type="submit" value="Sair" name="sair"/> </form>
 <%}catch (Exception ex) { %>
 <% sessao.invalidate();
 
 }%>
        <footer>
            <%@include file="WEB-INF/jspf/foot.jspf" %>
        </footer>
    </body>
</html>