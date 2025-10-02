package service;

import dao.*;
import model.User;

public class ServiceUser implements IDaoUser{

	public ServiceUser() {
		
	}

	// TODO: Here, should we verify the user ?
	public Boolean verifyUser(User user) {
		System.out.println("Service User : " + user.toString());
		DaoUser daoUser = new DaoUser();
		return daoUser.verifyUser(user);
	}

}
