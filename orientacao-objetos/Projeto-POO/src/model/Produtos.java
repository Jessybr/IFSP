package model;

public class Produtos extends ItemCardapio {
	private Integer id;
	private String nome;
	
	public Produtos(Double preco, Integer id, Integer id2, String nome) {
		super(preco, id);
		id = id2;
		this.nome = nome;
	}
	
	public Produtos() {
		
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
	
}
