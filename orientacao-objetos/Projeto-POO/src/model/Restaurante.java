package model;

public class Restaurante {
	private Long CNPJ;
	private String nome;
	private String endereco;
	private Long telefone;
	
	public Restaurante(Long CNPJ, String nome, String endereco, Long telefone) {
		super();
		this.CNPJ = CNPJ;
		this.nome = nome;
		this.endereco = endereco;
		this.telefone = telefone;
	}
	
	public Restaurante() {
		
	}
	
	public Long getCNPJ() {
		return CNPJ;
	}
	
	public void setCNPJ(Long CNPJ) {
		this.CNPJ = CNPJ;
	}
	
	public String getNome() {
		return nome;
	}
	
	public void setNome(String nome) {
		this.nome = nome;
	}
	
	public String getEndereco() {
		return endereco;
	}
	
	public void setEndereco(String endereco) {
		this.endereco = endereco;
	}
	public Long getTelefone() {
		return telefone;
	}
	
	public void setTelefone(Long telefone) {
		this.telefone = telefone;
	}
	
	
}
