package model;

import java.time.LocalDate;

public class Entregador extends Usuario {
	private LocalDate dataNascimento;
	private Long telefone;
	private String nome;
	private Long CPF;
	private Long CNH;
	
	public Entregador(String email, String senha, LocalDate dataNascimento, Long telefone, String nome, Long cPF,
			Long cNH) {
		super(email, senha);
		this.dataNascimento = dataNascimento;
		this.telefone = telefone;
		this.nome = nome;
		CPF = cPF;
		CNH = cNH;
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

	public Long getCPF() {
		return CPF;
	}

	public void setCPF(Long cPF) {
		CPF = cPF;
	}

	public Long getCNH() {
		return CNH;
	}

	public void setCNH(Long cNH) {
		CNH = cNH;
	}
	
	
}
