<%@page import="bean.Pessoa"%>
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
        <title>Atualizar cadastro</title>
    </head>
    <body>
        <% session = request.getSession(false);
            if (session != null) {
                if ((Boolean) session.getAttribute("isLogado") == null) {
                    response.sendRedirect("../Controller?txtAcao=redirecionaNaoLogado");
                }
            }
            Pessoa p = (Pessoa) request.getAttribute("pessoaParaAtualizar");
        %>
        <header>
            <div class="blog-masthead">
                <div class="container">
                    <nav class="nav">
                        <a class="nav-link" href="Controller?txtAcao=pageLogado">In?cio</a>
                        <a class="nav-link active" href="Controller?txtAcao=pageAtualizarPessoa">Atualizar dados pessoais</a>   
                        <a class="nav-link" href="Controller?txtAcao=pageCarrinho">Carrinho</a>
                        <a class="nav-link" href="Controller?txtAcao=pageHistorico">Hist?rico</a>               
                        <a class="nav-link" href="Controller?txtAcao=pageProdutos">Produtos</a>
                        <a class="nav-link" href="Controller?txtAcao=sairDaSessao">Sair</a>
                    </nav>
                </div>
            </div>
        </header>
        <section class="container">
            <form class="form-horizontal" method="POST" action="Controller">
                <h2 class="form-signin-heading">Doces & Salgados</h2>
                <label class="col-md-4 control-label">Nome completo:</label>  
                <input name="txtNomeCompleto" type="text" class="form-control input-md col-lg-6" required="" value='<%= p.getNomeCompleto()%>'>
                <label class="col-md-4 control-label">RG:</label>  
                <input name="txtRG" type="text" class="form-control input-md col-lg-3" required="" value='<%= p.getRg()%>'>
                <label class="col-md-4 control-label">CPF:</label>  
                <input name="txtCPF" type="text" class="form-control input-md col-lg-4" required="" value='<%= p.getCpf()%>'>
                <label class="col-md-4 control-label">Telefone:</label>
                <input name="txtTelefone" type="tel" class="form-control input-md col-lg-3" required="" value='<%= p.getTelefone()%>'>
                <label class="col-md-4 control-label">Email:</label>  
                <input name="txtEmail" type="email" class="form-control input-md col-lg-5" required="" value='<%= p.getEmail()%>'>
                <label class="col-md-4 control-label">Endere?o:</label>  
                <input name="txtEndereco" type="text" class="form-control input-md col-lg-8" required="" value='<%= p.getEndereco()%>'>
                <input type="hidden" name="txtAcao" value="atualizarPessoa" />
                <input class="btn btn-lg btn-primary" type="submit" value="Atualizar"/><br/>
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