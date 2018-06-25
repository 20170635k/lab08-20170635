<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="model.Access" %>
<%@ page import="java.util.List" %>
<% List<Access> accesos= (List<Access>)request.getAttribute("accesos"); %>
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
    			<div class="menuAdmin"><a href="/RoleDisplay">Role</a></div>
    			<div class="menuAdmin"><a href="/UserDisplay">User</a></div>
    			<div class="menuAdmin"><a href="/ResourceDisplay">Resource</a></div>
    			<div class="menuAdmin" id="tocado"><a href="/AccessDisplay">Access</a></div>
    			<div class="menuAdmin"><a href="/UserLogin">Login</a></div>
    			<div class="menuAdmin"><a href="/UserLogout">Logout</a></div>
    			<div class="menuAdmin"><a href="/User/Register">Register</a></div>
    </div>

	<center>
		<table>
		<tr class="line"><td>Rol</td><td>Recurso</td><td>ID</td><td>Status</td><td>Fecha de creación</td></tr>
		<%for(int i=0;i<accesos.size();i++){
			Access acceso= accesos.get(i);
			int ind=i%2;
			%>
				<tr class="line<%=ind%>">
					<td><%=acceso.getIdRole()%>:<%=acceso.getRol()%></td>
					<td><%=acceso.getIdUrl()%>:<%=acceso.getUrl()%></td>
					<td><%=acceso.getId()%></td>
					<td><%=acceso.getStatus()%></td>
					<td><%=acceso.getFecha()%></td>
					<td><a href="/AccessRead?idAcceso=<%=acceso.getId()%>">View</a></td>
					<td><a href="/AccessCreateRedirect?mode=update&idAcceso=<%=acceso.getId()%>">Update</a></td>
					<td><a href="/AccessDelete?idAcceso=<%=acceso.getId()%>">Delete</a></td>
				</tr>
			<% 
		}
		%>
		</table>
		
		<br>
		<a href="/AccessCreateRedirect?mode=create">Crear Nuevo Acceso</a>
	</center>
	
</body>
<link rel="stylesheet" type="text/css" href="../../../estilos/Display.css">
</html>