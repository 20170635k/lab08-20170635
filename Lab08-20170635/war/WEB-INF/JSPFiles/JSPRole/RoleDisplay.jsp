<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="model.Role" %>
<%@ page import="java.util.List" %>
<% List<Role> roles= (List<Role>)request.getAttribute("roles"); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="../../../estilos/MenuStyle.css">

<link href="https://fonts.googleapis.com/css?family=Open+Sans+Condensed:300" rel="stylesheet">
</head>
<body>
	<div class="cabecera">
    		<h1 class="title"> System</h1>
    			<div class="menuAdmin" id="tocado"><a href="/RoleDisplay">Role</a></div>
    			<div class="menuAdmin"><a href="/UserDisplay">User</a></div>
    			<div class="menuAdmin"><a href="/ResourceDisplay">Resource</a></div>
    			<div class="menuAdmin"><a href="/AccessDisplay">Access</a></div>
    			<div class="menuAdmin"><a href="/UserLogin">Login</a></div>
    			<div class="menuAdmin"><a href="/UserLogout">Logout</a></div>
    			<div class="menuAdmin"><a href="/User/Register">Register</a></div>
    </div>

	<center>
		<table>
		<tr class="line"><td>Nombre</td><td>Fecha de Creación</td><td>ID</td><td>Status</td></tr>
		<%for(int i=0;i<roles.size();i++){
			Role rol= roles.get(i);
			int ind=i%2;
			%>
				<tr class="line<%=ind%>">
					<td><%=rol.getNombre()%></td>
					<td><%=rol.getCreado()%></td>
					<td><%=rol.getId()%></td>
					<td><%=rol.isStatus()%></td>
					<td><a href="/RoleRead?idRol=<%=rol.getId()%>">View</a></td>
					<td><a href="/RoleCreateRedirect?mode=update&idRol=<%=rol.getId()%>">Update</a></td>
					<td><a href="/RoleDelete?idRol=<%=rol.getId()%>">Delete</a></td>
				</tr>
			<% 
		}
		%>
		</table>
		
		<br>
		<a href="/RoleCreateRedirect?mode=create">Crear Nuevo Rol</a>
	</center>
	
</body>
<link rel="stylesheet" type="text/css" href="../../../estilos/Display.css">
</html>