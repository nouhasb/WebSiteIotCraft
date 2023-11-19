package users;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class SingleCon {
    private String db = "utilisateur";
    private String user = "root";
    private String pwd = "Nouha2002Sabri";
    private String url = "jdbc:mysql://localhost:3306/" + db;
    private static Connection connection = null;

    private SingleCon() {
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
            new SingleCon();
        return connection;
    }
}

