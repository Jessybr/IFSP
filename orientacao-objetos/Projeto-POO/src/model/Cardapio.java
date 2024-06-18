package model;

import java.util.List;

public class Cardapio {
	private List Pratos;
	private List Produtos;
	
	public Cardapio(List pratos, List produtos) {
		super();
		Pratos = pratos;
		Produtos = produtos;
	}

	public List getPratos() {
		return Pratos;
	}
	
	public void setPratos(List pratos) {
		Pratos = pratos;
	}
	
	public List getProdutos() {
		return Produtos;
	}
	
	public void setProdutos(List produtos) {
		Produtos = produtos;
	}
	
}
