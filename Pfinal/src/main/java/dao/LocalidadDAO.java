package dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import dataBase.ConexionDB;
import model.Localidad;

public class LocalidadDAO {

	public List<Localidad> listarLocalidades() {
		try {
			ConexionDB conexionDB = new ConexionDB();
			Connection conn = conexionDB.establecerConexion();
			Statement st = conn.createStatement();
			ResultSet resultSet = st.executeQuery("SELECT * FROM localidades ORDER BY nombrelocalidad");
		
			List<Localidad> listLocalidades = new ArrayList<Localidad>();
			while (resultSet.next()) {
			Localidad localidad = new Localidad(resultSet.getInt("idLocalidad"),resultSet.getString("nombreLocalidad"));
			listLocalidades.add(localidad);
			
			}
			return listLocalidades;

		
		} catch (Exception e) {
			// TODO: handle exception
		}
		return null;

		
	}

}
