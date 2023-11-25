package projects;

import java.sql.Connection;



public class AbstractProjects {
	protected Connection connection = SignleconProject.getConnection();
}
