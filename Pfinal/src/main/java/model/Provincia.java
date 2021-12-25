package model;

public class Provincia {
	private Integer idProvincia;
	private String nombre;
	public Provincia(Integer idPRovincia, String nombre) {
		super();
		this.idProvincia = idPRovincia;
		this.nombre = nombre;
	}
	public Integer getIdPRovincia() {
		return idProvincia;
	}
	public void setIdPRovincia(Integer idPRovincia) {
		this.idProvincia = idPRovincia;
	}
	public String getNombre() {
		return nombre;
	}
	public void setNombre(String nombre) {
		this.nombre = nombre;
	}
	
	
	
}
