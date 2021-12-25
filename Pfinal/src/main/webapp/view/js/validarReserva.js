/* Validar campos */
function validar(){
    
    let correo = document.getElementById("mail").value;
    let nombre = document.getElementById("nombre").value;
    let apellido = document.getElementById("apellido").value;
    let usuario = document.getElementById("usuario").value;
    let fechaEntrega = document.getElementById("entrega").value;
    let fechaDevolu = document.getElementById("devolucion").value;
    let direccion = document.getElementById("calle").value
    let cPostal = document.getElementById("codPost").value;
    let nomTarjeta = document.getElementById("nomTarjeta").value;
    let numTarjeta = document.getElementById("numTarjeta").value;
    let vtoTarjeta = document.getElementById("vtoTarjeta").value;
    let codigoTarjeta = document.getElementById("codigoTarjeta").value;
    const minNumTc=1000000000000000;
    const maxNumTc=9999999999999999;
    let estado = validarMail(correo);
    

    if (estado==true) {
        document.getElementById("mailAviso").innerHTML = "Correcto";
        document.getElementById("mailAviso").style.color = "green";
      } else {
        document.getElementById("mailAviso").innerHTML =
        "Formato de correo incorrecto";
      document.getElementById("mailAviso").style.color = "red";
      }

      if (
        estado != true ||
        nombre == "" ||
        apellido == "" ||
        usuario == ""  ||
        fechaEntrega == ""||
        fechaDevolu ==""||
        direccion ==""||
        cPostal < 100 ||
        nomTarjeta == "" ||
        numTarjeta < minNumTc || numTarjeta > maxNumTc||
        vtoTarjeta == "" ||
        codigoTarjeta < 100

      ) {
        document.getElementById("btnConfrimar").disabled = true;
      } else {
        document.getElementById("btnConfrimar").disabled = false;
      }


  }












function validarMail(correo) {
    let correoMin = correo.toLowerCase();
    //Variables para posicion del @ y el ".".
    var arrobaPosicion = 0;
    var puntoPosicion = 0;
    arrobaPosicion = correoMin.indexOf("@");
    arrobaRep = correoMin.indexOf("@", arrobaPosicion + 1);
    puntoPosicion = correoMin.indexOf(".com", arrobaPosicion);
    espacios = correoMin.indexOf(" ");
  
    console.log(arrobaPosicion, arrobaRep);
  
    //Devuelve true si el correo es correcto o false si el correo es incorrecto
    if (
      correoMin != "" &&
      espacios == -1 &&
      correoMin.indexOf("@") != -1 &&
      puntoPosicion > arrobaPosicion + 1 &&
      arrobaRep == -1
    ) {
      return true;
    } else {
      return false;
    }
  }