<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
		<form action="registro_usuario.jsp" method="post">
			    <div class="input-group">
			      <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
			      <input id="nombre" type="text" class="form-control" name="nombre" placeholder="Nombre">
			    </div>
			    <br />
			    <div class="input-group">
			      <span class="input-group-addon"><i class="glyphicon glyphicon-envelope"></i></span>
			      <input id="email" type="text" class="form-control" name="email" placeholder="Email">
			    </div>
			    <br />
			    <div class="input-group">
			      <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
			      <input id="password" type="password" class="form-control" name="password" placeholder="Password">
			    </div>	
			    <br />
			   <button type="submit" class="btn btn-default" name="registro">Registro</button>	    
		</form>
</body>
</html>