package service;

import java.util.LinkedList;
import dao.*;
import model.Customer;

public class ServiceCustomer implements IDaoCustomer {

	public ServiceCustomer() {
	}

	@Override
	public LinkedList<Customer> find() {
		LinkedList<Customer> list = new LinkedList<>();
		DaoCustomer dao = new DaoCustomer();
		list = dao.find();
		return list;
	}

}
