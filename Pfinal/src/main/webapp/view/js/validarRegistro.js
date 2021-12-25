function validarRegistro(){
    let nomApe= document.getElementById("nomApe").value;
    let correo = document.getElementById("mail").value;
    let usuario = document.getElementById("usuario").value;
    let clave = document.getElementById("clave").value;
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
        nomApe == "" ||
        usuario == ""  ||
        clave == ""
      ) {
        document.getElementById("btnRegistrar").disabled = true;
      } else {
        document.getElementById("btnRegistrar").disabled = false;
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