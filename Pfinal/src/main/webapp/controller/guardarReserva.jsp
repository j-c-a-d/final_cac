<%@page import="dao.ReservaDAO"%>
<%@page import="model.Reserva"%>
<%@page import="java.lang.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%
	String nombre = request.getParameter("nombre");
	String apellido = request.getParameter("apellido");
	String usuario = request.getParameter("usuario");
	String mail = request.getParameter("mail");
	Integer vehiculo = Integer.valueOf(request.getParameter("vehiculo"));
	Integer fechaEntrega = Integer.valueOf(request.getParameter("entrega"));
	Integer fechaDevolu = Integer.valueOf(request.getParameter("devolucion"));
	String direccion = request.getParameter("direccion");
	String localidad = request.getParameter("localidad");
	String provincia = request.getParameter("provincia");
	Integer codPost = Integer.valueOf(request.getParameter("cp"));
	Integer formaPago = Integer.valueOf(request.getParameter("formaPago"));
	String tarjtitular = request.getParameter("nomTarjeta");
	Long tarjnumero = Long.valueOf(request.getParameter("numeroTarjeta"));
	Integer tarjvto = Integer.valueOf(request.getParameter("vtoTarjeta"));
	Integer tarjclave = Integer.valueOf(request.getParameter("codigoTarjeta"));
	
	
	//Creo un objeto pedido para guardarlo en la bas de datos
	//esto es necesario porque trabajo con POO
	
	Reserva reserva = new Reserva(nombre, apellido, usuario,mail,vehiculo,fechaEntrega,fechaDevolu,direccion,Integer.valueOf(localidad),Integer.valueOf(provincia),
			codPost,formaPago,tarjtitular,tarjnumero,tarjvto,tarjclave);

	ReservaDAO reservaDAO = new ReservaDAO();
	Boolean okGuardado = reservaDAO.guardarReserva(reserva);

	if (okGuardado) {
		out.println("Tú reserva se guardo exitosamente <br>");
	} else {
		out.println("Error al guardar la reserva <br>");
	}

	
	%>


</body>
</html>