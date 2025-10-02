package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import model.User;

public class DaoUser implements IDaoUser {

	public DaoUser() {
	};
	
	@Override
	public Boolean verifyUser(User user) {
		boolean exists = false;

		String query = "SELECT * FROM usuarios where usuario = ? AND contrasena = ?";

		try (Connection conn = new Conexion().getConection()) {

			PreparedStatement preparedStatement = conn.prepareStatement(query);
			preparedStatement.setString(1, user.getUsername());
			preparedStatement.setString(2, user.getPassword());

			ResultSet resulSet = preparedStatement.executeQuery();

			if (resulSet.next())
				exists = true;

		} catch (SQLException e) {
			e.printStackTrace();
		}

		return exists;
	}

}
