package model;
import java.time.LocalDate;



public class Urna {
	private Integer codUrna;
	private String modeloUrna;
	private LocalDate dataAbertura;
	private LocalDate dataFechamento;
	private String statusUrna;
	private Usuario usuarioResponsavel;
			
	public Urna() {
		
	}
	
	
	public Urna(Integer codUrna, String modeloUrna) {
		this.setCodUrna(codUrna);
		this.setModeloUrna(modeloUrna);
	}
	

	public Urna(Integer codUrna, String modeloUrna, LocalDate dataAbertura, LocalDate dataFechamento, String statusUrna,
			Usuario usuarioResponsavel) {
		this.setCodUrna(codUrna);
		this.setModeloUrna(modeloUrna);
		this.setDataAbertura(dataAbertura);
		this.setDataFechamento(dataFechamento);
		this.setStatusUrna(statusUrna);
		this.setUsuarioResponsavel(usuarioResponsavel);
	}


	
	
	public Boolean abrirUrna (Usuario mesario, LocalDate data) {
		  
		  this.setDataAbertura(data); 
		  this.setUsuarioResponsavel(mesario);
		  this.setStatusUrna("A"); 
		  return true; 
	}
	 
	
	public Integer getCodUrna() {
		return codUrna;
	}

	
	public void setCodUrna(Integer codUrna) {
		this.codUrna = codUrna;
	}

	
	public String getModeloUrna() {
		return modeloUrna;
	}

	
	public void setModeloUrna(String modeloUrna) {
		this.modeloUrna = modeloUrna;
	}

	
	public LocalDate getDataAbertura() {
		return dataAbertura;
	}

	
	public void setDataAbertura(LocalDate dataAbertura) {
		this.dataAbertura = dataAbertura;
	}

	
	public LocalDate getDataFechamento() {
		return dataFechamento;
	}

	
	public void setDataFechamento(LocalDate dataFechamento) {
		this.dataFechamento = dataFechamento;
	}

	
	public String getStatusUrna() {
		return statusUrna;
	}

	
	public void setStatusUrna(String statusUrna) {
		this.statusUrna = statusUrna;
	}

	
	public Usuario getUsuarioResponsavel() {
		return usuarioResponsavel;
	}

	
	public void setUsuarioResponsavel(Usuario usuarioResponsavel) {
		this.usuarioResponsavel = usuarioResponsavel;
	}

	
	
	
	
}

