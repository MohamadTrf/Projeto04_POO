<%--
        pagina home
    Document   : home
    Created on : 27/04/2019, 17:13:16
    Author     : MohamadTarif
--%>

<%@page import="br.com.fatecpg.quiz.DbHistorico"%>
<%@page import="br.com.fatecpg.quiz.Historico"%>
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
            if (request.getParameter("AvengersQuiz") != null) {
                int acertos = 0;
                for (Perguntas pergunta : Db.getAvengersQuiz()) {
                    System.out.println(pergunta.getPergunta());
                    String resposta = request.getParameter(pergunta.getPergunta());

                    if (resposta != "" && resposta != null) {
                        if (pergunta.getResposta().equals(resposta)) {
                            acertos++;
                        }
                    }
                }
nota = (double) acertos / (double) Db.getAvengersQuiz().size();
int i = 0;
        if(i<=9){
                Historico h1 = new Historico();
                h1.setNota(nota);
                DbHistorico.getHistorico().add(h1);
                i++;
            }
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

            try {

                if (sessao.getAttribute("userOn") == null) {
                    response.sendRedirect("index.jsp");
                }
                String user = sessao.getAttribute("userOn").toString();

                if (request.getParameter("sair") != null) {
                    sessao.invalidate();
                    response.sendRedirect("index.jsp");
                }


        %>
        <div class="mx-auto" style="width: 1200px">       
            <h1 style="color: whitesmoke">Usuário <%=user%></h1>
            <br>
            <br>
            <h2 style="color: whitesmoke">Sua nota foi: <%=100*nota%>%</h2>
            <h4><a class="nav-link" href="test.jsp" style="color: whitesmoke">Realizar teste</a></h4>
            <h1> 10 melhores notas </h1>
            <%@include  file="WEB-INF/jspf/historico.jspf"%>
            <form style="color: whitesmoke">  <input type="submit" value="Sair" name="sair"/> </form>
                <%} catch (Exception ex) { %>
                <% sessao.invalidate();

                    }%>
        </div>
        <footer>
            <%@include file="WEB-INF/jspf/foot.jspf" %>
        </footer>
    </body>
</html>