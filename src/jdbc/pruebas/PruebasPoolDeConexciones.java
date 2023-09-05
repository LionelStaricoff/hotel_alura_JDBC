package jdbc.pruebas;

import java.sql.Connection;
import java.sql.SQLException;

import jdbc.factory.ConnectionFactory;



public class PruebasPoolDeConexciones {

	public static void main(String[] args) throws SQLException {
		ConnectionFactory connectionFactory = new ConnectionFactory();
		for(int i= 0; i<20; i++) {
			Connection con = connectionFactory.recuperarConexion();
			System.out.println("Abriendo la coneccion n "+(i+1));
		}
	}
}
