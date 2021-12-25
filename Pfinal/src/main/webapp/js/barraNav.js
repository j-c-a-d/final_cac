function mostrarMenu(){
    let chequeado= document.getElementById("btnMenu").checked;
    document.getElementById("barraNav").style.transition="all 0.5s";

    if (chequeado==true) {
        document.getElementById("barraNav").style.marginLeft="0";
     } else{
        document.getElementById("barraNav").style.marginLeft="-100%";  
    }
}
