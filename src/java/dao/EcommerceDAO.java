package dao;

import bean.Pessoa;
import bean.Produto;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class EcommerceDAO {

    private Connection conexao;

    public EcommerceDAO() throws SQLException, ClassNotFoundException {
        this.conexao = new ConnectionFactory().getConnection();
    }

    //Usuário
    public Long entrarUsuario(String usuario, String senha) throws SQLException {
        String sql = "SELECT * FROM usuario WHERE login = ? AND senha = ?;";
        PreparedStatement stmt = conexao.prepareStatement(sql);
        stmt.setString(1, usuario);
        stmt.setString(2, senha);
        ResultSet rs = stmt.executeQuery();
        if (rs.next()) {
            return rs.getLong("id_usuario");
        }
        stmt.close();
        return null;
    }

    //Pessoa
    public void inserirPessoa(Pessoa p) throws SQLException {
        String sql = "INSERT INTO usuario (nome, rg, cpf, foto, telefone, email, endereco, login, senha) values (?, ?, ?, ?, ?, ?, ?, ?, ?);";
        PreparedStatement stmt = conexao.prepareStatement(sql);
        stmt.setString(1, p.getNomeCompleto());
        stmt.setString(2, p.getRg());
        stmt.setString(3, p.getCpf());
        stmt.setString(4, p.getFoto());
        stmt.setString(5, p.getTelefone());
        stmt.setString(6, p.getEmail());
        stmt.setString(7, p.getEndereco());
        stmt.setString(8, p.getLogin());
        stmt.setString(9, p.getSenha());
        stmt.execute();
        stmt.close();
    }

    public void atualizarPessoa(Pessoa p) throws SQLException {
        String sql = "UPDATE usuario SET nome = ?, rg = ?, cpf = ?, foto = ?, telefone = ?, email = ?, endereco = ? WHERE id_usuario = ?;";
        PreparedStatement stmt = conexao.prepareStatement(sql);
        stmt.setString(1, p.getNomeCompleto());
        stmt.setString(2, p.getRg());
        stmt.setString(3, p.getCpf());
        stmt.setString(4, p.getFoto());
        stmt.setString(5, p.getTelefone());
        stmt.setString(6, p.getEmail());
        stmt.setString(7, p.getEndereco());
        stmt.setLong(8, p.getId());
        stmt.execute();
        stmt.close();
    }

    public void apagarPessoa(Integer id) throws SQLException {
        String sql = "DELETE FROM usuario WHERE id_usuario = ?;";
        PreparedStatement stmt = conexao.prepareStatement(sql);
        stmt.setLong(1, id);
        stmt.execute();
        stmt.close();
    }

    //Produtos
    public void inserirProduto(Produto p) throws SQLException {
        String sql = "INSERT INTO produto (nome, tipodeproduto, descricao, precounitario, quantidade, imagemdoproduto, active) values (?, ?, ?, ?, ?, ?, ?);";
        PreparedStatement stmt = conexao.prepareStatement(sql);
        stmt.setString(1, p.getNomeDoProduto());
        stmt.setString(2, p.getTipoDeProduto());
        stmt.setString(3, p.getDescricao());
        stmt.setDouble(4, p.getPrecoPorUnidade());
        stmt.setInt(5, p.getQuantidade());
        stmt.setString(6, p.getImagemDoProduto());
        stmt.setBoolean(7, p.getAtivo());
        stmt.execute();
        stmt.close();
    }

    public void atualizarProduto(Produto p) throws SQLException {
        String sql = "UPDATE usuario SET nome = ?, tipodeproduto = ?, descricao = ?, precounitario = ?, quantidade = ?, imagemdoproduto = ?, active = ? WHERE id_produto = ?;";
        PreparedStatement stmt = conexao.prepareStatement(sql);
        stmt.setString(1, p.getNomeDoProduto());
        stmt.setString(2, p.getTipoDeProduto());
        stmt.setString(3, p.getDescricao());
        stmt.setDouble(4, p.getPrecoPorUnidade());
        stmt.setInt(5, p.getQuantidade());
        stmt.setString(6, p.getImagemDoProduto());
        stmt.setBoolean(7, p.getAtivo());
        stmt.setLong(8, p.getId());
        stmt.execute();
        stmt.close();
    }

    public Pessoa buscarPessoa(long id) throws SQLException {
        String sql = "SELECT * FROM produto WHERE id_usuario = ?;";
        PreparedStatement stmt = conexao.prepareStatement(sql);
        stmt.setLong(1, id);
        ResultSet rs = stmt.executeQuery();
        if (rs.next()) {
            Pessoa p = new Pessoa();
            p.setNomeCompleto(rs.getString("nome"));
            p.setRg(rs.getString("rg"));
            p.setCpf(rs.getString("cpf"));
            p.setFoto(rs.getString("foto"));
            p.setTelefone(rs.getString("telefone"));
            p.setEmail(rs.getString("email"));
            p.setEndereco(rs.getString("endereco"));
            p.setLogin(rs.getString("login"));
            p.setSenha(rs.getString("senha"));
            return p;
        }
        stmt.close();
        return null;
    }
    
    public void apagarProduto(long id) throws SQLException {
        String sql = "DELETE FROM produto WHERE id_produto = ?;";
        PreparedStatement stmt = conexao.prepareStatement(sql);
        stmt.setLong(1, id);
        stmt.execute();
        stmt.close();
    }

    public List<Produto> listar() throws SQLException {
        List<Produto> produtos = new ArrayList<>();
        String sql = "SELECT * FROM produto WHERE active = true;";
        PreparedStatement stmt = conexao.prepareStatement(sql);
        ResultSet rs = stmt.executeQuery();
        while (rs.next()) {
            Produto p = new Produto();
            p.setId(rs.getLong("id_Produto"));
            p.setNomeDoProduto(rs.getString("nome"));
            p.setTipoDeProduto(rs.getString("tipodeproduto"));
            p.setDescricao(rs.getString("descricao"));
            p.setPrecoPorUnidade(rs.getDouble("precounitario"));
            p.setQuantidade(rs.getInt("quantidade"));
            p.setImagemDoProduto(rs.getString("imagemdoproduto"));
            p.setAtivo(rs.getBoolean("active"));
            produtos.add(p);
        }
        stmt.close();
        return produtos;
    }

    public List<Produto> listarTudo() throws SQLException {
        List<Produto> produtos = new ArrayList<>();
        String sql = "SELECT * FROM produto;";
        PreparedStatement stmt = conexao.prepareStatement(sql);
        ResultSet rs = stmt.executeQuery();
        while (rs.next()) {
            Produto p = new Produto();
            p.setId(rs.getLong("id_Produto"));
            p.setNomeDoProduto(rs.getString("nome"));
            p.setTipoDeProduto(rs.getString("tipodeproduto"));
            p.setDescricao(rs.getString("descricao"));
            p.setPrecoPorUnidade(rs.getDouble("precounitario"));
            p.setQuantidade(rs.getInt("quantidade"));
            p.setImagemDoProduto(rs.getString("imagemdoproduto"));
            p.setAtivo(rs.getBoolean("active"));
            produtos.add(p);
        }
        stmt.close();
        return produtos;
    }

    public Produto buscarProduto(long id) throws SQLException {
        String sql = "SELECT * FROM produto WHERE id_produto = ?;";
        PreparedStatement stmt = conexao.prepareStatement(sql);
        stmt.setLong(1, id);
        ResultSet rs = stmt.executeQuery();
        if (rs.next()) {
            Produto p = new Produto();
            p.setId(rs.getLong("id_produto"));
            p.setNomeDoProduto(rs.getString("nome"));
            p.setTipoDeProduto(rs.getString("tipodeproduto"));
            p.setDescricao(rs.getString("descricao"));
            p.setPrecoPorUnidade(rs.getDouble("precounitario"));
            p.setQuantidade(rs.getInt("quantidade"));
            p.setImagemDoProduto(rs.getString("imagemdoproduto"));
            p.setAtivo(rs.getBoolean("active"));
            return p;
        }
        stmt.close();
        return null;
    }

    //Histórico
    public void fechar() throws SQLException {
        conexao.close();
    }
}
