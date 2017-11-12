<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="shortcut icon" type="image/x-icon" href="imagens/ico/ds.ico">
        <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css">
        <link href="css/style.css" rel="stylesheet" type="text/css">
        <title>Histórico</title>
    </head>
    <body>
        <% session = request.getSession(false);
            if (session != null) {
                if ((Boolean) session.getAttribute("isLogado") == null) {
                    response.sendRedirect("../Controller?txtAcao=redirecionaNaoLogado");
                }
            }
        %>
        <header>
            <div class="blog-masthead">
                <div class="container">
                    <nav class="nav">
                        <a class="nav-link" href="../trabalho_ECOMMERCE/Controller?txtAcao=pageLogado">Início</a>
                        <a class="nav-link" href="../trabalho_ECOMMERCE/Controller?txtAcao=pageAtualizarPessoa">Atualizar dados pessoais</a>   
                        <a class="nav-link" href="../trabalho_ECOMMERCE/Controller?txtAcao=pageCarrinho">Carrinho</a>
                        <a class="nav-link active" href="../trabalho_ECOMMERCE/Controller?txtAcao=pageHistorico">Histórico</a>               
                        <a class="nav-link" href="../trabalho_ECOMMERCE/Controller?txtAcao=pageProdutos">Produtos</a>
                        <a class="nav-link" href="../trabalho_ECOMMERCE/Controller?txtAcao=sairDaSessao">Sair</a>
                    </nav>
                </div>
            </div>
        </header>
        <footer class="blog-footer">
            <p>Todos os direitos reservados | Copyright © 2017  Doces & Salgados.</p>
            <a href="#"><img src="imagens/ico/facebook.png"></a>
            <a href="#"><img src="imagens/ico/google.png"></a>
            <a href="#"><img src="imagens/ico/twitter.png"></a>
        </footer>
    </body>
</html>