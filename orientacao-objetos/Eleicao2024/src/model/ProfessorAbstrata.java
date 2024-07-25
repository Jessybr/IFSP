package model;

import java.time.LocalDate;

public class ProfessorAbstrata extends EleitorAbstrata {
	protected Integer codProfessor;
	protected Integer numFuncional;
	protected String titulacao;
	protected String areaAtuacao;
	protected String statusDocencia;
	
	public ProfessorAbstrata(Integer codProfessor, Integer codEleitor, String nomeEleitor, LocalDate dataCadastro, String tipoEleitor,
			Integer numFuncional, String titulacao, String areaAtuacao, String statusDocencia) {
		
		super(codEleitor, nomeEleitor, dataCadastro);
		
		this.codProfessor = codProfessor;
		this.numFuncional = numFuncional;
		this.titulacao = titulacao;
		this.areaAtuacao = areaAtuacao;
		this.statusDocencia = statusDocencia;
	}
	
	
	
	public Integer getCodProfessor() {
		return codProfessor;
	}



	public void setCodProfessor(Integer codProfessor) {
		this.codProfessor = codProfessor;
	}



	public Integer getNumFuncional() {
		return numFuncional;
	}



	public void setNumFuncional(Integer numFuncional) {
		this.numFuncional = numFuncional;
	}



	public String getTitulacao() {
		return titulacao;
	}



	public void setTitulacao(String titulacao) {
		this.titulacao = titulacao;
	}



	public String getAreaAtuacao() {
		return areaAtuacao;
	}



	public void setAreaAtuacao(String areaAtuacao) {
		this.areaAtuacao = areaAtuacao;
	}



	public String getStatusDocencia() {
		return statusDocencia;
	}



	public void setStatusDocencia(String statusDocencia) {
		this.statusDocencia = statusDocencia;
	}



	public boolean validar() {
		// valida se o status da docencia é efetiva
		
		super.validarData();
				
		if (this.statusDocencia == "Efetiva") {
			return true;			
		} else {
			return false;	
		}
				
	}
	
}







