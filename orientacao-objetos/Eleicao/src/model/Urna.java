package model;

import java.time.LocalDate;

public class Urna {
	
	private LocalDate dataAbertura;
	private LocalDate dataFechamento;
	private String modeloUrna;
	private String statusUrna;
	private Integer codUrna;
	
	public Urna(LocalDate dataAbertura, LocalDate dataFechamento, String modeloUrna, String statusUrna,
			Integer codUrna) {
		super();
		this.dataAbertura = dataAbertura;
		this.dataFechamento = dataFechamento;
		this.modeloUrna = modeloUrna;
		this.statusUrna = statusUrna;
		this.codUrna = codUrna;
	}
	
	public Urna(Integer codUrna) {
		this.codUrna = codUrna;
	}
	
	public Integer getCodUrna() {
		return codUrna;
	}
	public void setCodUrna(Integer codUrna) {
		this.codUrna = codUrna;
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
	public String getModeloUrna() {
		return modeloUrna;
	}
	public void setModeloUrna(String modeloUrna) {
		this.modeloUrna = modeloUrna;
	}
	public String getStatusUrna() {
		return statusUrna;
	}
	public void setStatusUrna(String statusUrna) {
		this.statusUrna = statusUrna;
	}
	
	public Boolean abrirUrna(LocalDate data) {
		this.setDataAbertura(data);
		this.setStatusUrna("A");
		return true;
	}
	
	public Boolean fecharUrna(LocalDate data) {
		this.setDataFechamento(data);
		this.setStatusUrna("F");
		return true;
	}
	
}
