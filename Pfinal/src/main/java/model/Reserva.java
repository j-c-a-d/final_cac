package model;
import java.util.Date;



public class Reserva {
	

    private Integer idreserva;
    private String nombre;
    private String apellido;
    private String usuario;
    private String mail;
    private Integer idVehiculo;
    private Integer fechaEntrega;
    private Integer fechaDevolu;
    private String direccion;
    private Integer idlocalidad;
    private Integer idprovincia;
    private Integer codPost;
    private Integer idPago;
    private String nomTarj;
    private Long numTarj;
    private Integer vtoTarj;
    private Integer codSeg;
    



    public Reserva(String nombre, String apellido, String usuario, String mail, Integer idVehiculo,Integer fechaEntrega,
			Integer fechaDevolu, String direccion, Integer idlocalidad, Integer idprovincia, Integer codPost,
			Integer idPago, String nomTarj, Long numTarj, Integer vtoTarj, Integer codSeg) {
		super();
		this.nombre = nombre;
		this.apellido = apellido;
		this.usuario = usuario;
		this.mail = mail;
		this.idVehiculo = idVehiculo;
		this.fechaEntrega = fechaEntrega;
		this.fechaDevolu = fechaDevolu;
		this.direccion = direccion;
		this.idlocalidad = idlocalidad;
		this.idprovincia = idprovincia;
		this.codPost = codPost;
		this.idPago = idPago;
		this.nomTarj = nomTarj;
		this.numTarj = numTarj;
		this.vtoTarj = vtoTarj;
		this.codSeg = codSeg;
	}



	public Reserva(Integer idreserva, String nombre, String apellido, String usuario, String mail, Integer idVehiculo,
			Integer fechaEntrega, Integer fechaDevolu, String direccion, Integer idlocalidad, Integer idprovincia,
			Integer codPost, Integer idPago, String nomTarj, Long numTarj, Integer vtoTarj, Integer codSeg) {
		super();
		this.idreserva = idreserva;
		this.nombre = nombre;
		this.apellido = apellido;
		this.usuario = usuario;
		this.mail = mail;
		this.idVehiculo = idVehiculo;
		this.fechaEntrega = fechaEntrega;
		this.fechaDevolu = fechaDevolu;
		this.direccion = direccion;
		this.idlocalidad = idlocalidad;
		this.idprovincia = idprovincia;
		this.codPost = codPost;
		this.idPago = idPago;
		this.nomTarj = nomTarj;
		this.numTarj = numTarj;
		this.vtoTarj = vtoTarj;
		this.codSeg = codSeg;
	}



	


	public Integer getIdreserva() {
		return idreserva;
	}



	public void setIdreserva(Integer idreserva) {
		this.idreserva = idreserva;
	}



	public String getNombre() {
		return nombre;
	}



	public void setNombre(String nombre) {
		this.nombre = nombre;
	}



	public String getApellido() {
		return apellido;
	}



	public void setApellido(String apellido) {
		this.apellido = apellido;
	}



	public String getUsuario() {
		return usuario;
	}



	public void setUsuario(String usuario) {
		this.usuario = usuario;
	}



	public String getMail() {
		return mail;
	}



	public void setMail(String mail) {
		this.mail = mail;
	}



	public Integer getIdVehiculo() {
		return idVehiculo;
	}



	public void setIdVehiculo(Integer idVehiculo) {
		this.idVehiculo = idVehiculo;
	}



	public Integer getFechaEntrega() {
		return fechaEntrega;
	}



	public void setFechaEntrega(Integer fechaEntrega) {
		this.fechaEntrega = fechaEntrega;
	}



	public Integer getFechaDevolu() {
		return fechaDevolu;
	}



	public void setFechaDevolu(Integer fechaDevolu) {
		this.fechaDevolu = fechaDevolu;
	}



	public String getDireccion() {
		return direccion;
	}



	public void setDireccion(String direccion) {
		this.direccion = direccion;
	}



	public Integer getIdlocalidad() {
		return idlocalidad;
	}



	public void setIdlocalidad(Integer idlocalidad) {
		this.idlocalidad = idlocalidad;
	}



	public Integer getIdprovincia() {
		return idprovincia;
	}



	public void setIdprovincia(Integer idprovincia) {
		this.idprovincia = idprovincia;
	}



	public Integer getCodPost() {
		return codPost;
	}



	public void setCodPost(Integer codPost) {
		this.codPost = codPost;
	}



	public Integer getIdPago() {
		return idPago;
	}



	public void setIdPago(Integer idPago) {
		this.idPago = idPago;
	}



	public String getNomTarj() {
		return nomTarj;
	}



	public void setNomTarj(String nomTarj) {
		this.nomTarj = nomTarj;
	}



	public Long getNumTarj() {
		return numTarj;
	}



	public void setNumTarj(Long numTarj) {
		this.numTarj = numTarj;
	}



	public Integer getVtoTarj() {
		return vtoTarj;
	}



	public void setVtoTarj(Integer vtoTarj) {
		this.vtoTarj = vtoTarj;
	}



	public Integer getCodSeg() {
		return codSeg;
	}



	public void setCodSeg(Integer codSeg) {
		this.codSeg = codSeg;
	}

    
}
