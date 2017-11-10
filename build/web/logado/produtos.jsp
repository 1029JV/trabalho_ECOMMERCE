<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Produtos</title>
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
        <a href="../trabalho_ECOMMERCE/Controller?txtAcao=pageProdutos">Produtos</a>
        <a href="../trabalho_ECOMMERCE/Controller?txtAcao=sairDaSessao">Sair</a>
        <h3>Produtos</h3>
        <a href="../trabalho_ECOMMERCE/Controller?txtAcao=pageCadastroProduto">Cadastrar</a>
        <a href="../trabalho_ECOMMERCE/Controller?txtAcao=pageListar">Listar</a>
        <form method="GET" action="../Controller">
            Buscar:
            <input type="text" name="txtBuscar" /> 
            <input type="hidden" name="txtAcao" value="pageBusca" />
            <input type="submit" value="Buscar" /> 
        </form>
    </body>
</html>
