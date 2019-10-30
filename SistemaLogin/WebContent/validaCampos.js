	function validarLogin() {
		if (document.formLogin.textUsuario.value == "") {
			alert('Usuário não informado');
			return false;
		};
		
		if (document.formLogin.textSenha.value == "") {
			alert('Senha não informada');
			return false;
		};

		document.formLogin.submit();
	}