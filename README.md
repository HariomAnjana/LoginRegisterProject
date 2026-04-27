# LoginRegisterProject

A simple Login and Registration web project using **JSP, Servlet, JDBC, MySQL, and Apache Tomcat**.

This project allows users to register and login using a MySQL database.

---

## Features

- User Registration
- User Login
- MySQL Database Connectivity
- JSP pages for frontend
- Servlets for backend processing
- Apache Tomcat server support

---

## Technologies Used

- Java
- JSP
- Servlet
- JDBC
- MySQL
- Apache Tomcat
- Eclipse IDE

---

## Project Structure

```text
LoginRegisterProject
│
├── src/main/java/servletdemo
│   ├── DBConnection.java
│   ├── RegisterServlet.java
│   └── LoginServlet.java
│
├── src/main/webapp
│   ├── index.jsp
│   ├── register.jsp
│   ├── login.jsp
│   └── success.jsp
│
├── database.sql
├── README.md
├── .project
└── .classpath
````

---

## Requirements Before Running This Project

Before importing this project, make sure you have installed:

1. Java JDK
2. Eclipse IDE for Enterprise Java and Web Developers
3. Apache Tomcat Server
4. MySQL Server
5. MySQL Connector/J JAR file

Recommended Tomcat version: **Apache Tomcat 9**

---

## How to Download the Project

You can download this project from GitHub.

### Option 1: Download ZIP

1. Open the GitHub repository.
2. Click on the green **Code** button.
3. Click **Download ZIP**.
4. Extract the ZIP file.

### Option 2: Clone Using Git

```bash
git clone https://github.com/HariomAnjana/LoginRegisterProject.git
```

---

## How to Import the Project in Eclipse

1. Open Eclipse.
2. Go to:

```text
File → Import
```

3. Select:

```text
General → Existing Projects into Workspace
```

4. Click **Next**.
5. Click **Browse**.
6. Select the extracted project folder.
7. Click **Finish**.

The project should now appear in Eclipse.

---

## How to Set Apache Tomcat in Eclipse

1. Open Eclipse.
2. Go to:

```text
Window → Show View → Servers
```

3. In the Servers tab, click:

```text
No servers are available. Click this link to create a new server.
```

4. Select **Apache Tomcat**.
5. Browse and select your Tomcat installation folder.
6. Click **Finish**.

Now connect the project with Tomcat:

1. Right-click on the project.
2. Click **Properties**.
3. Go to **Targeted Runtimes**.
4. Select your Apache Tomcat server.
5. Click **Apply and Close**.

---

## MySQL Database Setup

This project contains a file named:

```text
database.sql
```

You need to run this file in MySQL.

### Method 1: Using MySQL Workbench

1. Open MySQL Workbench.
2. Login to your MySQL connection.
3. Open the `database.sql` file.
4. Run the SQL script.

This will create the required database and table.

### Method 2: Using MySQL Command Line

First create the database:

```sql
CREATE DATABASE loginproject;
```

Then use the database:

```sql
USE loginproject;
```

Then import the SQL file:

```bash
mysql -u root -p loginproject < database.sql
```

---

## Update MySQL Username and Password

Open this file:

```text
src/main/java/servletdemo/DBConnection.java
```

Find this code:

```java
con = DriverManager.getConnection(
    "jdbc:mysql://localhost:3306/loginproject",
    "root",
    "root"
);
```

Change the username and password according to your own MySQL system.

Example:

```java
con = DriverManager.getConnection(
    "jdbc:mysql://localhost:3306/loginproject",
    "root",
    "your_mysql_password"
);
```

Important:

* `loginproject` is the database name.
* `root` is the MySQL username.
* `your_mysql_password` should be replaced with your actual MySQL password.

---

## MySQL Connector JAR Setup

This project uses JDBC, so you must add the **MySQL Connector/J JAR file**.

The JAR file path used on my system may not work on your computer, because every computer has a different file path.

So you need to download and add your own MySQL Connector/J JAR file.

### Steps to Add MySQL Connector JAR in Eclipse

1. Download MySQL Connector/J from the official MySQL website.
2. Extract the downloaded ZIP file.
3. Find the file like this:

```text
mysql-connector-j-8.x.x.jar
```

4. In Eclipse, right-click on the project.
5. Click:

```text
Build Path → Configure Build Path
```

6. Go to the **Libraries** tab.
7. Click **Classpath**.
8. Click **Add External JARs**.
9. Select your `mysql-connector-j-8.x.x.jar` file.
10. Click **Apply and Close**.

### If There Is a JAR Path Error

If Eclipse shows an error because of an old JAR path:

1. Right-click the project.
2. Go to:

```text
Build Path → Configure Build Path
```

3. Open the **Libraries** tab.
4. Remove the old or missing MySQL JAR path.
5. Add your own MySQL Connector/J JAR again.
6. Click **Apply and Close**.

---

## Better Way to Add JAR in Web Project

You can also place the MySQL Connector JAR inside this folder:

```text
src/main/webapp/WEB-INF/lib
```

If the `lib` folder is not available, create it manually.

Final path should look like this:

```text
src/main/webapp/WEB-INF/lib/mysql-connector-j-8.x.x.jar
```

This is useful because the JAR will stay inside the project.

---

## How to Run the Project

1. Make sure MySQL is running.
2. Make sure the database is created.
3. Make sure MySQL username and password are correct in `DBConnection.java`.
4. Make sure MySQL Connector JAR is added.
5. Right-click the project.
6. Click:

```text
Run As → Run on Server
```

7. Select Apache Tomcat.
8. Click **Finish**.

The project will open in the browser.

Example URL:

```text
http://localhost:8080/LoginRegisterProject/
```

---

## Common Problems and Solutions

### 1. MySQL Connection Error

Check these things:

* MySQL server is running.
* Database name is correct.
* Username is correct.
* Password is correct.
* MySQL Connector JAR is added properly.

---

### 2. ClassNotFoundException: com.mysql.cj.jdbc.Driver

This means MySQL Connector JAR is missing.

Solution:

Add MySQL Connector/J JAR to the project Build Path or place it inside:

```text
src/main/webapp/WEB-INF/lib
```

---

### 3. Tomcat Server Error

Check these things:

* Tomcat is added in Eclipse.
* Project is connected to Tomcat in Targeted Runtimes.
* Tomcat version is compatible with the project.

Recommended version:

```text
Apache Tomcat 9
```

---

### 4. 404 Error

If you get a 404 error:

* Check if the project is added to Tomcat.
* Right-click Tomcat server.
* Click **Add and Remove**.
* Add this project to the server.
* Restart Tomcat.

---

## Important Note

The MySQL Connector JAR file path may be different on every computer.

So if someone imports this project, they should remove the old JAR path and add their own MySQL Connector/J JAR file.

Also, they must update the MySQL username and password inside `DBConnection.java` according to their system.

---

## Author

Created by **Hariom Anjana**

 
 
