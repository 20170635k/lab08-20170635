<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="model.Resource" %>
<%String nombre=""; Resource recurso= (Resource)request.getAttribute("recurso");
	if(recurso!=null) nombre = recurso.getUrl();
%> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Resource Edit</title>
	
		<script src="../../../scripts/NoVacio.js"></script>

	<link rel="stylesheet" type="text/css" href="../../../estilos/MenuStyle.css">
	<link rel="stylesheet" type="text/css" href="../../../estilos/Crear.css">

     <link href="https://fonts.googleapis.com/css?family=Open+Sans+Condensed:300" rel="stylesheet">
</head>
<body onload="noVacio()">	

	<div class="cabecera">
    		<h1 class="title"> System</h1>
    			<div class="menuAdmin"><a href="/RoleDisplay">Role</a></div>
    			<div class="menuAdmin"><a href="/UserDisplay">User</a></div>
    			<div class="menuAdmin" id="tocado"><a href="/ResourceDisplay">Resource</a></div>
    			<div class="menuAdmin"><a href="/AccessDisplay">Access</a></div>
    			<div class="menuAdmin"><a href="/UserLogin">Login</a></div>
    			<div class="menuAdmin"><a href="/UserLogout">Logout</a></div>
    			<div class="menuAdmin"><a href="/User/Register">Register</a></div>
    			<div class="menuAdmin"><a href="/ProductDisplay">Product</a></div>
    </div>
 <h2 class="titulo">Edit Role</h2>
	<a href="/ResourceDisplay" class="atras">Back</a>
	
	<form action="/ResourceUpdate?idRecurso=<%=recurso.getId()%>" method="post" class="formulario" onsubmit="noRepita()">
	<input type="hidden" name="idRecurso" value="{{idRecurso}}">
		
				Nombre<br><input type="text" onkeyup="noVacio()" id="texto" name="nombre" value="<%=nombre%>">
		<input type="submit" value="Save" id="enviar">
		
	</form>
</body>
</html>