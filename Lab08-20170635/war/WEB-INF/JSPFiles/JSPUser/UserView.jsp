<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import ="model.Account"%>
<%Account recurso= (Account)request.getAttribute("usuario");%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<!-- LOS ENLACES A LOS ESTILOS -->
<link rel="stylesheet" type="text/css" href="../../../estilos/RoleView.css">
<link rel="stylesheet" type="text/css" href="../../../estilos/MenuStyle.css">
<link href="https://fonts.googleapis.com/css?family=Open+Sans+Condensed:300" rel="stylesheet">
</head>
<body>

	<div class="cabecera">
    		<h1 class="title"> System</h1>
    			<div class="menuAdmin"><a href="/RoleDisplay">Role</a></div>
    			<div class="menuAdmin" id="tocado"><a href="/UserDisplay">User</a></div>
    			<div class="menuAdmin"><a href="/ResourceDisplay">Resource</a></div>
    			<div class="menuAdmin"><a href="/AccessDisplay">Access</a></div>
    			<div class="menuAdmin"><a href="/UserLogin">Login</a></div>
    			<div class="menuAdmin"><a href="/UserLogout">Logout</a></div>
    			<div class="menuAdmin"><a href="/User/Register">Register</a></div>
    </div>
	
	<a href="/UserDisplay" class="atras">Back</a>

	<table class="vista">
		<tr><td>Correo</td><td><%=recurso.getCorreo() %></td></tr>
		<tr><td>Status</td><td><%=recurso.getStatus() %></td></tr>
		<tr><td>Ultima Actualización</td><td><%=recurso.getUltimaActualizacion() %></td></tr>
		<tr><td>id</td><td><%=recurso.getId() %></td></tr>
		<tr><td>Id del Rol</td><td><%=recurso.getIdRole() %></td></tr>
		<tr><td>Ciudad</td><td><%=recurso.getCity() %></td></tr>
		<tr><td>Teléfono</td><td><%=recurso.getPhone() %></td></tr>
	
	</table>
</body>
</html>