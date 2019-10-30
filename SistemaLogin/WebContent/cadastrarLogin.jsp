<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Cadastro de usuário</title>
</head>
<body>
	<h2>Cadastro Login</h2>
	<form name="frmCadastrarLogin" action="CadastroLogin" method="post">
		<table cellpadding="20">
			<tr>
				<td>Nome.:</td>
				<td><input type="text" name="txtUsuario"></input></td>
			</tr>
			<tr>
				<td>Senha.:</td>
				<td><input type="Password" name="txtSenha"></input></td>
			</tr>
			<tr>
				<td align="center" colspan="2"><input type="submit" value="Cadastrar"></input></td>
			</tr>
		</table>
	</form>
</body>
</html>