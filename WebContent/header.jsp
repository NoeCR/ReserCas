<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Cabecera página principal</title>
</head>
<body>
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand " href="#">ReserCas</a>
    </div>
    <ul class="nav navbar-nav navbar-right">
      <li><a href="#" data-toggle="modal" data-target="#myModalRegistro"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
      <li><a href="#" data-toggle="modal" data-target="#myModalInicio"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
    </ul>
  </div>
</nav>
<!-- Modal para el registro de usuarios -->
<div class="modal fade" id="myModalRegistro" role="dialog">
    <div class="modal-dialog">    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">Regístrate</h4>
        </div>
        <div class="modal-body">
          <!-- ////////////////////////////////// -->
            <form action="registro.jsp" method="post">
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
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        </div>
     </div>
  </div>
</div>

<!-- Modal para el inicio de sesion de usuarios -->
<div class="modal fade" id="myModalInicio" role="dialog">
    <div class="modal-dialog">    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">Login</h4>
        </div>
        <div class="modal-body">
          <!-- ////////////////////////////////// -->
            <form action="checkuser.jsp" method="post">
			    <div class="input-group">
			      <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
			      <input id="nombre" type="text" class="form-control" name="nombre" placeholder="Nombre">
			    </div>
			    <br />			   
			    <br />
			    <div class="input-group">
			      <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
			      <input id="password" type="password" class="form-control" name="password" placeholder="Password">
			    </div>	
			    <br />
			   <button type="submit" class="btn btn-default" name="registro">Login</button>	    
			</form>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        </div>
     </div>
  </div>
</div>

</body>
</html>