# LoginRegisterProject

A simple Login and Registration web project using JSP, Servlet, JDBC, MySQL, and Apache Tomcat.

## Features
- User Registration
- User Login
- MySQL Database Connectivity
- JSP Pages for frontend
- Servlets for backend processing

## Technologies Used
- Java
- JSP
- Servlet
- JDBC
- MySQL
- Apache Tomcat
- Eclipse IDE

## Project Structure
- `src/main/java/servletdemo/DBConnection.java`
- `src/main/java/servletdemo/RegisterServlet.java`
- `src/main/java/servletdemo/LoginServlet.java`
- `src/main/webapp/index.jsp`
- `src/main/webapp/register.jsp`
- `src/main/webapp/login.jsp`
- `src/main/webapp/success.jsp`

## Database Setup
Run the `database.sql` file in MySQL to create the database and table.

## MySQL Connection
In `DBConnection.java`, update the database username and password according to your system.

Example:
```java
con = DriverManager.getConnection(
    "jdbc:mysql://localhost:3306/loginproject",
    "root",
    "root"
);