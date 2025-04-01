
<%@ page contentType="text/html; charset=UTF-8" language="java" %>

<html>
<head>
    <title>Juros Simples</title>
          <style>
        body {
            background-image: url('Pal.gif');
            background-size: cover;
            background-position: center;
            background-attachment: fixed;
            margin: 0;
            height: 100%;
        }
    </style>
</head>
<body>
    <%@include file="WEB-INF/jspf/Menu.jspf"%>
    
    
    <h2>Cálculo de Juros Simples</h2>
    <form method="post">
        Montante: <input type="number" name="montante" required><br>
        Taxa (% ao mês): <input type="number" step="0.01" name="taxa" required><br>
        Meses: <input type="number" name="periodo" required><br>
        <input type="submit" value="Calcular">
    </form>
    <%
        if (request.getParameter("montante") != null) {
            double montante = Double.parseDouble(request.getParameter("montante"));
            double taxa = Double.parseDouble(request.getParameter("taxa")) / 100;
            int periodo = Integer.parseInt(request.getParameter("periodo"));
            double valorFuturo = montante * (1 + taxa * periodo);
    %>
    <p>Valor Futuro: <%= String.format("%.2f", valorFuturo) %></p>
    <% } %>
</body>
</html>
