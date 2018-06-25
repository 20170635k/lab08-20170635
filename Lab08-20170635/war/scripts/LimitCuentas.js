/**
 * 
 */
function LimitCuentas(){
	var elemento = document.getElementById("crearCuenta");
	elemento.disabled=true;
	return true;
}
function soloNumeros(evento,contenido){
	//almacena la entrada del teclado
	key= evento.keyCode||evento.which;
	entrada=String.fromCharCode(key);
	numero="0123456789";
	//backspace-teclaizquierda-tecladerecha-suprimir
	especiales="8-37-38-46";
	tecla_especial=false;
	for(var i in especiales){
		if(key==especiales[i])
			tecla_especial=true;
	}
	//SI NO ENCUENTRA LA TECLA DENTRO DEL RANGO [0-9]
	if(numero.indexOf(entrada)==-1&&!tecla_especial){
			return false;
	}else{
		if(contenido.length<9){
			return true;
		}else{
			return false;
		}
		
	}
}