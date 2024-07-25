package model;

import java.time.LocalDate;

public class Voto {
	private Integer codVoto;
	private LocalDate  dataVoto;
	private String tipoEleitor;
	private String votoBranco;
	private String votoNulo;
	private Candidatura candidatura;
	private Urna urna;
	private static  Integer   totalVotos;		
		
	public Voto() {
		
	}
	
	public Voto(Integer codVoto, LocalDate dataVoto, String tipoEleitor, String votoBranco, String votoNulo,
			Candidatura candidatura, Urna urna) {
		
		this.codVoto = codVoto;
		this.dataVoto = dataVoto;
		this.tipoEleitor = tipoEleitor;
		this.votoBranco = votoBranco;
		this.votoNulo = votoNulo;
		this.candidatura = candidatura;
		this.urna = urna;
		contabilizarVotos();
	}
		
	
	public static Integer getTotalVotos() {
		return totalVotos;
	}
	
	public static void setTotalVotos(Integer totalVotos) {
		Voto.totalVotos = totalVotos;
	}

	private static void contabilizarVotos() {
		Voto.totalVotos = totalVotos+1;
	}
	
	public Integer getCodVoto() {
		return codVoto;
	}
	public void setCodVoto(Integer codVoto) {
		this.codVoto = codVoto;
	}
	public LocalDate getDataVoto() {
		return dataVoto;
	}
	public void setDataVoto(LocalDate dataVoto) {
		this.dataVoto = dataVoto;
	}
	public String getTipoEleitor() {
		return tipoEleitor;
	}
	public void setTipoEleitor(String tipoEleitor) {
		this.tipoEleitor = tipoEleitor;
	}
	public Candidatura getCandidatura() {
		return candidatura;
	}
	public void setCandidatura(Candidatura candidatura) {
		this.candidatura = candidatura;
	}
	public Urna getUrna() {
		return urna;
	}
	public void setUrna(Urna urna) {
		this.urna = urna;
	}
	
	public String getVotoBranco() {
		return votoBranco;
	}



	public void setVotoBranco(String votoBranco) {
		this.votoBranco = votoBranco;
	}



	public String getVotoNulo() {
		return votoNulo;
	}



	public void setVotoNulo(String votoNulo) {
		this.votoNulo = votoNulo;
	}
	
}


