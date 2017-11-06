package bean;

import java.io.Serializable;

public class Produto implements Serializable {

    private Long id;
    private String nomeDoProduto;
    private String tipoDeProduto;
    private String descricao;
    private Double precoPorUnidade;
    private Integer quantidade;
    private String imagemDoProduto;
    private Boolean ativo;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getNomeDoProduto() {
        return nomeDoProduto;
    }

    public void setNomeDoProduto(String nomeDoProduto) {
        this.nomeDoProduto = nomeDoProduto;
    }

    public String getTipoDeProduto() {
        return tipoDeProduto;
    }

    public void setTipoDeProduto(String tipoDeProduto) {
        this.tipoDeProduto = tipoDeProduto;
    }

    public String getDescricao() {
        return descricao;
    }

    public void setDescricao(String descricao) {
        this.descricao = descricao;
    }

    public Double getPrecoPorUnidade() {
        return precoPorUnidade;
    }

    public void setPrecoPorUnidade(Double precoPorUnidade) {
        this.precoPorUnidade = precoPorUnidade;
    }

    public Integer getQuantidade() {
        return quantidade;
    }

    public void setQuantidade(Integer quantidade) {
        this.quantidade = quantidade;
    }

    public String getImagemDoProduto() {
        return imagemDoProduto;
    }

    public void setImagemDoProduto(String imagemDoProduto) {
        this.imagemDoProduto = imagemDoProduto;
    }

    public Boolean getAtivo() {
        return ativo;
    }

    public void setAtivo(Boolean ativo) {
        this.ativo = ativo;
    }

    public Produto() {
    }
}
