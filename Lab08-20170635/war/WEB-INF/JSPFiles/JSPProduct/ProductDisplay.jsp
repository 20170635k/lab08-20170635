<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="model.Product" %>
<%@ page import="java.util.List" %>
<% List<Product> productos= (List<Product>)request.getAttribute("productos"); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Product Display</title>
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

	<center>
		<table>
		<tr class="line"><td>Nombre</td><td>precio</td><td>ID</td><td>Status</td><td>stok</td></tr>
		<%for(int i=0;i<productos.size();i++){
			Product producto= productos.get(i);
			int ind=i%2;
			%>
				<tr class="line<%=ind%>">
					<td><%=producto.getNombre()%></td>
					<td><%=producto.getPrecio()%></td>
					<td><%=producto.getId()%></td>
					<td><%=producto.getStatus()%></td>
					<td><%=producto.getStok()%></td>
					
					<td><a href="/ProductRead?idProducto=<%=producto.getId()%>">View</a></td>
					<td><a href="/ProductCreateRedirect?mode=update&idProducto=<%=producto.getId()%>">Update</a></td>
					<td><a href="/ProductDelete?idProducto=<%=producto.getId()%>">Delete</a></td>
				</tr>
			<% 
		}
		%>
		</table>
		
		<br>
		<a href="/ProductCreateRedirect?mode=create">Crear Nuevo Producto</a>
	</center>
	
</body>
<link rel="stylesheet" type="text/css" href="../../../estilos/Display.css">
</html>