/**
 * 
 */
function noVacio(){
	var texto = document.getElementById("texto").value;
	var boton = document.getElementById("enviar");
	if(/^(\/[\w-\.]+)$/.test(texto)){
	
		boton.disabled=false;
	}else{
		boton.disabled=true;
	}
}
function noVacio2(){
	var texto = document.getElementById("texto").value;
	var boton = document.getElementById("enviar");
	if(/^([\w-\.]+)$/.test(texto)){
	
		boton.disabled=false;
	}else{
		boton.disabled=true;
	}
}

function noRepita(){
	var boton = document.getElementById("enviar");
	boton.disabled=true;
}