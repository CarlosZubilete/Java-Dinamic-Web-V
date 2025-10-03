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

		System.out.println("I'm here: ServletClientList");

		if(req.getSession().getAttribute("login") != null ) {
//		if (req.getAttribute("username") != null) {
			// We got the list.
			listClient = service.find();
			
			String user = (String)req.getAttribute("username");
			req.setAttribute("username", user);
			req.setAttribute("list-client", listClient);
			RequestDispatcher dispatcher = req.getRequestDispatcher("/ClientList.jsp");
			dispatcher.forward(req,res);
		}
	}

	protected void doPost(HttpServletRequest req, HttpServletResponse res)
	    throws ServletException, IOException {
	}

}
