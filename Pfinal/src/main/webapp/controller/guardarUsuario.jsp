<%@page import="dao.UsuarioDAO"%>
<%@page import="model.Usuario"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%
	String usuario = request.getParameter("usuario");
	String clave = request.getParameter("clave");
	String nombreYApellido = request.getParameter("nomApe");
	String mail = request.getParameter("mail");

	
	Usuario usu = new Usuario(usuario, clave, nombreYApellido, mail);
	
	UsuarioDAO usuarioDAO = new UsuarioDAO();
	
	Boolean okGuardado = usuarioDAO.guardarUsuario(usu);
	
	   if (okGuardado) {
	        out.println("El usuario se agreg� correctamente <br>");
	    } else {
	        out.println("Error en agregar usuario <br>");
	    }	
	%>

</body>
</html>