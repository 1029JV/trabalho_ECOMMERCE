<%@page import="bean.Produto"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Produto selecionado</title>
    </head>
    <body>
        <% session = request.getSession(false);
            if (session != null) {
                if ((Boolean) session.getAttribute("isLogado") == null) {
                    response.sendRedirect("../Controller?txtAcao=redirecionaNaoLogado");
                }
            }
        %>
        <a href="../trabalho_ECOMMERCE/Controller?txtAcao=pageProdutos">Voltar</a>
        <a href="../trabalho_ECOMMERCE/Controller?txtAcao=pageCarrinho">Carrinho</a>
        <a href="../trabalho_ECOMMERCE/Controller?txtAcao=pageHistorico">Histórico</a>               
        <a href="../trabalho_ECOMMERCE/Controller?txtAcao=sairDaSessao">Sair</a>
        <%
            Produto p = (Produto) request.getAttribute("selecionado");
        %>
        <img src='<%= p.getImagemDoProduto()%>' title='<%= p.getNomeDoProduto()%>' alt='<%= p.getNomeDoProduto()%>' />
        <h4>ID: <%= p.getId()%></h4>
        <h4>Nome: <%= p.getNomeDoProduto()%></h4>
        <p>Categoria: <%= p.getTipoDeProduto()%></p>
        <p>Descrição: <%= p.getDescricao()%></p>
        <p>Quantidade: <%= p.getQuantidade()%></p>
        <p>Preço da unidade: <%= p.getPrecoPorUnidade()%></p>
        <p>Preço do cento: <%= p.getPrecoPorUnidade() * 100 * 0.9%></p>
        <br/>
    </body>
</html>
