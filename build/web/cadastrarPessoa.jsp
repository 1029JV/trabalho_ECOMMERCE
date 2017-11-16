<%--<%@page contentType="text/html" pageEncoding="UTF-8"%>--%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="shortcut icon" type="image/x-icon" href="imagens/ico/ds.ico">
        <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css">
        <link href="css/style.css" rel="stylesheet" type="text/css">
        <title>Cadastro</title>
    </head>
    <body>
        <% Boolean cadastrado = (Boolean) request.getAttribute("cadastrado");%>
        <% if (!(cadastrado == null)) { %>
        <h3 class="container text-center">Usuário já possui cadastro.</h3>
        <% }%>
        <section class="container">
            <form  class="form-horizontal" method="POST" action="Controller">
                <h2 class="form-signin-heading">Doces & Salgados</h2>
                <label class="col-md-4 control-label">Nome completo:</label>  
                <input name="txtNomeCompleto" type="text" class="form-control input-md col-lg-6" required="">
                <label class="col-md-4 control-label">RG:</label>  
                <input name="txtRG" type="text" class="form-control input-md col-lg-3" required="">
                <label class="col-md-4 control-label">CPF:</label>  
                <input name="txtCPF" type="text" class="form-control input-md col-lg-4" required="">
                <label class="col-md-4 control-label">Foto:</label> <br/>
                <input name="txtFoto" type="file" class="input-file"><br/>
                <label class="col-md-4 control-label">Telefone:</label>
                <input name="txtTelefone" type="tel" class="form-control input-md col-lg-3" required="">
                <label class="col-md-4 control-label">Email:</label>  
                <input name="txtEmail" type="email" class="form-control input-md col-lg-5" required="">
                <label class="col-md-4 control-label">Endereço:</label>  
                <input name="txtEndereco" type="text" class="form-control input-md col-lg-8" required="">
                <label class="col-md-4 control-label">Usuario:</label>  
                <input name="txtUsuario" type="text" class="form-control input-md col-lg-4" required="">
                <label class="col-md-4 control-label">Senha:</label>  
                <input name="txtSenha" type="password" class="form-control input-md col-lg-4" required="">
                <input type="hidden" name="txtAcao" value="cadastrarPessoa" />
                <input class="btn btn-lg btn-primary" type="submit" value="Cadastrar"/><br/>
            </form>
            <a href="../trabalho_ECOMMERCE/Controller?txtAcao=pageLogin" class="btn btn-lg btn-primary">Entrar</a>
        </section>  
        <footer class="blog-footer">
            <p>Todos os direitos reservados | Copyright © 2017  Doces & Salgados.</p>
            <a href="#"><img src="imagens/ico/facebook.png"></a>
            <a href="#"><img src="imagens/ico/google.png"></a>
            <a href="#"><img src="imagens/ico/twitter.png"></a>
        </footer>
    </body>
</html>