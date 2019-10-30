<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Logado</title>
</head>
<body>

	<h1>Logado com Sucesso!!!</h1>

	<%
		String nomeUsuario = (String) session.getAttribute("usuarioautenticado");
		if (nomeUsuario == null)
			throw new ServletException("Nenhum usuário logado");
	%>

	Seja Bem Vindo:
	<%=nomeUsuario%>
	|
	<a href="remover.jsp"> Sair </a>
	<form action="cadastrarLogin.jsp" method="post" name="formLogin">
		<table>
			<tr>
				<td colspan="2"><input type="submit" value="Cadastrar"></input></td>
			</tr>
		</table>
	</form>
</body>
</html>