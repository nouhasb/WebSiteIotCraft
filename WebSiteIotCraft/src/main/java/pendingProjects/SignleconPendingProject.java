package pendingProjects;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;



public class SignleconPendingProject {
	private String db = "pendingprojects";
    private String user = "root";
    private String pwd = "Nouha2002Sabri";
    private String url = "jdbc:mysql://localhost:3306/" + db;
    private static Connection con = null;

    private SignleconPendingProject() {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver"); // Load the MySQL JDBC driver
            con = DriverManager.getConnection(url, user, pwd);
            System.out.println("Data added correctly!");
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }
    }

    public static synchronized Connection getConnection() {
        if (con == null)
            new SignleconPendingProject();
        return con;
    }
}