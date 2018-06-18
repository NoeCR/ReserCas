<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@ page import="resercas.Empleado"%>	
<%@ page import="resercas.Cliente"%>
<%@ page import="java.text.SimpleDateFormat" %>
<%	   
			Empleado e = (Empleado) session.getAttribute("empleado");
			Cliente c = (Cliente) session.getAttribute("cliente");
			if(e != null){
%>
		<form action="cp_emp.jsp" method="post">  				
  			<label name="nombre"><%=e.getNombre()%></label><br />
  			<label><%=e.getFechaInc() %></label>
  			<label><%=new SimpleDateFormat("dd/MM/yyyy").format(e.getFechaInc())%></label>
  			<button type="submit" value="modificar" name="panelCentral" id="cambio" class="btn btn-default btn-md input-cambio">Modificar</button>
  		</form>
 		<%}else if(c != null){ %>
 			<form action="cp_cli.jsp" method="post">  				
  			<label name="nombre"><%=c.getNombre()%></label><br />
  			<label name="mail"><%=c.getMail()%></label><br />  			
  			<button type="submit" value="modificar" name="panelCentral" id="cambio" class="btn btn-default btn-md input-cambio">Modificar</button>
  		</form>
 		
 		<%}else { %>
 				<span>Usuario no encontrado</span>
 		<% } %>
</body>
</html>