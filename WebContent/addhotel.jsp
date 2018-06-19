<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Agregar hoteles</title>
<link rel="stylesheet" href="./css/usuario.css">
</head>
<body>
	<form action="cp_emp.jsp" method="post">
		<div class="input-group">
		   <span class="input-group-addon"><i class="glyphicon glyphicon-home"></i></span>
		   <input id="nombre" type="text" class="form-control" name="nombre-hotel" placeholder="Nombre Hotel">
		</div>
		    <br />
		<div class="input-group">
		  <span class="input-group-addon"><i class="glyphicon glyphicon-road"></i></span>
		  <input id="direc" type="text" class="form-control" name="direc" placeholder="Dirección">
		</div>
		   <br />
		<div class="input-group">
		  <span class="input-group-addon"><i class="glyphicon glyphicon-earphone"></i></span>
		  <input id="telf" type="tel" class="form-control" name="telf" placeholder="Teléfono">
		</div>	
		<div class="input-group img-load">
		  <span class="input-group-addon"><i class="glyphicon glyphicon-picture"></i></span>		 
   		  <input type="file" id="file" class="form-control img-input" name="file"  accept=".jpg, .jpeg, .png">
		</div>	
		   <br />
		<button type="submit" class="btn btn-default" name="panelCentral" value="registro_hotel">Registro</button>	    
	</form>
</body>
</html>