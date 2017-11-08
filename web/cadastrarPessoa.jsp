<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cadastrar pessoa</title>
    </head>
    <body>
        <form method="POST" action="Controller">
            Nome completo:
            <input type="text" name="txtNomeCompleto" /><br/>
            RG:
            <input type="tel" name="txtRG" /><br/>
            CPF:
            <input type="text" name="txtCPF" /><br/>
            Foto:
            <input type="file" name="txtFoto" /><br/>
            Telefone:
            <input type="tel" name="txtTelefone" /><br/>
            Email:
            <input type="email" name="txtEmail" /><br/>
            Endereço:
            <input type="text" name="txtEndereco" /><br/>
            Usuário:
            <input type="text" name="txtUsuario" /><br/>
            Senha:
            <input type="password" name="txtSenha" /><br/>
            <input type="hidden" name="txtAcao" value="cadastrarPessoa" />
            <input type="submit" value="Cadastrar"/>
        </form>
        <a href="../trabalho_ECOMMERCE/Controller?txtAcao=pageLogin">Entrar</a>
    </body>
</html>
