/**
 * 
 */

function validaMail(){
	var boton = document.getElementById("crearCuenta");

	var correo= document.getElementById("correo").value;
	
	if(/^[\w-\.]+@([\w-]+\.)+([\w-]{2,4})$/.test(correo)){
			boton.disabled=false;
	}else{
		boton.disabled=true;
	}
}
