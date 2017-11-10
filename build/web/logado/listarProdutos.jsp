<%@page import="java.util.List"%>
<%@page import="bean.Produto"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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

        <a href="../trabalho_ECOMMERCE/Controller?txtAcao=pageAtualizarPessoa">Atualizar dados pessoais</a>   
        <a href="../trabalho_ECOMMERCE/Controller?txtAcao=pageCarrinho">Carrinho</a>
        <a href="../trabalho_ECOMMERCE/Controller?txtAcao=pageHistorico">Histórico</a>               
        <a href="../trabalho_ECOMMERCE/Controller?txtAcao=pageProdutos">Voltar</a>
        <a href="../trabalho_ECOMMERCE/Controller?txtAcao=sairDaSessao">Sair</a>
        <%
            List<Produto> produtos = (List<Produto>) request.getAttribute("produtos");
            for (Produto p : produtos) {
        %>
        <br/>
        <img src='<%= p.getImagemDoProduto()%>' title='<%= p.getNomeDoProduto()%>' alt='<%= p.getNomeDoProduto()%>' />
        <h4>ID: <%= p.getId()%></h4>
        <h4>Nome: <a href="../trabalho_ECOMMERCE/Controller?txtAcao=pageSelecionado&itemSelecionado=<%= p.getId()%>"><%= p.getNomeDoProduto()%></a></h4>
        <p>Categoria: <%= p.getTipoDeProduto()%></p>
        <p>Descrição: <%= p.getDescricao()%></p>
        <p>Quantidade: <%= p.getQuantidade()%></p>
        <p>Preço da unidade: <%= p.getPrecoPorUnidade()%></p>
        <p>Preço do cento: <%= p.getPrecoPorUnidade() * 100 * 0.9%></p>
        <br/>
        <%
            }

        %>
    </body>
</html>
