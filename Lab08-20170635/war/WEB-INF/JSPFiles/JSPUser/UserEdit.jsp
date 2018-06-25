<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="model.Account" %>
<%@ page import="model.Role" %>
<%@ page import="java.util.List" %>

<%Account usuario= (Account)request.getAttribute("usuario");
Account usuarioGoogle = (Account)request.getAttribute("userGoogle");
%> 
<%
//CIUDADES DEL PERÚ
	String [] departamentos={"Amazonas","Áncash","Apurímac","Arequipa","Ayacucho","Cajamarca",
							 "Cuzco","Huancavelica","Huánuco","Ica","Junín","La Libertad","Lambayeque",
							 "Lima (departamento)","Loreto","Madre de Dios","Moquegua","Pasco","Piura",
							 "Puno","San Martín","Tacna","Tumbes","Ucayali"};
%>

<%
	boolean administrador=false;
	List<Role>roles= (List<Role>)request.getAttribute("roles");
	for(int i=0;i<roles.size();i++){
		if(roles.get(i).getNombre().equalsIgnoreCase("Administrador")){
			if(roles.get(i).getId().compareTo(usuarioGoogle.getIdRole())==0){
				administrador=true;
				break;
			}
		}
	}
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>User Edit</title>
	
<!--  STYLES -->
	<link rel="stylesheet" type="text/css" href="../../../estilos/MenuStyle.css">
	<link rel="stylesheet" type="text/css" href="../../../estilos/Crear.css">
     <link href="https://fonts.googleapis.com/css?family=Open+Sans+Condensed:300" rel="stylesheet">
       
     <!--  SCRIPTS -->
     
	<script src="../../scripts/LimitCuentas.js"></script>
	<script src="../../scripts/validaDatos.js"></script>
	<script src="../../scripts/ciudades.js"></script>
     
     <!-- ######## -->
     
</head>
<body onload="carga()">	
	<div class="cabecera">
    		<h1 class="title"> System</h1>
    			<div class="menuAdmin"><a href="/RoleDisplay">Role</a></div>
    			<div class="menuAdmin" id="tocado"><a href="/UserDisplay">User</a></div>
    			<div class="menuAdmin"><a href="/ResourceDisplay">Resource</a></div>
    			<div class="menuAdmin"><a href="/AccessDisplay">Access</a></div>
    			<div class="menuAdmin"><a href="/UserLogin">Login</a></div>
    			<div class="menuAdmin"><a href="/UserLogout">Logout</a></div>
    			<div class="menuAdmin"><a href="/User/Register">Register</a></div>
    			<div class="menuAdmin"><a href="/ProductDisplay">Product</a></div>
    </div>
 	<h2 class="titulo">Edit Role</h2>
	<a href="/UserDisplay" class="atras">Back</a>
	
	<form action="/UserUpdate?idUsuario=<%=usuario.getId()%>" method="post" class="formulario">
	<input type="hidden" name="idUsuario" value="{{idUsuario}}">
		
		
		Departamento<br>
						<select id="departamento">
											<%
											for(int i=0;i<departamentos.length;i++){
												
													 %>	
														<option onclick="cambiaCiudades()">
															<%=departamentos[i]%>
														</option>
													<%	
												
											}	
											%>
						</select>
		<br>
		
		Ciudad<br>
			<select id="ciudades" name="ciudad"></select>
		<br>
		
		<%if(administrador){ %>
		Rol<br>
			<select id="roles" name="rol">
							<%
							for(int i=0;i<roles.size();i++){
								if(roles.get(i).getId()==usuario.getIdRole()){
									%>
									<option selected><%=roles.get(i).getNombre()%></option>
									<% 
								}else{
									%>
									<option><%=roles.get(i).getNombre()%></option>
									<% 
								}
								
							}
							%>
			</select>
		<%}
		else{%>	
			
			<input type="hidden" name="rol" value="invitado">
		<%} %>
		<br>
		Teléfono<br>
		<input type="text"  placeholder="Teléfono" name="telefono" 
					 onkeypress="return soloNumeros(event,this.value)" onpaste="return false" value="<%=usuario.getPhone()%>">
		
		<br>
		Correo<br>
		<input type="text" placeholder="Paco45@gmail.com" name="correo"
					onkeyup="validaMail()" id="correo" value="<%=usuario.getCorreo()%>">
		<br>
		<input type="submit" value="Save" id="crearCuenta" disabled>
		
	</form>
</body>
</html>