package users;

import java.sql.Connection;

import java.sql.DriverManager;
import java.sql.SQLException;

public class SingleCon {
	private String db = "utilisateur";
	String user = "root";
	String pwd = "Nouha2002Sabri";
	String url = "jdbc:mysql://localhost:3306/" + db;
	 private static Connection connection = null;

	    private SingleCon() {
	        try {
	            connection = DriverManager.getConnection(url, user, pwd);
	            System.out.println("instance place cree!!");
	        } catch (SQLException e) {
	            e.printStackTrace();
	        }

	    }

	    public static Connection getConnection() {
	        if (connection == null)
	            new SingleCon();
	        return connection;
	    }
	}
