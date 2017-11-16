<%@page import="bean.Produto"%>
<%--<%@page contentType="text/html" pageEncoding="UTF-8"%>--%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="shortcut icon" type="image/x-icon" href="imagens/ico/ds.ico">
        <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css">
        <link href="css/style.css" rel="stylesheet" type="text/css">
        <title>Atualizar produto</title>
    </head>
    <body>
        <% session = request.getSession(false);
            if (session != null) {
                if ((Boolean) session.getAttribute("isLogado") == null) {
                    response.sendRedirect("../Controller?txtAcao=redirecionaNaoLogado");
                }
            }
            Produto p = (Produto) request.getAttribute("produtoParaAtualizar");
        %>
        <header>
            <div class="blog-masthead">
                <div class="container">
                    <nav class="nav">
                        <a class="nav-link" href="../trabalho_ECOMMERCE/Controller?txtAcao=pageLogado">Início</a>
                        <a class="nav-link" href="../trabalho_ECOMMERCE/Controller?txtAcao=pageAtualizarPessoa">Atualizar dados pessoais</a>   
                        <a class="nav-link" href="../trabalho_ECOMMERCE/Controller?txtAcao=pageCarrinho">Carrinho</a>
                        <a class="nav-link" href="../trabalho_ECOMMERCE/Controller?txtAcao=pageHistorico">Histórico</a>               
                        <a class="nav-link active" href="../trabalho_ECOMMERCE/Controller?txtAcao=pageProdutos">Produtos</a>
                        <a class="nav-link" href="../trabalho_ECOMMERCE/Controller?txtAcao=sairDaSessao">Sair</a>
                    </nav>
                </div>
            </div>
        </header>
        <section class="container">
            <form class="form-horizontal" method="POST" action="Controller">
                <h2 class="form-signin-heading">Doces & Salgados</h2>
                <label class="col-md-4 control-label">Nome:</label>  
                <input name="txtNomeDoProduto" type="text" class="form-control input-md col-lg-3" required="" value='<%= p.getNomeDoProduto()%>'>
                <label class="col-md-4 control-label">Tipo:</label>  
                <input name="txtTipoDeProduto" type="text" class="form-control input-md col-lg-3" required="" value='<%= p.getTipoDeProduto()%>'>
                <label class="col-md-4 control-label">Descrição:</label>  
                <input name="txtDescricao" type="text" class="form-control input-md col-lg-12" required="" value='<%= p.getDescricao()%>'>
                <label class="col-md-4 control-label">Preço da unidade:</label>
                <input name="txtPrecoUnidade" type="text" class="form-control input-md col-lg-3" required="" value='<%= p.getPrecoPorUnidade()%>'>
                <label class="col-md-4 control-label">Quantidade</label>  
                <input name="txtQuantidade" type="text" class="form-control input-md col-lg-3" required="" value='<%= p.getQuantidade()%>'>
                <label class="col-md-4 control-label">Item deve ser listado?</label><br/>  
                <select name="txtAtivo">
                    <option value="true">Sim</option>
                    <option value="false">Não</option>
                </select><br/>
                <input type="hidden" name="txtAcao" value="atualizarProduto" />
                <input type="hidden" name="idProduto" value='<%= p.getId()%>' />
                <input class="btn btn-lg btn-primary" type="submit" value="Atualizar"/><br/>
            </form>
        </section>
        <footer class="blog-footer">
            <p>Todos os direitos reservados | Copyright © 2017  Doces & Salgados.</p>
            <a href="#"><img src="imagens/ico/facebook.png"></a>
            <a href="#"><img src="imagens/ico/google.png"></a>
            <a href="#"><img src="imagens/ico/twitter.png"></a>
        </footer>
    </body>
</html>