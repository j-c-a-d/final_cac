<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="ISO-8859-1" %>

<!doctype html>
<html lang="es">

<head>
    <title>Registrarse</title>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS v5.0.2 -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
        integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <!-- Hoja de estilos -->
    <link rel="stylesheet" href="../css/estilos.css">
    <link rel="stylesheet" href="../view/css/registro.css">
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
                    <li ><a href="login.html" class="inSesion">Iniciar sesi??n </a></li>
                </ul>
                </div>
        </div>
    </nav>


        <!-- Registrarse -->
        <section>
     
            <div class="row d-flex flex-column justify-content-center align-center login" >
                    <div class="col mx-auto text-light d-flex justify-content-center"><h2>Registrarse</h2></div>
                <form  action="../controller/guardarUsuario.jsp" method="POST">
                    <div class="col-12 col-sm-8 col-md-6 col-lg-4 col-xl-4 mx-auto p-3"><input type="text" name="nomApe" id="nomApe" class="form-control" placeholder="Nombre y apellido" onkeyup="validarRegistro()" required autofocus></div>
                    <div class="col-12 col-sm-8 col-md-6 col-lg-4 col-xl-4 mx-auto p-3"><input type="mail" name="mail" id="mail" class="form-control" placeholder="Ingrese su mail" onkeyup="validarRegistro()" required autofocus>
                        <label for="mail" id="mailAviso"></label></div>
                    
                    <div class="col-12 col-sm-8 col-md-6 col-lg-4 col-xl-4 mx-auto p-3"><input type="text" name="usuario" id="usuario" class="form-control" placeholder="Usuario" onkeyup="validarRegistro()" required autofocus></div>
                    <div class="col-12 col-sm-8 col-md-6 col-lg-4 col-xl-4 mx-auto p-3"><input type="password" name="clave" id="clave" class="form-control" aria-describedby="passwoord" placeholder="Contrase??a" onkeyup="validarRegistro()" required>
                        <div id="passHelp" class="form-text">
                            Su contrase??a debe tener entre 8 y 20 caracteres, contener letras y n??meros, y no debe contener espacios, caracteres especiales ni emoji.
                        </div></div>
                    <div class="col-12 col-sm-8 col-md-6 col-lg-4 col-xl-4 mx-auto p-3 "><input type="submit" class="btn btnRegistrar" id="btnRegistrar" value="Registrarse" disabled></input></div>
                </form>
            </div>

    </section>
        <footer>
            <div class="footerMain">
                <!-- Footer izquierda -->
                <div class="f-left box">
                    <h2>NOSOTROS</h2>
                    <div class="f-contenido">
                        <p>No somos la empresa de alquiler de autos ex??ticos promedio, y no hay dos d??as iguales.
                            Somos la primera empresa del pa??s en ofrecer veh??culos nuevos y exclusivos. Damos a
                            las personas la oportunidad de conducir el coche de sus sue??os a diario. La pura alegr??a que
                            sentimos cuando nuestros clientes encienden su primer alquiler de Lamborghini es
                            incre??blemente gratificante.</p>
                        <div class="f-redes">
                            <a href=""><i class="fab fa-facebook-f"></i></a>
                            <a href=""><i class="fab fa-instagram"></i></a>
                            <a href=""><i class="fab fa-twitter"></i></a>
                        </div>
                    </div>
                </div>
                <!-- Footer middle-->
                <div class="f-middle box">
                    <h2>UBICACI??N</h2>
                    <div class="f-contenido">
                        <div class="mapa"><iframe
                                src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3284.0168878894506!2d-58.38375908417495!3d-34.603734465007136!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x4aa9f0a6da5edb%3A0x11bead4e234e558b!2sObelisco!5e0!3m2!1ses-419!2sar!4v1638735943306!5m2!1ses-419!2sar"
                                width="300" height="200" style="border:0;" allowfullscreen="" loading="lazy"></iframe>
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
    <script src="../js/validarContacto.js" ></script>
    <script src="js/validarRegistro.js" ></script>
    <!-- Bootstrap JavaScript Libraries -->
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"
        integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p"
        crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js"
        integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF"
        crossorigin="anonymous"></script>
</body>

</html>