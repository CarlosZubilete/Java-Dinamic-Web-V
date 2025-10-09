package controller;

import java.io.IOException;

import java.util.LinkedList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Customer;
import service.ServiceCustomer;
import java.time.LocalDate;

@WebServlet("/ServletClientList")
public class ServletClientList extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public ServletClientList() {
		super();

	}

	protected void doGet(HttpServletRequest req, HttpServletResponse res)
	    throws ServletException, IOException {
		ServiceCustomer service = new ServiceCustomer();
		LinkedList<Customer> listClient = new LinkedList<>();

		// System.out.println("I'm here | ServletClientList | doGet ");

		if (req.getSession().getAttribute("login") != null) {

			// We got the list.
			listClient = service.find();
			req.setAttribute("list-client", listClient);
			RequestDispatcher dispatcher = req.getRequestDispatcher("/ClientList.jsp");
			dispatcher.forward(req, res);
		}
	}

	protected void doPost(HttpServletRequest req, HttpServletResponse res)
	    throws ServletException, IOException {
		// New client:
		if (req.getParameter("btnAddClient") != null) {
			// System.out.println("I'm here | ServletClientList | doPost ");
			ServiceCustomer service = new ServiceCustomer();
			String message = "System says: ";

			if (req.getParameter("gender").equals("0")) {
				message += "You've got to select a gender";
				// System.out.println("Gender value = " + gender);
			} else {
				// Catch all inputs
				// TODO: Create a new client
				String nationalId = (String) req.getParameter("DNI");
				String taxId = (String) req.getParameter("CUIL");
				String firstName = (String) req.getParameter("firstname");
				String lastName = (String) req.getParameter("lastname");
				String gender = (String) req.getParameter("gender");
				String birthday = (String) req.getParameter("birthday");
				// LocalDate datebirthday = LocalDate.parse(birthday);
				String address = (String) req.getParameter("address");
				String nationality = (String) req.getParameter("nationality");
				String city = (String) req.getParameter("locality");
				String province = (String) req.getParameter("province");
				String email = (String) req.getParameter("email");
				String phonenumber = (String) req.getParameter("phonenumber");

				Customer customer = new Customer(nationalId, taxId, firstName, lastName, gender,
				    LocalDate.parse(birthday), address, nationality, city, province, email, phonenumber);

				boolean isSave = service.addOne(customer);

				if (isSave) {
					message += "You have successfully added";
				} else {
					message += "¡Error to add a new register!";
				}
			}

			// System.out.println("System says: " + message );
			req.setAttribute("message", message);
			RequestDispatcher dispatcher = req.getRequestDispatcher("/AddClient.jsp");
			dispatcher.forward(req, res);
		}

	}

}

// 1. .equals() method to compare the values of the strings:
// Directly:  req.getParameter("gender").equals("0") 
// Steps: String gender = req.getParameter("gender");
//  "0".equals(gender)
