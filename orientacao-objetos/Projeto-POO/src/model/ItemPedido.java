package model;

public class ItemPedido {
	private double preco;
	private Integer id;
	private Integer quantidade;
	
	public ItemPedido(double preco, Integer id, Integer quantidade) {
		super();
		this.preco = preco;
		this.id = id;
		this.quantidade = quantidade;
	}

	public ItemPedido() {
		
	}
	
	public double getPreco() {
		return preco;
	}
	
	public void setPreco(double preco) {
		this.preco = preco;
	}
	
	public Integer getId() {
		return id;
	}
	
	public void setId(Integer id) {
		this.id = id;
	}
	
	public Integer getQuantidade() {
		return quantidade;
	}
	
	public void setQuantidade(Integer quantidade) {
		this.quantidade = quantidade;
	}
	
	public void adicionarItemPedido() {
		
	}
	
	public void editarItemPedido() {
			
	}

	public void exluirItemPedido() {
		
	}
	
	public void consultarItemPedido() {
		
	}
	
	
}
