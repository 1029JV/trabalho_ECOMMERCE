<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="shortcut icon" type="image/x-icon" href="imagens/ico/ds.ico">
        <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css">
        <link href="css/style.css" rel="stylesheet" type="text/css">
        <title>Doces & Salgados</title>
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
                        <a class="nav-link active" href="../trabalho_ECOMMERCE/Controller?txtAcao=pageLogado">Início</a>
                        <a class="nav-link" href="../trabalho_ECOMMERCE/Controller?txtAcao=pageAtualizarPessoa">Atualizar dados pessoais</a>   
                        <a class="nav-link" href="../trabalho_ECOMMERCE/Controller?txtAcao=pageCarrinho">Carrinho</a>
                        <a class="nav-link" href="../trabalho_ECOMMERCE/Controller?txtAcao=pageHistorico">Histórico</a>               
                        <a class="nav-link" href="../trabalho_ECOMMERCE/Controller?txtAcao=pageProdutos">Produtos</a>
                        <a class="nav-link" href="../trabalho_ECOMMERCE/Controller?txtAcao=sairDaSessao">Sair</a>
                    </nav>
                </div>
            </div>
        </header>
        <section class="container text-center">
            <h4>Os melhores Doces & Salgados, você só encontra aqui.</h4>
            <div class="row">
                <div class="card">
                    <img src="imagens/coxinha.png" alt="Salgados variados" title="Salgados variados">
                    <p>Salgados sempre fresquinhos</p>
                    <p class="card-text">Confraternizações, festas, negócios… Os salgadinhos da Doces & Salgados estão sempre presentes, proporcionando sabores e prazeres indescritíveis. Sua festa será um sucesso garantido. </p>
                </div>
                <div class="card">
                    <img src="imagens/trufa.png" alt="Trufa" title="Trufa">
                    <p>Doces Deliciosos</p>
                    <p class="card-text">Feito com carinho e ingredientes de primeira linha, são os da Doces & Salgados. 
                        Faça-nos uma visita e prove-os. Feche os olhos e não veja o tempo passar…</p>
                </div>
                <div class="card">
                    <img src="imagens/torta.png" alt="Torta de chocolate" title="Torta de chocolate">
                    <p>Tortas de tirar o fôlego</p>
                    <p class="card-text">As tortas deliciosas que conquistam! Guardadas na memória de todos que nos visitam… E o segredo desta conquista? 
                        Só quem experimentou poderá dizer! Venha você também experimentar!</p>
                </div>
            </div>
        </section>
        <footer class="blog-footer">
            <p>Todos os direitos reservados | Copyright © 2017  Doces & Salgados.</p>
            <a href="#"><img src="imagens/ico/facebook.png"></a>
            <a href="#"><img src="imagens/ico/google.png"></a>
            <a href="#"><img src="imagens/ico/twitter.png"></a>
        </footer>
    </body>
</html>