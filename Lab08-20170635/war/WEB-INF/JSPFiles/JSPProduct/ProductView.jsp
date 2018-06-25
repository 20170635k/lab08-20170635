<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import ="model.Product"%>
<%Product producto= (Product)request.getAttribute("producto");%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Product View</title>
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
    			<div class="menuAdmin"><a href="/UserLogin">Login</a></div>
    			<div class="menuAdmin"><a href="/UserLogout">Logout</a></div>
    			<div class="menuAdmin"><a href="/User/Register">Register</a></div>
    			<div class="menuAdmin" id="tocado"><a href="/ProductDisplay">Product</a></div>
    </div>

	<a href="/ProductDisplay" class="atras">Back</a>

	<table class="vista">
		<tr><td>Nombre</td><td><%=producto.getNombre() %></td></tr>
		<tr><td>Precio</td><td><%=producto.getPrecio() %></td></tr>
		<tr><td>Stok</td><td><%=producto.getStok()%></td></tr>
		<tr><td>ID</td><td><%=producto.getId() %></td></tr>
		<tr><td>status</td><td><%=producto.getStatus()%></td></tr>
	
	</table>
</body>
</html>