<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="model.Account" %>
<%@ page import="java.util.List" %>
<% List<Account> usuarios= (List<Account>)request.getAttribute("usuarios"); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>User display</title>
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
    			<div class="menuAdmin"><a href="/ProductDisplay">Product</a></div>
    </div>

	<center>
		<table>
		<tr class="line">
			<td>Correo</td>
			<td>Ciudad</td>
			<td>Teléfono</td>
			<td>Status</td>
			<td>Rol</td>
			<td>Ultima Actualización</td>
		</tr>
		<%for(int i=0;i<usuarios.size();i++){
			Account usuario= usuarios.get(i);
			int ind=i%2;
			%>
				<tr class="line<%=ind%>">
					<td><%=usuario.getCorreo()%></td>
					<td><%=usuario.getCity()%></td>
					<td><%=usuario.getPhone()%></td>
					<td><%=usuario.getStatus()%></td>
					<td><%=usuario.getIdRole()%></td>
					<td><%=usuario.getUltimaActualizacion()%></td>
					<td><a href="/UserRead?idUsuario=<%=usuario.getId()%>">View</a></td>
					<td><a href="/UserCreateRedirect?mode=update&idUsuario=<%=usuario.getId()%>">Update</a></td>
					<td><a href="/UserDelete?idUsuario=<%=usuario.getId()%>">Delete</a></td>
				</tr>
			<% 
		}
		%>
		</table>
		
		<br>
		<a href="/UserCreateRedirect?mode=create">Crear  nuevo Usuario</a>
	</center>
	
</body>
<link rel="stylesheet" type="text/css" href="../../../estilos/Display.css">
</html>