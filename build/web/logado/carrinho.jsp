<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Carrinho</title>
    </head>
    <body>
        <% session = request.getSession(false);
            if (session != null) {
                if ((Boolean) session.getAttribute("isLogado") == null) {
                    response.sendRedirect("../Controller?txtAcao=redirecionaNaoLogado");
                }
            }
        %>
        <a href="../trabalho_ECOMMERCE/Controller?txtAcao=pageHistorico">Histórico</a>               
        <a href="../trabalho_ECOMMERCE/Controller?txtAcao=pageProdutos">Produtos</a>
        <a href="../trabalho_ECOMMERCE/Controller?txtAcao=sairDaSessao">Sair</a>
    </body>
</html>

