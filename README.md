# Web_Project_V

This project is a multi-layered Java web application developed for educational purposes, following the Model-View-Controller (MVC) architecture. It demonstrates the use of servlets, JSP, and layered design patterns for managing customers and users.

## Database Setup

Before running the application, set up the database:

1. Open your MySQL client (e.g., MySQL Workbench, phpMyAdmin, or command line).
2. Run the SQL script `query_tp5.sql` located in the project root. This will:
   - Create the `sistema_clientes` database.
   - Create the `usuarios` and `clientes` tables.
   - Insert a sample admin user (`admin`/`pass`).

Example command (from terminal):

```sh
mysql -u your_username -p < query_tp5.sql
```

## Features Demonstrated

As shown in the video (https://youtu.be/RxhwJwjCqHQ):

- **Login/Logout UI:**
  - Users can log in with their credentials (e.g., admin/pass).
  - Secure session management with logout functionality.
- **Add New Customer:**
  - Use the web form to add a new customer record to the database.
- **Customer List & Search:**
  - View a list of all customers.
  - Search for customers by criteria from the browser interface.

## Project Structure

- **src/main/java/**: Contains the Java source code organized by package:
  - `controller`: Servlets handling HTTP requests (e.g., `ServletClientList`, `ServletHome`).
  - `dao`: Data Access Objects and interfaces for database operations (`DaoCustomer`, `DaoUser`, `Conexion`, etc.).
  - `model`: JavaBeans representing business entities (`Customer`, `User`).
  - `service`: Service layer for business logic (`ServiceCustomer`, `ServiceUser`).
  - `main`: Main entry point (if needed for testing or running outside a servlet container).
- **src/main/webapp/**: Web resources:
  - JSP files for the UI (`AddClient.jsp`, `ClientList.jsp`, `Home.jsp`).
  - CSS styles for each page.
  - `WEB-INF/`: Deployment descriptors and libraries.
- **build/**: Compiled classes.
- **doc/**: Documentation and reference materials.
- **Servers/**: Tomcat server configuration for local deployment.

## How to Run

1. Import the project into Eclipse as a Dynamic Web Project.
2. Ensure Tomcat 8.0 is configured in your Eclipse workspace.
3. Deploy the project to the Tomcat server.
4. Access the application via your browser (e.g., `http://localhost:8080/Web_Project_V/`).

## Documentation

See the `doc/` folder for PDF guides and notes on layered programming, database tables, and variable types.

## Author

This project was developed as a college assignment to demonstrate best practices in Java web application development using the MVC pattern and layered architecture.

---
Feel free to explore, modify, and use this project for learning purposes!