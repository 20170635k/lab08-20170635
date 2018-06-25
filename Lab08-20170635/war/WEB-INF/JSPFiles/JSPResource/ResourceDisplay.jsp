<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="model.Resource" %>
<%@ page import="java.util.List" %>
<% List<Resource> recursos= (List<Resource>)request.getAttribute("recursos"); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Resource Display</title>
<link rel="stylesheet" type="text/css" href="../../../estilos/MenuStyle.css">

<link href="https://fonts.googleapis.com/css?family=Open+Sans+Condensed:300" rel="stylesheet">
</head>
<body>
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

	<center>
		<table>
		<tr class="line"><td>Nombre</td><td>Fecha de Creación</td><td>ID</td><td>Status</td></tr>
		<%for(int i=0;i<recursos.size();i++){
			Resource recurso= recursos.get(i);
			int ind=i%2;
			%>
				<tr class="line<%=ind%>">
					<td><%=recurso.getUrl()%></td>
					<td><%=recurso.getCreado()%></td>
					<td><%=recurso.getId()%></td>
					<td><%=recurso.isStatus()%></td>
					<td><a href="/ResourceRead?idRecurso=<%=recurso.getId()%>">View</a></td>
					<td><a href="/ResourceCreateRedirect?mode=update&idRecurso=<%=recurso.getId()%>">Update</a></td>
					<td><a href="/ResourceDelete?idRecurso=<%=recurso.getId()%>">Delete</a></td>
				</tr>
			<% 
		}
		%>
		</table>
		
		<br>
		<a href="/ResourceCreateRedirect?mode=create">Crear Nuevo Recurso</a>
	</center>
	
</body>
<link rel="stylesheet" type="text/css" href="../../../estilos/Display.css">
</html>