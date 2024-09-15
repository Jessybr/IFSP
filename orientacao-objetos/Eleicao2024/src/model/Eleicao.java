package model;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;


public class Eleicao {
	
	private Integer codEleicao;
	private LocalDate dataRealizacao;
	private String status; 
	private List<Voto> listaVotos;
	private List<Eleitor> listaEleitor;
	
	public Eleicao(LocalDate dataRealizacao, String status) {
		this.dataRealizacao = dataRealizacao;
		this.status = status;
		this.listaVotos = new ArrayList<Voto>();
		this.listaEleitor = null;

	}
	
	public Eleicao(Integer codEleicao) {
		this.codEleicao = codEleicao;
		this.dataRealizacao = null;
		this.status = null;
		this.listaVotos = new ArrayList<Voto>();
		this.listaEleitor = null;
	}
	
	/*
	 * public Eleicao(LocalDate dataRealizacao, String status) { this.dataRealizacao
	 * = dataRealizacao; this.status = status; this.voto = new Voto(); }
	 */

	
	public Integer getCodEleicao() {
		return codEleicao;
	}

	
	public List<Eleitor> getListaEleitor() {
		return listaEleitor;
	}

	
	public void setListaEleitor(List<Eleitor> listaEleitor) {
		this.listaEleitor = listaEleitor;
	}

	
	public void setCodEleicao(Integer codEleicao) {
		this.codEleicao = codEleicao;
	}

	
	public LocalDate getDataRealizacao() {
		return dataRealizacao;
	}

	
	public void setDataRealizacao(LocalDate dataRealizacao) {
		this.dataRealizacao = dataRealizacao;
	}

	
	public String getStatus() {
		return status;
	}

	
	public void setStatus(String status) {
		this.status = status;
	}

	
	public List<Voto> getListaVotos() {
		return listaVotos;
	}

	
	public void setListaVotos(List<Voto> listaVotos) {
		this.listaVotos = listaVotos;
	}

	
	public boolean liberarVotacao (Eleitor Eleitor) {
			return true;	
	}
	
	
	public boolean verificarVotacao(Eleitor Eleitor) {
		return true;
	}
	
}


