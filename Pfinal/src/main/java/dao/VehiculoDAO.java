package dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import dataBase.ConexionDB;
import model.Vehiculo;

public class VehiculoDAO {
	public List<Vehiculo> listarVehiculos() {
		try {
			ConexionDB conexionDB = new ConexionDB();
			Connection conn = conexionDB.establecerConexion();
			Statement st = conn.createStatement();
			ResultSet resultSet = st.executeQuery("SELECT * FROM vehiculos");
			List<Vehiculo> listVehiculos = new ArrayList<Vehiculo>();
			while (resultSet.next()) {
				Vehiculo vehiculo = new Vehiculo(resultSet.getInt("idVehiculo"), resultSet.getString("marca"),
						resultSet.getString("modelo"), resultSet.getInt("anio"), resultSet.getInt("velocidad"),
						resultSet.getString("patente"), resultSet.getInt("capacidad"), resultSet.getInt("precio"));
				listVehiculos.add(vehiculo);

			}

			return listVehiculos;

		} catch (Exception e) {
			// TODO: handle exception
		}
		return null;

	}
	public Vehiculo buscarXId(Integer id) {
		try {
			ConexionDB conexionDB = new ConexionDB();
		Connection conn =	conexionDB.establecerConexion();
		Statement st  = conn.createStatement();
		ResultSet rs = st.executeQuery("SELECT * FROM `vehiculos` WHERE idVehiculo="+id);
		
		while(rs.next()) {
			Vehiculo vehiculo = new Vehiculo(rs.getInt("idVehiculo"),
											 rs.getString("marca"),
											 rs.getString("modelo"),
											 rs.getInt("anio"),
											 rs.getInt("velocidad"),
											 rs.getString("patente"),
											 rs.getInt("capacidad"),
											 rs.getInt("precio"));
		return vehiculo;
		
		}
		
		} catch (Exception e2) {
			// TODO: handle exception
		}
		
		
		
		return null;
	}
}
