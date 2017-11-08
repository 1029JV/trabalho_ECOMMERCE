<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
    </head>
    <body>
        <% Boolean errouDados = (Boolean) request.getAttribute("errouDados");%>
        <% if (!(errouDados == null)) { %>
        <h3>Dados inseridos não correspondem a nenhum usuário, se você não está cadastrado, por favor <a href="../trabalho_ECOMMERCE/Controller?txtAcao=pageCadastrarPessoa">cadastre-se</a>.</h3>
        <% }%>
        <form method="POST" action="Controller">
            Usuário:
            <input type="text" name="txtLogin" /><br/>
            Senha:
            <input type="password" name="txtSenha" /><br/>
            <input type="hidden" name="txtAcao" value="login" />
            <input type="submit" value="Entrar"/>
        </form>
        <a href="../trabalho_ECOMMERCE/Controller?txtAcao=pageCadastrarPessoa">Cadastrar</a>
    </body>
</html>
