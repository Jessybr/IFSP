package model;

import java.time.LocalDate;


public abstract class EleitorAbstrata {
	protected Integer codEleitor;
	protected String nomeEleitor;
	protected LocalDate dataCadastro;
	
	public EleitorAbstrata(Integer codEleitor, String nomeEleitor, LocalDate dataCadastro) {
	
		this.codEleitor = codEleitor;
		this.nomeEleitor = nomeEleitor;
		this.dataCadastro = dataCadastro;
	}
	
	
	public abstract boolean validar ();
	
	protected boolean validarData() { // valida se a data do cadastro é 
		  //anterior a 3 meses da data atual
	  
		  LocalDate data = LocalDate.now();
	  
	  
	  if (this.dataCadastro.getMonthValue() < data.getMonthValue()-3) {		
		  
		  return true; 		  
	  } else { 
		  
		  return false; 
	  }
	  
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
	
	
	
		
}




