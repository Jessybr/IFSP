package model;


public class Candidatura {
	protected Integer codCandidato;
	protected String nomeCandidato;
	protected Integer pesoAluno;
	protected Integer pesoProfessor;
	protected Integer pesoFuncionario;
	protected String tipoCandidatura;

	public Candidatura() {
		
	}
	
	public Candidatura(Integer codCandidato, String nomeCandidato, Integer pesoAluno, Integer pesoProfessor,
			Integer pesoFuncionario, String tipoCandidatura) {
	
		this.codCandidato = codCandidato;
		this.nomeCandidato = nomeCandidato;
		this.pesoAluno = pesoAluno;
		this.pesoProfessor = pesoProfessor;
		this.pesoFuncionario = pesoFuncionario;
		this.tipoCandidatura = tipoCandidatura;
	}
	
		
	
	public Integer getCodCandidato() {
		return codCandidato;
	}

	
	public void setCodCandidato(Integer codCandidato) {
		this.codCandidato = codCandidato;
	}

	
	public String getNomeCandidato() {
		return nomeCandidato;
	}

	
	public void setNomeCandidato(String nomeCandidato) {
		this.nomeCandidato = nomeCandidato;
	}

	
	public Integer getPesoAluno() {
		return pesoAluno;
	}

	
	public void setPesoAluno(Integer pesoAluno) {
		this.pesoAluno = pesoAluno;
	}

	
	public Integer getPesoProfessor() {
		return pesoProfessor;
	}

	
	public void setPesoProfessor(Integer pesoProfessor) {
		this.pesoProfessor = pesoProfessor;
	}

	
	public Integer getPesoFuncionario() {
		return pesoFuncionario;
	}

	
	public void setPesoFuncionario(Integer pesoFuncionario) {
		this.pesoFuncionario = pesoFuncionario;
	}

	
	public String getTipoCandidatura() {
		return tipoCandidatura;
	}

	
	public void setTipoCandidatura(String tipoCandidatura) {
		this.tipoCandidatura = tipoCandidatura;
	}



	
	
	
	
	
}
