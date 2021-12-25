<%@page import="dao.VehiculoDAO"%>
<%@page import="model.Vehiculo"%>
<%@page import="model.Provincia"%>
<%@page import="dao.ProvinciaDAO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="model.Localidad"%>
<%@page import="java.util.List"%>
<%@page import="dao.LocalidadDAO"%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="ISO-8859-1" %>

    <!doctype html>
    <html lang="es">

    <head>
        <title>Reserva</title>
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

        <!-- Bootstrap CSS v5.0.2 -->
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
            integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
        <!-- Hoja de estilos -->
        <link rel="stylesheet" href="../css/estilos.css">
        <link rel="stylesheet" href="../view/css/reserva.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css" />
        <!-- Google fonts -->
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Wallpoet&display=swap" rel="stylesheet">
    </head>

    <body>
        <div class="container p-0 d-flex flex-column justify-content-between" id="main">


            <header>
                <div class="fila  encabezado">
                    <div class="columna redes">
                        <a href=""><i class="fab fa-facebook-f"></i></a>
                        <a href=""><i class="fab fa-whatsapp"></i></a>
                        <a href=""><i class="fab fa-instagram"></i></a>
                    </div>
                    <div class="columna">
                        <div class="logo"><img src="imagenes/logo.png" alt=""></div>
                    </div>
                    <div class="columna menu">
                        <input type="checkbox" id="btnMenu" onclick="mostrarMenu()">
                        <label for="btnMenu"><i class="fas fa-bars"></i></label>
                        <a href="login.html"><i class="fas fa-sign-in-alt"></i></i></a>
                    </div>
                </div>
            </header>
            <nav>
                <div id="separador"></div>
                <div class="fila">
                    <div class="columna barraNav" id="barraNav">
                        <ul>
                            <li><a href="../index.html">Home</a></li>
                            <li class="container-categorias"><a>Reservas <i class="fas fa-sort-down"></i></a>
                                <ul class="submenu">
                                    <li><a href="login.html" class="btnSubmenu"><i class="fas fa-caret-right"></i> Reservar</li>
                                    </a>
                                    <li><a href="listaReservas.jsp"><i class="fas fa-caret-right"></i> Ver reservas</li></a>
                                </ul>
                            </li>
                            <li><a href="#"> Vehiculos</a></li>
                            <li><a href=""> Nosotros</a></li>
                            <li><a href=""> Contacto</a></li>
                            <li><a href="registro.jsp"> Registrarse</a></li>
                            <li ><a href="login.html" class="inSesion">Iniciar sesión </a></li>
                        </ul>
                    </div>
                </div>
            </nav>


            <!-- Reserva -->
            <div class="reserva mt-5 ">
                <h2>Reserva</h2>
                <form action="../controller/guardarReserva.jsp">
                    <div class="row">
                        <div class="col-12 px-5  px-sm-0 col-md-6 mb-5 text-center">
                            <label for="NOMBRE" class="form-label">Nombre</label>
                            <input type="text" class="form-control"  id="nombre" placeholder="Tu nombre" onkeyup="validar()" name="nombre" required>
                        </div>
                        <div class="col-md-6 mb-5 px-5 px-sm-1 text-center">
                            <label for="APELLIDO" class="form-label">Apellido</label>
                            <input type="text" class="form-control" placeholder="Tu apellido" name="apellido" id="apellido" onkeyup="validar()" required>
                        </div>
                    </div>
                    <div class="row">
                        <label for="usuario" class="form-label">Nombre de usuario</label>
                        <div class="col-12 px-5 px-sm-0 input-group mb-5 text-center">
                                <span class="input-group-text">@</span>
                                <input type="text" class="form-control" id="usuario" placeholder="Usuario" name="usuario" onkeyup="validar()" required>
                        </div>
                    </div>
                    <div class="row">
                        <div class=" col-12 px-5 px-sm-0 mb-5 text-center">
                            <label for="mail" class="form-label">Email <spam class="text-muted">(Opcional)</spam> </label>
                            <input type="email" class="form-control" id="mail" name="mail"
                                placeholder="tuemail@gmail.com" onkeyup="validar()" required>
                                <label for="mail" id="mailAviso"></label>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-12 px-5 px-sm-0 mb-5 text-center">
                            <label for="vehiculo" class="form-label">Vehiculo</label>
                            <select class="form-select" name="vehiculo" id="vehiculo" required>
                              //  <%
                                    VehiculoDAO vehiculoDAO = new VehiculoDAO();
                                    List<Vehiculo> listVehiculos = vehiculoDAO.listarVehiculos();
                                    for (int i=0;i<listVehiculos.size();i++) {
                  
                                        out.println("<option value='"+listVehiculos.get(i).getIdVehiculo()+"'>"  + listVehiculos.get(i).getMarca()+" " + listVehiculos.get(i).getModelo() + ", a�o " + listVehiculos.get(i).getAnio() + " - $" + listVehiculos.get(i).getPrecio()+ "</option>");
                                    }

                                
                                %>
                            </select>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-4 offset-2 mb-5 text-center">
                            <label for="entrega" class="form-label">Desde</label>
                            <input type="text" class="form-control " id="entrega" name="entrega"  placeholder="DDMMAAAA"  onkeyup="validar()" required>
                        </div>
                        <div class="col-4 mb-5  text-center">
                            <label for="devolucion" class="form-label">Hasta</label>
                            <input type="text" class="form-control " id="devolucion" name="devolucion" placeholder="DDMMAAAA"  onkeyup="validar()"required>
                        </div>
                    
        
                    </div>

                    <div class="mb-3" id="separador"></div>


                    <div class="row">
                        <h4 class="mb-3">Lugar de entrega</h4>
                        <div class="col-sm-12 px-5 px-sm-0 mb-5 text-center">
                            <label for="calle" class="form-label">Dirección</label>
                            <input type="text" id="calle" class="form-control" placeholder="Calle, Nro, Piso" name="direccion"  onkeyup="validar()"required>
                        </div>
                    </div>
                    <div class="row">

                        
                        <div class="col-6 col-sm-5 ps-5 ps-sm-0   mb-5 text-center">
                            <label for="provincia" class="form-label">Provincia</label>
                            <select class="form-select" name="provincia" id="provincia" required>
                                <%
                                    ProvinciaDAO provinciaDAO = new ProvinciaDAO();
                                    List<Provincia> listProvincias = provinciaDAO.listarProvincias();
                                    for (int i=0;i<listProvincias.size();i++) {
                  
                                        out.println("<option value='"+listProvincias.get(i).getIdPRovincia()+"'>"  + listProvincias.get(i).getNombre() +"</option>");
                                    }

                                
                                %>
                            </select>
                        </div>
                        <div class="col-6 col-sm-5  pe-5 pe-sm-0 mb-5 text-center">
                        <label for="localidad" class="form-label">Localidad</label>
                            <select class="form-select" name="localidad" id="localidad" required>
                                <%
                                    LocalidadDAO localidadDAO = new LocalidadDAO();
                                    List<Localidad> listLocalidades = localidadDAO.listarLocalidades();
                                    for (int i=0;i<listLocalidades.size();i++) {
                  
                                        out.println("<option value='"+listLocalidades.get(i).getIdLocalidad()+"'>"  + listLocalidades.get(i).getNombre() +"</option>");
                                    }

                                
                                %>
                            </select>
                        </div>
                        <div class="col-12 col-sm-2 px-5 px-sm-1 col-sm-2 mb-5 text-center">
                            <label for="codPost" class="form-label">C. Postal</label>
                            <input type="number" id="codPost" class="form-control" placeholder="CP." name="cp" onkeyup="validar()" required>
                        </div>
                    </div>
                </div>
                
                <div class="mb-3" id="separador"></div>
                
            <div class="row pago">
                <div class="col-12 px-5 mx-auto mb-5 d-flex flex-column justify-content-center align-items-center">
                    <h4 class="mb-3">Forma de pago</h4>
                    <div class="col">
                        <div class="form-check">
                            <input class="form-check-input" type="radio" name="formaPago" id="tarjetaCredito" value="1" checked
                            required>
                            <label class="form-check-label" for="tarjetaCredito">
                                Tarjeta de credito
                            </label>
                        </div>
                    </div>
                    <div class="col">
                        <div class="form-check">
                            <input class="form-check-input" type="radio" name="formaPago" id="mercadoPago" value="2" required>
                            <label class="form-check-label" for="mercadoPago">
                                Mercado pago
                            </label>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-6 mb-5 text-center">
                    <label for="nomTarjeta" class="form-label">Nombre del Titular de la Tarjeta </label>
                    <input type="text" class="form-control" id="nomTarjeta" name="nomTarjeta" onkeyup="validar()" required>
                    <small class="text-muted">Ingrese el nombre como figura en la tarjeta.</small>
                </div>
                
                <div class="col-6 mb-5 text-center">
                    <label for="numTarjeta" class="form-label">N�mero de la tarjeta</label>
                    <input type="number" class="form-control" id="numTarjeta" name="numeroTarjeta" onkeyup="validar()" required>
                    <small class="text-muted">Ingrese los 16 digitos de la tarjeta.</small>
                </div>
            </div>
            <div class="row">
                
                <div class="col-4 offset-2 mb-5 text-center">
                    <label for="fechaTarjeta" class="form-label">Fecha de Vto.</label>
                    <input type="text" class="form-control " id="vtoTarjeta" name="vtoTarjeta" placeholder="MMAA" onkeyup="validar()" required>
                </div>
                <div class="col-4 mb-5  text-center">
                    <label for="codigoTarjeta" class="form-label">C�digo de seguridad</label>
                    <input type="number" class="form-control" id="codigoTarjeta" name="codigoTarjeta" onkeyup="validar()" required>
                    <small class="text-muted">Ingrese el codigo de seguridad de la tarjeta.</small>
                </div>
            
                <div class="mb-3" id="separador"></div>


                <div class="row">
                    <div class="col-4 mb-5"></div>
                    <div class="col-4 mb-5">
                      <button class="btn btn-lg btn-block" id="btnConfrimar" type="submit" disabled>Confirmar</button>
                    </div>
                  </div>
            </div>
        </form>
            <footer>
                <div class="footerMain">
                    <!-- Footer izquierda -->
                    <div class="f-left box">
                        <h2>NOSOTROS</h2>
                        <div class="f-contenido">
                            <p>No somos la empresa de alquiler de autos exóticos promedio, y no hay dos días iguales.
                                Somos la primera empresa del país en ofrecer vehículos nuevos y exclusivos. Damos a
                                las personas la oportunidad de conducir el coche de sus sueños a diario. La pura alegría
                                que
                                sentimos cuando nuestros clientes encienden su primer alquiler de Lamborghini es
                                increíblemente gratificante.</p>
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
                                <div class="texto">Email</div>
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

        <!-- Scripts -->
        <script src="https://kit.fontawesome.com/6f770635ea.js" crossorigin="anonymous"></script>
        <script src="js/barraNav.js"></script>

        <!-- Bootstrap JavaScript Libraries -->
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"
            integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p"
            crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js"
            integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF"
            crossorigin="anonymous"></script>
            <script src="js/validarReserva.js" ></script>
            <script src="../js/validarContacto.js"></script>

    </body>

    </html>