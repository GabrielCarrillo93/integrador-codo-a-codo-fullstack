let cantidad;
let descuento;
let resultado;
let total = document.getElementById("total");
let resumen = document.getElementById("resumen");
let borrar = document.getElementById("reset")
const PRECIO = 200;

function obtenerCantidad(){
    cantidad = parseFloat(document.getElementById("cantidad").value);
    return cantidad;
}

function obtenerDescuento(){
    descuento = parseFloat(document.getElementById("categoria").value);
    return descuento;
}

function precioFinal(cantidad, descuento){
    resultado = (PRECIO * cantidad) - (PRECIO * cantidad * descuento);
    return resultado;
}

function mostrarPrecioFinal(){
    precioFinal(cantidad, descuento);
    return total.innerHTML = `${precioFinal(cantidad, descuento)}`
}

function borrarDatos(cantidad, descuento){
    cantidad = "";
    descuento = ""
    total.innerHTML = ""
    return console.log(cantidad, descuento);
}


cantidad = document.getElementById("cantidad").addEventListener("change", obtenerCantidad);
descuento = document.getElementById("categoria").addEventListener("change", obtenerDescuento);
precioFinal(cantidad, descuento);
resumen.onclick = mostrarPrecioFinal;
borrar.onclick = borrarDatos
