<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Cabecera para los empleados</title>
<link rel="stylesheet" href="./css/empleado.css">
</head>
<body>
<%@ page import="resercas.Cliente"%>
<%
	try{
	Cliente c = (Cliente) session.getAttribute("cliente");
%>
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">ReserCas Clientes</a>
    </div>
    <ul class="nav navbar-nav">
      <li class="active"><a href="index.jsp">Home</a></li>
    </ul>
    <ul class="nav navbar-nav navbar-right">
      <li>
      		<div class="dropdown">
			    <button class="btn btn-primary dropdown-toggle name-emp" type="button" data-toggle="dropdown"><%=c.getNombre()%>
			    <span class="caret"></span></button>
			    <ul class="dropdown-menu">			      
			      <li><a href="cp_cli.jsp">Gesti�n</a></li>
			      <li><a href="logout.jsp">Salir</a></li>
    			</ul>	
  			</div>
      </li>     
    </ul>
  </div>
</nav>
<%
	}catch(Exception e){
		out.println("No ha iniciado sesion");
	}
%>
</body>
</html>