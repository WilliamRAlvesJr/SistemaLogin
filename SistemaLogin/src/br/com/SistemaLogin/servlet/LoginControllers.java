package br.com.SistemaLogin.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import br.com.SistemaLogin.exception.InvalidUserException;

@WebServlet("/login")
public class LoginControllers extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public LoginControllers() {
        super();
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		processRequest(request, response);
	}

	private void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ValidaDadosRecebidos(request);
		RequestDispatcher rd = request.getRequestDispatcher("logado.jsp");
		rd.forward(request, response);
	}

	private void ValidaDadosRecebidos(HttpServletRequest request) throws ServletException {
		String nomeUsuario  = request.getParameter("textUsuario"); 
		String senhaUsuario = request.getParameter("textSenha");
		
//		if(nomeUsuario.trim().equals("") || senhaUsuario.trim().equals(""))
//			throw new ServletException("Preencha os campos");	
		if(!nomeUsuario.trim().equals("hugo") || !senhaUsuario.trim().equals("123"))
			throw new InvalidUserException("Nome ou senha inválidos");
		
		HttpSession session = request.getSession();
		session.setAttribute("usuarioautenticado", nomeUsuario);
	}
	
}
