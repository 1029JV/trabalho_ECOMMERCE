/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package bean;

import java.io.Serializable;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

/**
 *
 * @author João Vitor
 */
public class PedidosEHistorico implements Serializable {

    private Long id_Pedido;
    private Produto produtoCompra;
    private Pessoa pessoaCompra;
    private static final Date dataHora = new Date();

    public Long getId_Pedido() {
        return id_Pedido;
    }

    public void setId_Pedido(Long id_Pedido) {
        this.id_Pedido = id_Pedido;
    }

    public Produto getProdutoCompra() {
        return produtoCompra;
    }

    public void setProdutoCompra(Produto produtoCompra) {
        this.produtoCompra = produtoCompra;
    }

    public Pessoa getPessoaCompra() {
        return pessoaCompra;
    }

    public void setPessoaCompra(Pessoa pessoaCompra) {
        this.pessoaCompra = pessoaCompra;
    }

    public static String getDate() {
        DateFormat dateFormat = new SimpleDateFormat("dd/MM/yyyy HH:mm:ss");
        return dateFormat.format(dataHora);
    }

    public PedidosEHistorico() {
    }

}
