package servlet;

import bean.Pessoa;
import bean.Produto;
import dao.EcommerceDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class Controller extends HttpServlet {

    Long idDoLogado;

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String acao = request.getParameter("txtAcao");
        HttpSession session = request.getSession();
        Boolean isLogado = false;

        if (acao.equals("login")) {
            String usuario = request.getParameter("txtLogin");
            String senha = request.getParameter("txtSenha");
            Boolean errouDados = true;
            isLogado = true;
            try {
                EcommerceDAO logado = new EcommerceDAO();
                idDoLogado = logado.entrarUsuario(usuario, senha);
                if (idDoLogado != null) {
                    session.setAttribute("isLogado", isLogado);
                    request.getRequestDispatcher("logado/index.jsp").forward(request, response);
                } else {
                    request.setAttribute("errouDados", errouDados);
                    request.getRequestDispatcher("index.jsp").forward(request, response);
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }

        if (acao.equals("cadastrarPessoa")) {
            String nome = request.getParameter("txtNomeCompleto");
            String rg = request.getParameter("txtRG");
            String cpf = request.getParameter("txtCPF");
            String foto = request.getParameter("txtFoto");
            String telefone = request.getParameter("txtTelefone");
            String email = request.getParameter("txtEmail");
            String endereco = request.getParameter("txtEndereco");
            String usuario = request.getParameter("txtUsuario");
            String senha = request.getParameter("txtSenha");
            Boolean cadastrado = false;
            try {
                EcommerceDAO cadastrar = new EcommerceDAO();
                if (cadastrar.verificarCadastro(cpf, rg, usuario, email)) {
                    request.setAttribute("cadastrado", cadastrado);
                    request.getRequestDispatcher("cadastrarPessoa.jsp").forward(request, response);
                } else {
                    Pessoa p = new Pessoa();
                    p.setNomeCompleto(nome);
                    p.setRg(rg);
                    p.setCpf(cpf);
                    p.setFoto(foto);
                    p.setTelefone(telefone);
                    p.setEmail(email);
                    p.setEndereco(endereco);
                    p.setLogin(usuario);
                    p.setSenha(senha);
                    cadastrar.inserirPessoa(p);
                    request.getRequestDispatcher("index.jsp").forward(request, response);
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }

        if (acao.equals("atualizarPessoa") && (Boolean) session.getAttribute("isLogado") == true) {
            String nome = request.getParameter("txtNomeCompleto");
            String rg = request.getParameter("txtRG");
            String cpf = request.getParameter("txtCPF");
            String foto = request.getParameter("txtFoto");
            String telefone = request.getParameter("txtTelefone");
            String email = request.getParameter("txtEmail");
            String endereco = request.getParameter("txtEndereco");
            String usuario = request.getParameter("txtUsuario");
            String senha = request.getParameter("txtSenha");
            try {
                Pessoa p = new Pessoa();
                p.setNomeCompleto(nome);
                p.setRg(rg);
                p.setCpf(cpf);
                p.setFoto(foto);
                p.setTelefone(telefone);
                p.setEmail(email);
                p.setEndereco(endereco);
                p.setLogin(usuario);
                p.setSenha(senha);
                EcommerceDAO logado = new EcommerceDAO();
                logado.atualizarPessoa(p);
                request.getRequestDispatcher("index.jsp").forward(request, response);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        if (acao.equals("cadastrarProduto") && (Boolean) session.getAttribute("isLogado") == true) {
            String nomeDoProduto = request.getParameter("txtNomeDoProduto");
            String tipoDeProduto = request.getParameter("txtTipoDeProduto");
            String descricao = request.getParameter("txtDescricao");
            Double precoPorUnidade = Double.valueOf(request.getParameter("txtPrecoUnidade"));
            Integer quantidade = Integer.valueOf(request.getParameter("txtQuantidade"));
            String imagemDoProduto = request.getParameter("txtImagemDoProduto");
            Boolean ativo = Boolean.valueOf(request.getParameter("txtAtivo"));
            try {
                Produto p = new Produto();
                p.setNomeDoProduto(nomeDoProduto);
                p.setTipoDeProduto(tipoDeProduto);
                p.setDescricao(descricao);
                p.setPrecoPorUnidade(precoPorUnidade);
                p.setQuantidade(quantidade);
                p.setImagemDoProduto(imagemDoProduto);
                p.setAtivo(ativo);
                EcommerceDAO logado = new EcommerceDAO();
                logado.inserirProduto(p);
                request.getRequestDispatcher("logado/cadastrarProduto.jsp").forward(request, response);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        if (acao.equals("atualizarProduto") && (Boolean) session.getAttribute("isLogado") == true) {
            String nomeDoProduto = request.getParameter("txtNomeDoProduto");
            String tipoDeProduto = request.getParameter("txtTipoDeProduto");
            String descricao = request.getParameter("txtDescricao");
            Double precoPorUnidade = Double.valueOf(request.getParameter("txtPrecoUnidade"));
            Integer quantidade = Integer.valueOf(request.getParameter("txtQuantidade"));
            Boolean ativo = Boolean.valueOf(request.getParameter("txtAtivo"));
            try {
                EcommerceDAO logado = new EcommerceDAO();
                Produto p = new Produto();
                p.setNomeDoProduto(nomeDoProduto);
                p.setTipoDeProduto(tipoDeProduto);
                p.setDescricao(descricao);
                p.setPrecoPorUnidade(precoPorUnidade);
                p.setQuantidade(quantidade);
                p.setAtivo(ativo);
                logado.atualizarProduto(p);
                request.getRequestDispatcher("logado/atualizarProduto.jsp").forward(request, response);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }

        if (acao.equals("adicionarCarrinho") && (Boolean) session.getAttribute("isLogado") == true) {
            
        }

        if (acao.equals("sairDaSessao")) {
            session.invalidate();
            response.sendRedirect("index.jsp");
        }

        if (acao.equals("pageHistorico") && (Boolean) session.getAttribute("isLogado") == true) {
            request.getRequestDispatcher("logado/historico.jsp").forward(request, response);
        }

        if (acao.equals("pageProdutos") && (Boolean) session.getAttribute("isLogado") == true) {
            request.getRequestDispatcher("logado/produtos.jsp").forward(request, response);
        }

        if (acao.equals("pageListar") && (Boolean) session.getAttribute("isLogado") == true) {
            try {
                EcommerceDAO listando = new EcommerceDAO();
                List<Produto> produtos = listando.listar();
                request.setAttribute("produtos", produtos);
                request.getRequestDispatcher("logado/listarProdutos.jsp").forward(request, response);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }

        if (acao.equals("pageSelecionado") && (Boolean) session.getAttribute("isLogado") == true) {
            try {
                Long itemSelecionado = Long.valueOf(request.getParameter("itemSelecionado"));
                EcommerceDAO listando = new EcommerceDAO();
                Produto selecionado = listando.buscarProduto(itemSelecionado);
                request.setAttribute("selecionado", selecionado);
                request.getRequestDispatcher("logado/produtoSelecionado.jsp").forward(request, response);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }

        if (acao.equals("pageCarrinho") && (Boolean) session.getAttribute("isLogado") == true) {
            request.getRequestDispatcher("logado/carrinho.jsp").forward(request, response);
        }

        if (acao.equals("pageAtualizarProduto") && (Boolean) session.getAttribute("isLogado") == true) {
            try {
                Long itemSelecionado = Long.valueOf(request.getParameter("itemSelecionado"));
                EcommerceDAO atualizando = new EcommerceDAO();
                Produto produtoParaAtualizar = new Produto();
                produtoParaAtualizar = atualizando.buscarProduto(itemSelecionado);
                request.setAttribute("produtoParaAtualizar", produtoParaAtualizar);
                request.getRequestDispatcher("logado/atualizarProduto.jsp").forward(request, response);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }

        if (acao.equals("pageAtualizarPessoa") && (Boolean) session.getAttribute("isLogado") == true) {
            try {
                EcommerceDAO atualizando = new EcommerceDAO();
                Pessoa pessoaParaAtualizar = new Pessoa();
                pessoaParaAtualizar = atualizando.buscarPessoa(idDoLogado);
                request.setAttribute("pessoaParaAtualizar", pessoaParaAtualizar);
                request.getRequestDispatcher("logado/atualizarPessoa.jsp").forward(request, response);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }

        if (acao.equals("pageCadastroProduto") && (Boolean) session.getAttribute("isLogado") == true) {
            request.getRequestDispatcher("logado/cadastrarProduto.jsp").forward(request, response);
        }

        if (acao.equals("pageLogin")) {
            request.getRequestDispatcher("index.jsp").forward(request, response);
        }

        if (acao.equals("pageCadastrarPessoa")) {
            request.getRequestDispatcher("cadastrarPessoa.jsp").forward(request, response);
        }

        if (acao.equals("pageLogado")) {
            request.getRequestDispatcher("logado/index.jsp").forward(request, response);
        }

        if (acao.equals("redirecionaNaoLogado")) {
            request.getRequestDispatcher("index.jsp").forward(request, response);
        }
    }

// <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
