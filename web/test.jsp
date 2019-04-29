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
            
        <h3 style="color: whitesmoke">Usuário<%=user%></h3>
        <h2 style="color: whitesmoke">Quiz Avengers</h2>
        <form action="index.jsp" style="color: whitesmoke">
            <%for(Perguntas q: Db.getAvengersQuiz()){%>
            <h3><%=q.getPergunta() %></h3>
            <%for(String alternative: q.getAlternativas()){%>
            <h4><input class="form-check" type="radio" name="<%=q.getPergunta()%>" value="<%=alternative%>"/><%=alternative%></h4>
            <%}%>
        <%}%>
          <input type="submit" name="AvengersQuiz" value="Enviar"/>
          <input type="submit" name="sair" value="Sair"/>          
    <%}catch (Exception ex) {%>
    <% sessao.invalidate();
       }%>
        </form>
        <footer>
            <%@include file="WEB-INF/jspf/foot.jspf" %>
        </footer>
    </body>
</html>
