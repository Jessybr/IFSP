package model;

import java.sql.Date;

public class Aberto extends Pedido{
	private Date data;
	private Date hora;
	
	public Aberto(Date data, Date hora) {
		super();
		this.data = data;
		this.hora = hora;
	}
	
	public Aberto() {
		
	}

	public Date getData() {
		return data;
	}

	public void setData(Date data) {
		this.data = data;
	}

	public Date getHora() {
		return hora;
	}

	public void setHora(Date hora) {
		this.hora = hora;
	}
	
	public void editarStatus() {
		
		return ;
	}
}
