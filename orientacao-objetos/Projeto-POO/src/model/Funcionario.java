package model;

public class Funcionario extends Usuario {
	private Integer codFuncional;
	private String nome;
	private Long cpf;
	
	public Funcionario(String email, String senha, Integer codFuncional, String nome, Long cpf) {
		super(email, senha);
		this.codFuncional = codFuncional;
		this.nome = nome;
		this.cpf = cpf;
	}
	
	public Funcionario() {
		
	}

	public Integer getCodFuncional() {
		return codFuncional;
	}

	public void setCodFuncional(Integer codFuncional) {
		this.codFuncional = codFuncional;
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
	
	public void aceitarPedido() {
		
	}
	
	public void editarDados() {
		
	}
	
	public void consultarDados() {
		
	}
}
