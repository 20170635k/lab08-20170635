<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="model.Access" %>
<%@ page import="model.Resource" %>
<%@ page import="model.Role" %>
<%@ page import="java.util.List" %>
<%Access acceso= (Access)request.getAttribute("acceso");
  List<Resource> recursos= (List<Resource>)request.getAttribute("recursos");
  List<Role> roles= (List<Role>)request.getAttribute("roles");
%> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Insert title here</title>

	<link rel="stylesheet" type="text/css" href="../../../estilos/MenuStyle.css">
	<link rel="stylesheet" type="text/css" href="../../../estilos/Crear.css">

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
 <h2 class="titulo">Edit Access</h2>
	<a href="/AccessDisplay" class="atras">Back</a>
	
	<form action="/AccessUpdate?idAcceso=<%=acceso.getId()%>" method="post" class="formulario">
	<input type="hidden" name="idAcceso" value="{{idAcceso}}">
		
				
				Rol<br>
				<select name="rol">
					<%for(int i =0;i<roles.size();i++){	
						if(roles.get(i).getId()==acceso.getIdRole()){
							%>
							 <option selected><%=roles.get(i).getNombre()%></option>
							<%
						}else{
							%>
							 <option><%=roles.get(i).getNombre()%></option>
							<%
						}
					  }
					 %>
				</select>
				<br>
				Recurso<br>
				<select name="recurso">
					<%for(int i =0;i<recursos.size();i++){	
						if(recursos.get(i).getId()==acceso.getIdUrl()){
							%>
							 <option selected><%=recursos.get(i).getUrl()%></option>
							<%
						}else{
							%>
							 <option><%=recursos.get(i).getUrl()%></option>
							<%
						}
					  }
					 %>
				</select>
				<br>
				<input type="submit" value="Guardar">
		
	</form>
</body>
</html>