<%--<%@page contentType="text/html" pageEncoding="UTF-8"%>--%>
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
        <header>
            <div class="blog-masthead">
                <div class="container">
                    <nav class="nav">
                        <a class="nav-link" href="../trabalho_ECOMMERCE/Controller?txtAcao=pageLogado">In?cio</a>
                        <a class="nav-link" href="../trabalho_ECOMMERCE/Controller?txtAcao=pageAtualizarPessoa">Atualizar dados pessoais</a>   
                        <a class="nav-link" href="../trabalho_ECOMMERCE/Controller?txtAcao=pageCarrinho">Carrinho</a>
                        <a class="nav-link" href="../trabalho_ECOMMERCE/Controller?txtAcao=pageHistorico">Hist?rico</a>               
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
                <input name="txtNomeDoProduto" type="text" class="form-control input-md col-lg-3" required="">
                <label class="col-md-4 control-label">Tipo:</label>  
                <input name="txtTipoDeProduto" type="text" class="form-control input-md col-lg-3" required="">
                <label class="col-md-4 control-label">Descri??o:</label>  
                <input name="txtDescricao" type="text" class="form-control input-md col-lg-12" required="">
                <label class="col-md-4 control-label">Pre?o da unidade:</label>
                <input name="txtPrecoUnidade" type="text" class="form-control input-md col-lg-3" required="">
                <label class="col-md-4 control-label">Quantidade:</label>  
                <input name="txtQuantidade" type="text" class="form-control input-md col-lg-3" required="">
                <label class="col-md-4 control-label">Imagem:</label> <br/>
                <input name="txtImagemDoProduto" type="file" class="input-file"><br/>
                <label class="col-md-4 control-label">Item deve ser listado?</label><br/>
                <select name="txtAtivo">
                    <option value="true">Sim</option>
                    <option value="false">N?o</option>
                </select><br/>
                <input type="hidden" name="txtAcao" value="cadastrarProduto" />
                <input class="btn btn-lg btn-primary" type="submit" value="Cadastrar"/><br/>
            </form>
        </section>
        <footer class="blog-footer">
            <p>Todos os direitos reservados | Copyright ? 2017  Doces & Salgados.</p>
            <a href="#"><img src="imagens/ico/facebook.png"></a>
            <a href="#"><img src="imagens/ico/google.png"></a>
            <a href="#"><img src="imagens/ico/twitter.png"></a>
        </footer>
    </body>
</html>