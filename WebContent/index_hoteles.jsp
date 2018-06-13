<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@ page import="resercas.Hotel"%>
<%@ page import="java.util.List"%>
<%
	List<Hotel> hoteles = (List<Hotel>)request.getAttribute("listadoHoteles");
	for(Hotel h: hoteles){
%>
	<div class="flex-container-hotel">
  		<div style="flex-grow: 2"><%=h.getNombre() %>1</div>  		
 		<div style="flex-grow: 8">3</div>
	</div>
<% } %>
</body>
</html>