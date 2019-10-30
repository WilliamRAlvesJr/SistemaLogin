<%@ page isErrorPage="true"%>
<%@ page import="java.util.Enumeration" %>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Erro de login</title>
</head>
<body>
	<div align="center">
		<div id="cabecalho">Cabeçalho</div>
		<div id="corpo">
			<img alt="page-error" src="erro.jpg">
			<hr>
			Error:
			<%=exception.getMessage()%>
			<br /> Exceção ocorrida:
			<%=exception.getClass()%>
			<br />
			</hr>
			<a href="login.jsp">Tentar Novamente</a>
		</div>
		<div id="rodape">
			Rodapé
		</div>	
	</div>
</body>
</html>