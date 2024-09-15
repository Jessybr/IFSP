package model;

import java.time.LocalDate;

public class FuncionarioAbstrata extends EleitorAbstrata {
	protected Integer codFuncionario;
	protected Integer numFuncional;
	protected String departamento;
	protected String cargo;
	protected String statusAtividade;
	
	public FuncionarioAbstrata(Integer codFuncionario, Integer codEleitor, String nomeEleitor, LocalDate dataCadastro, String tipoEleitor,
			Integer numFuncional, String departamento, String cargo, String statusAtividade) {
		
		super(codEleitor, nomeEleitor, dataCadastro);
		
		this.codFuncionario = codFuncionario;
		this.numFuncional = numFuncional;
		this.departamento = departamento;
		this.cargo = cargo;
		this.statusAtividade = statusAtividade;
	}
	
	
	
	public Integer getCodFuncionario() {
		return codFuncionario;
	}



	public void setCodFuncionario(Integer codFuncionario) {
		this.codFuncionario = codFuncionario;
	}



	public Integer getNumFuncional() {
		return numFuncional;
	}



	public void setNumFuncional(Integer numFuncional) {
		this.numFuncional = numFuncional;
	}



	public String getDepartamento() {
		return departamento;
	}



	public void setDepartamento(String departamento) {
		this.departamento = departamento;
	}



	public String getCargo() {
		return cargo;
	}



	public void setCargo(String cargo) {
		this.cargo = cargo;
	}



	public String getStatusAtividade() {
		return statusAtividade;
	}



	public void setStatusAtividade(String statusAtividade) {
		this.statusAtividade = statusAtividade;
	}



	public boolean validar() {
		// valida se o status da atividade é em exercicio
		
		super.validarData();
				
		if (this.statusAtividade == "Exercicio") {
			return true;			
		} else {
			return false;	
		}
				
	}
}


	
