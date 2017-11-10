<%@page import="bean.Pessoa"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Atualizar pessoa</title>
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
        <a href="../trabalho_ECOMMERCE/Controller?txtAcao=pageAtualizarPessoa">Atualizar dados pessoais</a>   
        <a href="../trabalho_ECOMMERCE/Controller?txtAcao=pageCarrinho">Carrinho</a>
        <a href="../trabalho_ECOMMERCE/Controller?txtAcao=pageHistorico">Histórico</a>               
        <a href="../trabalho_ECOMMERCE/Controller?txtAcao=pageProdutos">Produtos</a>
        <a href="../trabalho_ECOMMERCE/Controller?txtAcao=pageLogado">Voltar</a>
        <a href="../trabalho_ECOMMERCE/Controller?txtAcao=sairDaSessao">Sair</a>
        <form method="POST" action="Controller">
            Nome completo:
            <input type="text" name="txtNomeCompleto" value="<%= p.getNomeCompleto()%>"/><br/>
            RG:
            <input type="tel" name="txtRG" value="<%= p.getRg()%>"/><br/>
            CPF:
            <input type="text" name="txtCPF" value="<%= p.getCpf()%>"/><br/>
            Telefone:
            <input type="tel" name="txtTelefone" value="<%= p.getTelefone()%>"/><br/>
            Email:
            <input type="email" name="txtEmail" value="<%= p.getEmail()%>"/><br/>
            Endereço:
            <input type="text" name="txtEndereco" value="<%= p.getEndereco()%>"/><br/>
            <input type="hidden" name="txtAcao" value="atualizarPessoa" />
            <input type="submit" value="Atualizar"/>
        </form>
    </body>
</html>
