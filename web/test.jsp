<%-- 
    Document   : test.jsp
    Created on : 23/04/2019, 21:44:11
    Author     : User
--%>

<%@page import="br.com.fatecpg.quiz.Perguntas"%>
<%@page import="br.com.fatecpg.quiz.Db"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Teste - WebQuiz</title>
    </head>
    <body>
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
            
        <h1>Usuário<%=user%></h1>
        <h1>WebQuiz</h1>
        <h2>Quiz Avengers</h2>
        <form action="index.jsp">
            <%for(Perguntas q: Db.getAvengersQuiz()){%>
            <h3><%=q.getPergunta() %></h3>
            <%for(String alternative: q.getAlternativas()){%>
            <h4><input type="radio" name="<%=q.getPergunta()%>" value="<%=alternative%>"/><%=alternative%></h4>
            <%}%>
        <%}%>
          <input type="submit" name="AvengersQuiz" value="Enviar"/>
          <input type="submit" name="sair" value="Sair"/>          
    <%}catch (Exception ex) {%>
    <% sessao.invalidate();
       }%>
        </form>
        <%@include file="WEB-INF/jspf/foot.jspf" %>
    </body>
</html>
