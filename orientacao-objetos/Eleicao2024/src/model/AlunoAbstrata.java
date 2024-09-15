package model;

import java.time.LocalDate;

public class AlunoAbstrata extends EleitorAbstrata {
	protected Integer codAluno;
	protected Integer numProntuario;
	protected String curso;
	protected String statusMatricula;
	
	public AlunoAbstrata(Integer codAluno, Integer codEleitor, String nomeEleitor, LocalDate dataCadastro, String tipoEleitor,
			Integer numProntuario, String curso, String statusMatricula) {
		
		super(codEleitor, nomeEleitor, dataCadastro);		
		
		this.codAluno = codAluno;
		this.numProntuario = numProntuario;
		this.curso = curso;
		this.statusMatricula = statusMatricula;
	}
	
	public Integer getCodEleitor() {
		return codEleitor;
	}

	public void setCodEleitor(Integer codEleitor) {
		this.codEleitor = codEleitor;
	}

	public String getNomeEleitor() {
		return nomeEleitor;
	}

	public void setNomeEleitor(String nomeEleitor) {
		this.nomeEleitor = nomeEleitor;
	}

	public LocalDate getDataCadastro() {
		return dataCadastro;
	}

	public void setDataCadastro(LocalDate dataCadastro) {
		this.dataCadastro = dataCadastro;
	}
	
		
	public Integer getCodAluno() {
		return codAluno;
	}



	public void setCodAluno(Integer codAluno) {
		this.codAluno = codAluno;
	}



	public Integer getNumProntuario() {
		return numProntuario;
	}



	public void setNumProntuario(Integer numProntuario) {
		this.numProntuario = numProntuario;
	}



	public String getCurso() {
		return curso;
	}



	public void setCurso(String curso) {
		this.curso = curso;
	}



	public String getStatusMatricula() {
		return statusMatricula;
	}



	public void setStatusMatricula(String statusMatricula) {
		this.statusMatricula = statusMatricula;
	}



	public final boolean validar() {
		// valida se o status da matricula é ativa
	
		super.validarData();
		
		if (this.statusMatricula == "Ativa") {
			return true;			
		} else {
			return false;	
		}
				
	}
	
} 


