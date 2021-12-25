package dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import dataBase.ConexionDB;
import model.Localidad;
import model.Provincia;

public class ProvinciaDAO {

	public List<Provincia> listarProvincias() {

		try {

			ConexionDB conexionDB = new ConexionDB();
			Connection conn = conexionDB.establecerConexion();
			Statement st = conn.createStatement();
			ResultSet resultSet = st.executeQuery("SELECT * FROM `provincias` ORDER BY nombre");

			List<Provincia> listProvincias = new ArrayList<Provincia>();

			while (resultSet.next()) {
				Provincia provincia = new Provincia(resultSet.getInt("idProvincia"), resultSet.getString("nombre"));
				listProvincias.add(provincia);

			}
			return listProvincias;

		} catch (Exception e) {
			// TODO: handle exception

		}
		return null;

	}

}
