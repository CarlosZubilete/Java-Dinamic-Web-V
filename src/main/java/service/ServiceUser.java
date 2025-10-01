package service;

import dao.DaoUser;
import model.User;

public class ServiceUser {

	public ServiceUser() {
		
	}

	// TODO: Here, should we verify the user ?
	public boolean verifyUser(String username, String password) {
		User user = new User();
		user.setUsername(username);
		user.setPassword(password);

		System.out.println("Service User : " + user.toString());
		DaoUser daoUser = new DaoUser();
		return daoUser.verifyUser(user);
	}

}
