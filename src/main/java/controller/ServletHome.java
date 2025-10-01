package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import service.*;

@WebServlet("/ServletHome")
public class ServletHome extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public ServletHome() {
		super();

	}

	protected void doGet(HttpServletRequest req, HttpServletResponse res)
	    throws ServletException, IOException {

	}

	protected void doPost(HttpServletRequest req, HttpServletResponse res)
	    throws ServletException, IOException {
		if (req.getParameter("btnSend") != null) {
			
			System.out.println("I'm here, do post");
			String user = req.getParameter("username").toString();
			String password = req.getParameter("password").toString();
			boolean result = this.verifyLogin(user, password);
			
			if (result) {
				req.setAttribute("usermae", user);
				RequestDispatcher dispatcher = req.getRequestDispatcher("/ClientList.jsp");
				dispatcher.forward(req, res);
			} else {
				String message = "Error, Usuario no valido";
				req.setAttribute("message", message);
				RequestDispatcher dispatcher = req.getRequestDispatcher("/Home.jsp");
				dispatcher.forward(req, res);

			}

		}
	}

	private Boolean verifyLogin(String username, String password) {
		ServiceUser serviceUser = new ServiceUser();
		return serviceUser.verifyUser(username, password);

	}

}
