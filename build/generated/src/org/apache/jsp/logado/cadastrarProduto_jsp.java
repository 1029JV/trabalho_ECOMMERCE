package org.apache.jsp.logado;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class cadastrarProduto_jsp extends org.apache.jasper.runtime.HttpJspBase
        implements org.apache.jasper.runtime.JspSourceDependent {

    private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

    private static java.util.List<String> _jspx_dependants;

    private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

    public java.util.List<String> getDependants() {
        return _jspx_dependants;
    }

    public void _jspService(HttpServletRequest request, HttpServletResponse response)
            throws java.io.IOException, ServletException {

        PageContext pageContext = null;
        HttpSession session = null;
        ServletContext application = null;
        ServletConfig config = null;
        JspWriter out = null;
        Object page = this;
        JspWriter _jspx_out = null;
        PageContext _jspx_page_context = null;

        try {
            response.setContentType("text/html");
            pageContext = _jspxFactory.getPageContext(this, request, response,
                    null, true, 8192, true);
            _jspx_page_context = pageContext;
            application = pageContext.getServletContext();
            config = pageContext.getServletConfig();
            session = pageContext.getSession();
            out = pageContext.getOut();
            _jspx_out = out;
            _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

            out.write("\n");
            out.write("<!DOCTYPE html>\n");
            out.write("<html>\n");
            out.write("    <head>\n");
            out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
            out.write("        <link rel=\"shortcut icon\" type=\"image/x-icon\" href=\"imagens/ico/ds.ico\">\n");
            out.write("        <link href=\"css/bootstrap.min.css\" rel=\"stylesheet\" type=\"text/css\">\n");
            out.write("        <link href=\"css/style.css\" rel=\"stylesheet\" type=\"text/css\">\n");
            out.write("        <title>Cadastrar produto</title>\n");
            out.write("    </head>\n");
            out.write("    <body>\n");
            out.write("        ");
            session = request.getSession(false);
            if (session != null) {
                if ((Boolean) session.getAttribute("isLogado") == null) {
                    response.sendRedirect("../Controller?txtAcao=redirecionaNaoLogado");
                }
            }

            out.write("   \n");
            out.write("        <header>\n");
            out.write("            <div class=\"blog-masthead\">\n");
            out.write("                <div class=\"container\">\n");
            out.write("                    <nav class=\"nav\">\n");
            out.write("                        <a class=\"nav-link\" href=\"../trabalho_ECOMMERCE/Controller?txtAcao=pageLogado\">Início</a>\n");
            out.write("                        <a class=\"nav-link\" href=\"../trabalho_ECOMMERCE/Controller?txtAcao=pageAtualizarPessoa\">Atualizar dados pessoais</a>   \n");
            out.write("                        <a class=\"nav-link\" href=\"../trabalho_ECOMMERCE/Controller?txtAcao=pageCarrinho\">Carrinho</a>\n");
            out.write("                        <a class=\"nav-link\" href=\"../trabalho_ECOMMERCE/Controller?txtAcao=pageHistorico\">Histórico</a>               \n");
            out.write("                        <a class=\"nav-link active\" href=\"../trabalho_ECOMMERCE/Controller?txtAcao=pageProdutos\">Produtos</a>\n");
            out.write("                        <a class=\"nav-link\" href=\"../trabalho_ECOMMERCE/Controller?txtAcao=sairDaSessao\">Sair</a>\n");
            out.write("                    </nav>\n");
            out.write("                </div>\n");
            out.write("            </div>\n");
            out.write("        </header>\n");
            out.write("        <section class=\"container\">\n");
            out.write("            <form class=\"form-horizontal\" method=\"POST\" action=\"Controller\">\n");
            out.write("                <h2 class=\"form-signin-heading\">Doces & Salgados</h2>\n");
            out.write("                <label class=\"col-md-4 control-label\">Nome:</label>  \n");
            out.write("                <input name=\"txtNomeDoProduto\" type=\"text\" class=\"form-control input-md col-lg-3\" required=\"\">\n");
            out.write("                <label class=\"col-md-4 control-label\">Tipo:</label>  \n");
            out.write("                <input name=\"txtTipoDeProduto\" type=\"text\" class=\"form-control input-md col-lg-3\" required=\"\">\n");
            out.write("                <label class=\"col-md-4 control-label\">Descrição:</label>  \n");
            out.write("                <input name=\"txtDescricao\" type=\"text\" class=\"form-control input-md col-lg-12\" required=\"\">\n");
            out.write("                <label class=\"col-md-4 control-label\">Preço da unidade:</label>\n");
            out.write("                <input name=\"txtPrecoUnidade\" type=\"text\" class=\"form-control input-md col-lg-3\" required=\"\">\n");
            out.write("                <label class=\"col-md-4 control-label\">Quantidade:</label>  \n");
            out.write("                <input name=\"txtQuantidade\" type=\"text\" class=\"form-control input-md col-lg-3\" required=\"\">\n");
            out.write("                <label class=\"col-md-4 control-label\">Imagem:</label> <br/>\n");
            out.write("                <input name=\"txtImagemDoProduto\" type=\"file\" class=\"input-file\"><br/>\n");
            out.write("                <label class=\"col-md-4 control-label\">Item deve ser listado?</label><br/>\n");
            out.write("                <select name=\"txtAtivo\">\n");
            out.write("                    <option value=\"true\">Sim</option>\n");
            out.write("                    <option value=\"false\">Não</option>\n");
            out.write("                </select><br/>\n");
            out.write("                <input type=\"hidden\" name=\"txtAcao\" value=\"cadastrarProduto\" />\n");
            out.write("                <input class=\"btn btn-lg btn-primary\" type=\"submit\" value=\"Cadastrar\"/><br/>\n");
            out.write("            </form>\n");
            out.write("        </section>\n");
            out.write("        <footer class=\"blog-footer\">\n");
            out.write("            <p>Todos os direitos reservados | Copyright © 2017  Doces & Salgados.</p>\n");
            out.write("            <a href=\"#\"><img src=\"imagens/ico/facebook.png\"></a>\n");
            out.write("            <a href=\"#\"><img src=\"imagens/ico/google.png\"></a>\n");
            out.write("            <a href=\"#\"><img src=\"imagens/ico/twitter.png\"></a>\n");
            out.write("        </footer>\n");
            out.write("    </body>\n");
            out.write("</html>");
        } catch (Throwable t) {
            if (!(t instanceof SkipPageException)) {
                out = _jspx_out;
                if (out != null && out.getBufferSize() != 0) {
                    out.clearBuffer();
                }
                if (_jspx_page_context != null) {
                    _jspx_page_context.handlePageException(t);
                } else {
                    throw new ServletException(t);
                }
            }
        } finally {
            _jspxFactory.releasePageContext(_jspx_page_context);
        }
    }
}
