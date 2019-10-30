package br.com.SistemaLogin.conexao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class CriarConexao {
	
	public static Connection getConexao() throws SQLException {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			System.out.println("Conectado!!!");
			
			return DriverManager.getConnection("jdbc:mysql://localhost/SistemaLogin", "root", "12345678");
			
		} catch (ClassNotFoundException e) {
			throw new SQLException(e);
		}
	}	
}
