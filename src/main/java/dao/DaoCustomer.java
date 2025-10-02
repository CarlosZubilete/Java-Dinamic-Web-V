package dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.LinkedList;
import java.time.LocalDate;
import model.Customer;

public class DaoCustomer implements IDaoCustomer {

	public DaoCustomer() {
	}

	@Override
	public LinkedList<Customer> find() {
		LinkedList<Customer> list = new LinkedList<>() ;
		String query = "SELECT * FROM clientes";

		try (Connection conn = new Conexion().getConection()) {
			Statement statement = conn.createStatement();
			ResultSet resultSet = statement.executeQuery(query);

			while (resultSet.next()) {
				Customer customer = new Customer();
				customer.setCustomerId(resultSet.getInt("id_cliente"));
				customer.setNationalId(resultSet.getString("dni"));
				customer.setTaxId(resultSet.getString("cuil"));
				customer.setFirstName(resultSet.getString("nombre"));
				customer.setLastName(resultSet.getString("apellido"));
				customer.setGender(resultSet.getString("sexo"));
				/// This is a Local Date.
				String fecha = resultSet.getString("fecha_nacimiento");
				LocalDate birthDate = LocalDate.parse(fecha);
				customer.setBirthDate(birthDate);
				//
				customer.setAddress(resultSet.getString("direccion"));
				customer.setNationality(resultSet.getString("nacionalidad"));
				customer.setCity(resultSet.getString("localidad"));
				customer.setProvince(resultSet.getString("provincia"));
				customer.setEmail(resultSet.getString("correo_electronico"));
				customer.setPhoneNumber(resultSet.getString("telefono"));
				list.add(customer);
			}

			conn.close();
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			System.out.println("We'd got all LinkedList<Customer> :D");
		}
		
		return list;
	};

}
