<!doctype html>
<%@page import="dao.VehiculoDAO"%>
<%@page import="model.Vehiculo"%>
<%@page import="model.Reserva"%>
<%@page import="java.util.List"%>
<%@page import="dao.ReservaDAO"%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="ISO-8859-1" %>
<html lang="es">

<head>
    <title>Reservas</title>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- Hojas de estilos -->
    <link rel="stylesheet" href="css/listaReservas.css">
    <!-- Bootstrap CSS v5.0.2 -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
        integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

</head>

<body>
   <div class="main "> 
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark " id="navbar">
        <div class="container-fluid">
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavAltMarkup"
                aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="navbar-brand" href="#">
                <img src="imagenes/logo.png" alt=""></div>
            <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
                <div class="navbar-nav ms-auto">
                    <a class="nav-link" aria-current="page" href="../index.html">Home</a>
                    <a class="nav-link" href="#">Vehiculos</a>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle active" href="#" id="navbarDarkDropdownMenuLink" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                          Reservas
                        </a>
                        <ul class="dropdown-menu dropdown-menu-dark" aria-labelledby="Reservas">
                          <li><a class="dropdown-item" href="login.html">Reservar</a></li>
                          <li><a class="dropdown-item" href="listaReservas.jsp">Ver reservas</a></li>
                        </ul>
                      </li>
                      <a class="nav-link" href="#">Nosotros</a>
                      <a class="nav-link" href="#">Contacto</a>

                    </div>

            </div>

        </div>
    </nav>
        
    
    <div class="container-fluid table-responsive mt-5">   
      <table class="table table-dark table-striped table-sm  table-hover text-center">
                <thead class="thead-default">
                    <tr>
                        <th>#ID</th>
                        <th>Nombre</th>
                        <th>Apellido</th>
                        <th>Usuario</th>
                        <th>Mail</th>
                        <th>Marca</th>
                        <th>Modelo</th>
                    	<th>Fecha de entrega</th>
                        <th>Fecha de devolucion</th>
                        <th>Direcci�n</th>
                        <th>C�digo postal</th>
                    </tr>
                </thead>
                <tbody>
                   
                    <%
                    ReservaDAO reserDAO = new ReservaDAO();
                    List<Reserva> listReserva = reserDAO.listarReserva();                        		
                        
               	 VehiculoDAO vehiculoDAo = new VehiculoDAO();

                        for(int i=0; i<listReserva.size();i++ ){
                        	Integer idVehiculo= listReserva.get(i).getIdVehiculo();
								Vehiculo vehiculo = vehiculoDAo.buscarXId(idVehiculo);
                        	out.println("<tr>");
	                            out.println("<td>"+listReserva.get(i).getIdreserva()+"</td>");
                            	out.println("<td>"+listReserva.get(i).getNombre()+"</td>");
                        		out.println("<td>"+listReserva.get(i).getApellido()+"</td>");
                        		out.println("<td>"+listReserva.get(i).getUsuario()+"</td>");
                        		out.println("<td>"+listReserva.get(i).getMail()+"</td>");
								out.println("<td>"+vehiculo.getMarca()+"</td>");
								out.println("<td>"+vehiculo.getModelo()+"</td>");
								out.println("<td>"+listReserva.get(i).getFechaEntrega()+"</td>");
                        		out.println("<td>"+listReserva.get(i).getFechaDevolu()+"</td>");
                                out.println("<td>"+listReserva.get(i).getDireccion()+"</td>");
                        		out.println("<td>"+listReserva.get(i).getCodPost()+"</td>");


                        		out.println("</tr>");
                        		
                        	} 
                            %> 
                            
                        </tbody>
                    </table>
                </div>                         
                    <footer>
                        <div class="footerMain">
                            <!-- Footer izquierda -->
                            <div class="f-left box">
                                <h2>NOSOTROS</h2>
                                <div class="f-contenido">
                                    <p>No somos la empresa de alquiler de autos ex�ticos promedio, y no hay dos d�as iguales.
                            Somos la primera empresa del pa�s en ofrecer veh�culos nuevos y exclusivos. Damos a
                            las personas la oportunidad de conducir el coche de sus sue�os a diario. La pura alegr�a que
                            sentimos cuando nuestros clientes encienden su primer alquiler de Lamborghini es
                            incre�blemente gratificante.</p>
                                        <div class="f-redes">
                                            <a href=""><i class="fab fa-facebook-f"></i></a>
                                            <a href=""><i class="fab fa-instagram"></i></a>
                                            <a href=""><i class="fab fa-twitter"></i></a>
                                        </div>
                                    </div>
                                </div>
                            <!-- Footer middle-->
                            <div class="f-middle box">
                                <h2>UBICACIÓN</h2>
                                <div class="f-contenido">
                                    <div class="mapa"><iframe
                                            src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3284.0168878894506!2d-58.38375908417495!3d-34.603734465007136!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x4aa9f0a6da5edb%3A0x11bead4e234e558b!2sObelisco!5e0!3m2!1ses-419!2sar!4v1638735943306!5m2!1ses-419!2sar"
                                            width="300" height="200" style="border:0;" allowfullscreen=""
                                            loading="lazy"></iframe>
                                    </div>
                                    <div class="direccion">
                                        <span><i class="fas fa-map-marker"></i></span>
                                        <span>Av. 9 de Julio 1043, CABA</span>
                                    </div>
                                    <div class="telefono">
                                        <span><i class="fas fa-phone-alt"></i></span>
                                        <span>+54 114123-456</span>
                                    </div>
                                    <div class="mail">
                                        <span><i class="fas fa-envelope"></i></span>
                                        <span>info@luxury.com</span>
                                    </div>
                                </div>
                            </div>
                            <!-- Footer right -->
                            <div class="f-right box">
                                <h2>CONTACTO</h2>
                                <div class="f-contenido">
                                    <form action="#">
                                        <div class="mail">
                                            <input type="mail" id="mail" onkeyup="validarCorreo()" required>
                                            <label for="mail" id="mailAviso"></label>
                                        </div>
                                        <div class="msj">
                                            <div class="texto">Mensaje</div>
                                            <textarea name="mensaje" id="mensaje" cols="25" rows="2" required></textarea>
                                        </div>
                                        <div class="btnEnviar">
                                            <button type="submit">Enviar</button>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </footer>
   </div>
    <!-- Scripts  -->
   <script src="../js/validarContacto.js"></script>
    <!-- Bootstrap JavaScript Libraries -->
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"
        integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p"
        crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js"
        integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF"
        crossorigin="anonymous"></script>
    <!-- Font awesome -->
    <script src="https://kit.fontawesome.com/6f770635ea.js" crossorigin="anonymous"></script>
</body>

</html>