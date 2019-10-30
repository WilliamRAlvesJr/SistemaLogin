<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Sistema de login</title>
<script type="text/javascript" src="validaCampos.js">
</script>
</head>
<body>
	<form action="login" method="post" name="formLogin">
		<p align="center">
		<table cellpadding="20">
			<tr>
				<td>Usuário:</td>
				<td><input type="text" name="textUsuario" /></td>
			</tr>
			<tr>
				<td>Senha:</td>
				<td><input type="password" name="textSenha" /></td>
			</tr>
			<tr>
				<td colspan="2" align="center"><input type="submit"
					value="Logar" onclick="validarLogin()" /></td>
			</tr>
		</table>
		</p>
	</form>
</body>
</html>