package model;

import java.time.LocalDate;

public class Entregador extends Usuario {
	private LocalDate dataNascimento;
	private Long telefone;
	private String nome;
	private Long cpf;
	private Long cnh;
	
	public Entregador(String email, String senha, LocalDate dataNascimento, Long telefone, String nome, Long cpf,
			Long cnh) {
		super(email, senha);
		this.dataNascimento = dataNascimento;
		this.telefone = telefone;
		this.nome = nome;
		this.cpf = cpf;
		this.cnh = cnh;
	}
	
	public Entregador() {
		
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

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public Long getcpf() {
		return cpf;
	}

	public void setcpf(Long cpf) {
		cpf = cpf;
	}

	public Long getcnh() {
		return cnh;
	}

	public void setcnh(Long cnh) {
		cnh = cnh;
	}
	
	public void aceitarEntrega() {
		
	}
	
	public void escolherRota() {
		
	}
	
	public void editarDados() {
		
	}
	
	public void consultarDados() {
		
	}
}
