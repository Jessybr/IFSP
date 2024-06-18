package model;

import java.util.List;

public class Pedido {
	private Integer id;
	private List itens;
	private Double precoTotal;
	private String status;
	private String endereco;
	private Double estimativaTempo;
	
	public Pedido() {
		
	}
	
	public Pedido(Integer id, List itens, Double precoTotal, String status, String endereco, Double estimativaTempo) {
		super();
		this.id = id;
		this.itens = itens;
		this.precoTotal = precoTotal;
		this.status = status;
		this.endereco = endereco;
		this.estimativaTempo = estimativaTempo;
	}

	public Integer getId() {
		return id;
	}
	
	public void setId(Integer id) {
		this.id = id;
	}
	
	public List getItens() {
		return itens;
	}
	
	public void setItens(List itens) {
		this.itens = itens;
	}
	
	public Double getPrecoTotal() {
		return precoTotal;
	}
	
	public void setPrecoTotal(Double precoTotal) {
		this.precoTotal = precoTotal;
	}
	
	public String getStatus() {
		return status;
	}
	
	public void setStatus(String status) {
		this.status = status;
	}
	
	public String getEndereco() {
		return endereco;
	}
	
	public void setEndereco(String endereco) {
		this.endereco = endereco;
	}
	
	public Double getEstimativaTempo() {
		return estimativaTempo;
	}
	
	public void setEstimativaTempo(Double estimativaTempo) {
		this.estimativaTempo = estimativaTempo;
	}
	
	
}
