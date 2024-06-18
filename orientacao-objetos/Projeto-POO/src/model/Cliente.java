package model;

import java.time.LocalDate;

public class Cliente extends Usuario {
	private LocalDate dataNascimento;
	private Long telefone;
	private String endereco;
	private String nome;
	private Long CPF;
	
	public Cliente(String email, String senha, LocalDate dataNascimento, Long telefone, String endereco, String nome,
			Long cPF) {
		super(email, senha);
		this.dataNascimento = dataNascimento;
		this.telefone = telefone;
		this.endereco = endereco;
		this.nome = nome;
		CPF = cPF;
	}
	
	public Cliente() {
		
	}

	public LocalDate getDataNascimento() {
		return dataNascimento;
	}
	
	public void setDataNascimento(LocalDate dataNascimento) {
		this.dataNascimento = dataNascimento;
	}
	
	public Long getTelefone() {
		return telefone;
	}
	
	public void setTelefone(Long telefone) {
		this.telefone = telefone;
	}
	
	public String getEndereco() {
		return endereco;
	}
	
	public void setEndereco(String endereco) {
		this.endereco = endereco;
	}
	
	public String getNome() {
		return nome;
	}
	
	public void setNome(String nome) {
		this.nome = nome;
	}
	
	public Long getCPF() {
		return CPF;
	}
	
	public void setCPF(Long cPF) {
		CPF = cPF;
	}
	
	
}
