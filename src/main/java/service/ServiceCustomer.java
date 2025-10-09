package service;

import java.util.LinkedList;
import dao.*;
import model.Customer;

public class ServiceCustomer implements IDaoCustomer {

	public ServiceCustomer() {
	}

	@Override
	public LinkedList<Customer> find() {
		DaoCustomer dao = new DaoCustomer();
		LinkedList<Customer> list = new LinkedList<>();
		list = dao.find();
		return list;
	}

	@Override
	public Boolean addOne(Customer customer) {
    DaoCustomer dao = new DaoCustomer();
    try {
      // System.out.println("ServiceCustomer | customer = " + customer);
      return dao.addOne(customer);
    } catch (Exception e) {
      System.out.println("ServiceCustomer | error adding customer:");
      e.printStackTrace();
      return false;
    }
	}

}
