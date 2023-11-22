package projects;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;



public class SignleconProject {
	private String db = "projects";
    private String user = "root";
    private String pwd = "Nouha2002Sabri";
    private String url = "jdbc:mysql://localhost:3306/" + db;
    private static Connection connection = null;

    private SignleconProject() {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver"); // Load the MySQL JDBC driver
            connection = DriverManager.getConnection(url, user, pwd);
            System.out.println("Data entered correctly!");
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }
    }

    public static synchronized Connection getConnection() {
        if (connection == null)
            new SignleconProject();
        return connection;
    }
}