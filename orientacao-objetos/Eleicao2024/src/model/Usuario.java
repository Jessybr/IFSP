package model;

public class Usuario {
	protected Integer idUsuario; 
	protected String senha; 
	protected String nome; 
	protected String cpf;
	protected String tipo;
	protected String ativo;
	
	public Usuario(Integer idUsuario, String senha, String nome, String cpf, String tipo, String ativo) {
		this.idUsuario = idUsuario;
		this.senha = senha;
		this.nome = nome;
		this.cpf = cpf;
		this.tipo = tipo;
		this.ativo = ativo;
	}
	
	public Usuario(String senha, String nome, String cpf, String tipo, String ativo) {
		this.senha = senha;
		this.nome = nome;
		this.cpf = cpf;
		this.tipo = tipo;
		this.ativo = ativo;
	}
	
	public Usuario(String cpf) {
		this.cpf = cpf;
	
	}

	public Integer getIdUsuario() {
		return idUsuario;
	}

	public void setIdUsuario(Integer idUsuario) {
		this.idUsuario = idUsuario;
	}

	public String getSenha() {
		return senha;
	}

	public void setSenha(String senha) {
		this.senha = senha;
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public String getCpf() {
		return cpf;
	}

	public void setCpf(String cpf) {
		this.cpf = cpf;
	}

	public String getTipo() {
		return tipo;
	}

	public void setTipo(String tipo) {
		this.tipo = tipo;
	} 
	
	public String getAtivo() {
		return ativo;
	}

	public void setAtivo(String ativo) {
		this.ativo = ativo;
	} 
	
}
