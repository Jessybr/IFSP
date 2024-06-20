package model;

import java.util.List;

public class Pratos extends ItemCardapio {
	private Integer id;
	private String nome;
	private String descricao;
	private List ingredientes;
	
	public Pratos(Double preco, Integer id, Integer id2, String nome, String descricao, List ingredientes) {
		super(preco, id);
		id = id2;
		this.nome = nome;
		this.descricao = descricao;
		this.ingredientes = ingredientes;
	}

	public Pratos() {
		
	}

	public String getDescricao() {
		return descricao;
	}

	public void setDescricao(String descricao) {
		this.descricao = descricao;
	}

	public List getIngredientes() {
		return ingredientes;
	}

	public void setIngredientes(List ingredientes) {
		this.ingredientes = ingredientes;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}
	
	public void cadastrarPratos() {
		
	}
	
	public void editarPratos() {
		
	}

	public void desativarPratos() {
		
	}
	
	public void consultarPratos() {
		
	}
	
}
