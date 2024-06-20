package model;

import java.sql.Date;

public class EmPreparo extends Pedido{
	private Date data;
	private Date hora;
	
	public EmPreparo(Date data, Date hora) {
		super();
		this.data = data;
		this.hora = hora;
	}
	
	public EmPreparo() {
		
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
