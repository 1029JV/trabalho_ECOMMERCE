<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cadastrar produto</title>
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
        <form method="POST" action="Controller">
            Nome do produto:
            <input type="text" name="txtNomeDoProduto" /><br/>
            Tipo de produto:
            <input type="text" name="txtTipoDeProduto" /><br/>
            Descrição:
            <input type="text" name="txtDescricao" /><br/>
            Preço da unidade:
            <input type="text" name="txtPrecoUnidade" /><br/>
            Quantidade:
            <input type="text" name="txtQuantidade" /><br/>
            Imagem do produto:
            <input type="file" name="txtImagemDoProduto" /><br/>
            Item deve ser listado?
            <select name="txtAtivo">
                <option value="true">Sim</option>
                <option value="false">Não</option>
            </select><br/>
            <input type="hidden" name="txtAcao" value="cadastrarProduto" />
            <input type="submit" value="Cadastrar" />
        </form>
    </body>
</html>
