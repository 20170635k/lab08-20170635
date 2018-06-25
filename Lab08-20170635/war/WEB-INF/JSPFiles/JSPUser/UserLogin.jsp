<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import=" com.google.appengine.api.users.User;" %>
    <%User usuario = (User)request.getAttribute("usuario"); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- LOS ENLACES A LOS ESTILOS -->
<link rel="stylesheet" type="text/css" href="../../../estilos/RoleView.css">
<link rel="stylesheet" type="text/css" href="../../../estilos/MenuStyle.css">
<link href="https://fonts.googleapis.com/css?family=Open+Sans+Condensed:300" rel="stylesheet">
</head>
<body>
	<div class="cabecera">
    		<h1 class="title"> System</h1>
    			<div class="menuAdmin"><a href="/RoleDisplay">Role</a></div>
    			<div class="menuAdmin"><a href="/UserDisplay">User</a></div>
    			<div class="menuAdmin"><a href="/ResourceDisplay">Resource</a></div>
    			<div class="menuAdmin"><a href="/AccessDisplay">Access</a></div>
    			<div class="menuAdmin" id="tocado"><a href="/UserLogin">Login</a></div>
    			<div class="menuAdmin"><a href="/UserLogout">Logout</a></div>
    			<div class="menuAdmin"><a href="/User/Register">Register</a></div>
    </div>
	
	<a href="/UserDisplay" class="atras">Back</a>
	<br>
	<center>
		<table>
			<tr class="line1">
				<td>Correo</td><td><%=usuario.getEmail()%></td>
			</tr>
		
			<tr class="line0">
				<td>Nickname</td><td><%=usuario.getNickname() %></td>
				
			</tr>
			<tr class="line1">
				<td>Domain</td><td><%=usuario.getAuthDomain()%></td>	
			</tr>
			
		</table>
	
	</center>
	
	

</body>
<link rel="stylesheet" type="text/css" href="../../../estilos/Display.css">
</html>