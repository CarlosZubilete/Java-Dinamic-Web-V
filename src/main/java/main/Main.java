package main;
import model.*;

import java.util.LinkedList;
import java.util.List;
import dao.*;
import service.*;

public class Main {

	// TODO : JAVA MACHINE ENVIROMENT.
	// TODO: JAVA RUTINE EXECUTE.
	public static void main(String[] args) {
	
		List<Customer> list = new LinkedList<>();
		DaoCustomer dao = new DaoCustomer();
		list = dao.find();
		
		for (Customer customer : list ) {
			System.out.println(customer.toString());
		}
	}

}
