<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="shortcut icon" type="image/x-icon" href="imagens/ico/ds.ico">
        <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css">
        <link href="css/style.css" rel="stylesheet" type="text/css">
        <title>Início</title>
    </head>
    <body>
        <% Boolean errouDados = (Boolean) request.getAttribute("errouDados");%>
        <% if (!(errouDados == null)) { %>
        <h3 class="container text-center">Dados inseridos não correspondem a nenhum usuário, se você não está cadastrado, por favor <a href="../trabalho_ECOMMERCE/Controller?txtAcao=pageCadastrarPessoa">cadastre-se</a>.</h3>
        <% }%>
        <section class="container text-center">
            <img src="imagens/pageErro.png" class="distancia2" title="Doces & Salgados" alt="Doces & Salgados"/>
            <form class="form-signin" method="POST" action="Controller">
                <h2 class="form-signin-heading">Doces & Salgados</h2>
                <label for="inputEmail" class="sr-only">Usuário</label>
                <input type="text" name="txtLogin" class="form-control" placeholder="Usuário" required autofocus>
                <label for="inputPassword" class="sr-only">Senha</label>
                <input type="password" name="txtSenha" class="form-control" placeholder="Senha" required>
                <input type="hidden" name="txtAcao" value="login" />
                <input class="btn btn-lg btn-primary btn-block" type="submit" value="Entrar"/>
                <a class="btn btn-lg btn-primary btn-block" href="../trabalho_ECOMMERCE/Controller?txtAcao=pageCadastrarPessoa">Cadastrar</a>  
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