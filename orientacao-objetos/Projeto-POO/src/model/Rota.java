package model;

public class Rota {
	private String latitude;
	private String longitude;
	private Double estimativaTempo;
	
	public Rota(String latitude, String longitude, Double estimativaTempo) {
		super();
		this.latitude = latitude;
		this.longitude = longitude;
		this.estimativaTempo = estimativaTempo;
	}
	
	public Rota() {
		
	}

	public String getLatitude() {
		return latitude;
	}
	
	public void setLatitude(String latitude) {
		this.latitude = latitude;
	}
	
	public String getLongitude() {
		return longitude;
	}
	
	public void setLongitude(String longitude) {
		this.longitude = longitude;
	}
	
	public Double getEstimativaTempo() {
		return estimativaTempo;
	}
	
	public void setEstimativaTempo(Double estimativaTempo) {
		this.estimativaTempo = estimativaTempo;
	}
	
	
}
