<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Role Create</title>
	<script src="../../../scripts/NoVacio.js"></script>
	
	<link rel="stylesheet" type="text/css" href="../../../estilos/MenuStyle.css">
	<link rel="stylesheet" type="text/css" href="../../../estilos/Crear.css">
     <link href="https://fonts.googleapis.com/css?family=Open+Sans+Condensed:300" rel="stylesheet">
</head>
<body onload="noVacio2()">	
	
	<div class="cabecera">
    		<h1 class="title"> System</h1>
    			<div class="menuAdmin" id="tocado"><a href="/RoleDisplay">Role</a></div>
    			<div class="menuAdmin"><a href="/UserDisplay">User</a></div>
    			<div class="menuAdmin"><a href="/ResourceDisplay">Resource</a></div>
    			<div class="menuAdmin"><a href="/AccessDisplay">Access</a></div>
    			<div class="menuAdmin"><a href="/UserLogin">Login</a></div>
    			<div class="menuAdmin"><a href="/UserLogout">Logout</a></div>
    			<div class="menuAdmin"><a href="/User/Register">Register</a></div>
    			<div class="menuAdmin"><a href="/ProductDisplay">Product</a></div>
    </div>
    <h2 class="titulo">Add Role</h2>
	<a href="/RoleDisplay" class="atras">Back</a>
	
	<form action="/RoleCreate" method="get" class="formulario" onsubmit="noRepita()">
		<input type="hidden" name="mode" value="create">
			
				Nombre<br><input type="text" name="nombre" onkeyup="noVacio2()" id="texto">
				
				<input type="submit" value="Save" id="enviar">
			
		
	</form>
</body>
</html>