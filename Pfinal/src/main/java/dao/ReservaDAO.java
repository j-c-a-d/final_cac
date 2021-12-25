package dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import dataBase.ConexionDB;
import model.Reserva;


public class ReservaDAO {


	public Boolean guardarReserva(Reserva reserva) {
		try {
			ConexionDB conexionDB = new ConexionDB();
			Connection connection = conexionDB.establecerConexion();
			Statement statement = connection.createStatement();
			
			String sql = new String();
			sql = "INSERT INTO reserva "
					+ "(`nombre`, `apellido`, `usuario`, `mail`, `idVehiculo`, `fechaEntrega`, `fechaDevolu`, `direccion`, `idlocalidad`, `idprovincia`, `codPost`, `idPago`,`nomTarj`,`numTarj`,`vtoTarj`,`codSeg`)"
					+ "VALUES ("
					+ "'"+ reserva.getNombre() + "'," 
					+ "'" + reserva.getApellido() + "',"
					+ "'" + reserva.getUsuario() + "',"
					+ "'" + reserva.getMail() + "',"
					+ reserva.getIdVehiculo() + ","				
					+ "'"+reserva.getFechaEntrega() + "'," 
					+ "'"+reserva.getFechaDevolu() + "',"
					+ "'" + reserva.getDireccion() + "',"
					+   reserva.getIdlocalidad() + ","
					+   reserva.getIdprovincia() + ","
							 + reserva.getCodPost() + ","
							+  + reserva.getIdPago() + ","
							+ "'" +reserva.getNomTarj() + "'," 
					+ reserva.getNumTarj() + "," 
					 +"'"+ reserva.getVtoTarj() + "',"
					+ reserva.getCodSeg() + ")";
			System.out.println(sql);
			
			statement.executeUpdate(sql);
			
			
			return true;
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return false;
		}
	}
	
	public List<Reserva> listarReserva() {
		try {
			ConexionDB conexionDB = new ConexionDB();
			Connection conn = conexionDB.establecerConexion();
			Statement st = conn.createStatement();
			
			ResultSet resultSet = st.executeQuery("SELECT * FROM reserva");
			
			List<Reserva> listReserva = new ArrayList<Reserva>();
			while (resultSet.next()) {
				Reserva reserva = new Reserva(
						resultSet.getInt("idreserva"),
						resultSet.getString("nombre"),
						resultSet.getString("apellido"),
						resultSet.getString("usuario"),
						resultSet.getString("mail"),
						resultSet.getInt("idVehiculo"),
						resultSet.getInt("fechaEntrega"),
						resultSet.getInt("fechaDevolu"),
						resultSet.getString("direccion"),
						resultSet.getInt("idlocalidad"),
						resultSet.getInt("idprovincia"),
						resultSet.getInt("codPost"),
						resultSet.getInt("idPago"),
						resultSet.getString("nomTarj"),
						resultSet.getLong("numTarj"),
						resultSet.getInt("vtoTarj"),
						resultSet.getInt("codSeg"));



				
				listReserva.add(reserva);
			}
			
			return listReserva;
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		
		return null;
	}
	
	
	
}
