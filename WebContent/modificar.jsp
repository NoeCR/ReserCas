<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Update de Usuario</title>
</head>
<body>
<%@ page import="resercas.Empleado"%>	
<%@ page import="resercas.Cliente"%>
<%	   
			Empleado e = (Empleado) session.getAttribute("empleado");	
			Cliente c = (Cliente) session.getAttribute("cliente");
			if(e != null){
%>
	<form action="cp_emp.jsp" method="post">
		<table class="table table-hover">
		    <thead>
		      <tr>
		        <th class="th-text">Nombre</th>
		        <th><input type="text" placeholder="<%=e.getNombre()%>" name="nombre_old" class="th-input"></th>       
		      </tr>
		    </thead>
		    <tbody>
		      <tr>
		        <td class="th-text">Password</td>
		        <td><input type="password" placeholder="*****" name="mail_old" class="th-input"></td>
		      </tr>
		      <tr>
		        <td><button type="submit" class="btn btn-default btn-md boton-cambio" value="">Modificar</button></td>
		        <td><a href="cp_emp.jsp" type="button" class="btn btn-default btn-md boton-cambio" value="">Cancelar</button></td>        
		      </tr>      
		    </tbody>
		  </table>
	</form>
<%}else if(c != null){ %>
	<form action="cp_cli.jsp" method="post">
		<table class="table table-hover">
		    <thead>
		      <tr>
		        <th class="th-text">Nombre</th>
		        <th><input type="text" placeholder="<%=c.getNombre()%>" name="nombre_old" class="th-input"></th>       
		      </tr>		      
		    </thead>
		    <tbody>
		      <tr>
		        <th class="th-text">Mail</th>
		        <th><input type="text" placeholder="<%=c.getMail()%>" name="mail_old" class="th-input"></th>       
		      </tr>
		      <tr>
		        <td class="th-text">Password</td>
		        <td><input type="password" placeholder="*****" name="mail_old" class="th-input"></td>
		      </tr>
		      <tr>
		        <td><button type="submit" class="btn btn-default btn-md boton-cambio" value="">Modificar</button></td>
		        <td><a href="cp_cli.jsp" type="button" class="btn btn-default btn-md boton-cambio" value="">Cancelar</button></td>        
		      </tr>      
		    </tbody>
		  </table>
	</form>
<%}else { %>
		<span>Error al cargar los datos del usuario</span>
<% } %>
</body>
</html>