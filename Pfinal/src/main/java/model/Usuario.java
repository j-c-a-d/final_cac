package model;




public class Usuario {
    private Integer idUsuario;
    private String usuario;
    private String clave;
    private String nombreYApellido;
    private String email;
    
	public Usuario(Integer idUsuario, String usuario, String clave, String nombreYApellido, String email) {
		super();
		this.idUsuario = idUsuario;
		this.usuario = usuario;
		this.clave = clave;
		this.nombreYApellido = nombreYApellido;
		this.email = email;
	}
	
	public Usuario(String usuario, String clave,String nombreYApellido, String email) {
		super();
		this.usuario = usuario;
		this.clave = clave;
		this.nombreYApellido = nombreYApellido;
		this.email = email;

		
	}
	

	public Integer getIdUsuario() {
		return idUsuario;
	}

	public void setIdUsuario(Integer idUsuario) {
		this.idUsuario = idUsuario;
	}

	public String getUsuario() {
		return usuario;
	}

	public void setUsuario(String usuario) {
		this.usuario = usuario;
	}

	public String getClave() {
		return clave;
	}

	public void setClave(String clave) {
		this.clave = clave;
	}

	public String getNombreYApellido() {
		return nombreYApellido;
	}

	public void setNombreYApellido(String nombreYApellido) {
		this.nombreYApellido = nombreYApellido;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}
    
    
}
