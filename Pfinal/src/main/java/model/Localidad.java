package model;

public class Localidad {
private Integer idLocalidad;
private String nombre;

public Localidad(Integer idLocalidad, String nombre) {
	super();
	this.idLocalidad = idLocalidad;
	this.nombre = nombre;
}

public Integer getIdLocalidad() {
	return idLocalidad;
}

public void setIdLocalidad(Integer idLocalidad) {
	this.idLocalidad = idLocalidad;
}

public String getNombre() {
	return nombre;
}

public void setNombre(String nombre) {
	this.nombre = nombre;
}
 
}
