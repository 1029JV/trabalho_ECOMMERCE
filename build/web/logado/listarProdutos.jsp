<%@page import="java.util.List"%>
<%@page import="bean.Produto"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="shortcut icon" type="image/x-icon" href="imagens/ico/ds.ico">
        <link href="css/bootstrap.min.css" rel="stylesheet">
        <link href="css/style.css" rel="stylesheet">
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
        <script>window.jQuery || document.write('<script src="js/jquery-slim.min.js"><\/script>')</script>
        <script src="js/popper.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="js/holder.min.js"></script>
        <script src="js/ie10-viewport-bug-workaround.js"></script>
        <title>Lista de Produtos</title>
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
                        <a class="nav-link" href="Controller?txtAcao=pageLogado">Início</a>
                        <a class="nav-link" href="Controller?txtAcao=pageAtualizarPessoa">Atualizar dados pessoais</a>   
                        <a class="nav-link" href="Controller?txtAcao=pageCarrinho">Carrinho</a>
                        <a class="nav-link" href="Controller?txtAcao=pageHistorico">Histórico</a>               
                        <a class="nav-link active" href="Controller?txtAcao=pageProdutos">Produtos</a>
                        <a class="nav-link" href="Controller?txtAcao=sairDaSessao">Sair</a>
                    </nav>
                </div>
            </div>
        </header>
        <section class="row text-center container distancia">
            <%
                List<Produto> produtos = (List<Produto>) request.getAttribute("produtos");
                for (Produto p : produtos) {
            %>
            <div class="col-lg-3 img-thumbnail distancia3">
                <a href="../trabalho_ECOMMERCE/Controller?txtAcao=pageSelecionado&itemSelecionado=<%= p.getId()%>"><img src='imagens/<%= p.getImagemDoProduto()%>' class="rounded-circle tamanho" title='<%= p.getNomeDoProduto()%>' alt='<%= p.getNomeDoProduto()%>'></a>
                <p>Nome: <%= p.getNomeDoProduto()%></p>
                <p>Categoria: <%= p.getTipoDeProduto()%></p>
                <p>Quantidade: <%= p.getQuantidade()%> unidades</p>
                <a class="btn btn-primary btn-block" href="../trabalho_ECOMMERCE/Controller?txtAcao=pageAtualizarProduto&itemSelecionado=<%= p.getId()%>">Atualizar</a>
                <a class="btn btn-primary btn-block" href="../trabalho_ECOMMERCE/Controller?txtAcao=pageSelecionado&itemSelecionado=<%= p.getId()%>">Detalhes</a>
            </div>
            <%
                }
            %>
        </section>
        <footer class="blog-footer">
            <p>Todos os direitos reservados | Copyright © 2017  Doces & Salgados.</p>
            <a href="#"><img src="imagens/ico/facebook.png"></a>
            <a href="#"><img src="imagens/ico/google.png"></a>
            <a href="#"><img src="imagens/ico/twitter.png"></a>
        </footer>
    </body>
</html>