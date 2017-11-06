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
        <a href="../TrabalhoDeWeb/Controller?txtAcao=pageCarrinho">Carrinho</a>
        <a href="../TrabalhoDeWeb/Controller?txtAcao=pageHistorico">Histórico</a>               
        <a href="../TrabalhoDeWeb/Controller?txtAcao=sairDaSessao">Sair</a>
        <h3>Produtos</h3>
        <a href="../TrabalhoDeWeb/Controller?txtAcao=pageCadastroProduto">Cadastrar</a>
        <a href="../TrabalhoDeWeb/Controller?txtAcao=pageListar">Listar</a>
        <form method="GET" action="../Controller">
            Buscar:
            <input type="text" name="txtBuscar" /> 
            <input type="hidden" name="txtAcao" value="pageBusca" />
            <input type="submit" value="Buscar" /> 
        </form>
    </body>
</html>
