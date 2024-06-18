package model;

public class Funcionario extends Usuario {
	private Integer codFuncional;
	private String nome;
	private Long CPF;
	
	public Funcionario(String email, String senha, Integer codFuncional, String nome, Long cPF) {
		super(email, senha);
		this.codFuncional = codFuncional;
		this.nome = nome;
		CPF = cPF;
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

	public Long getCPF() {
		return CPF;
	}

	public void setCPF(Long cPF) {
		CPF = cPF;
	}
	
}
