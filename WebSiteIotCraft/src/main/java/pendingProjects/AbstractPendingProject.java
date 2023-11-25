package pendingProjects;

import java.sql.Connection;



public class AbstractPendingProject {
	protected Connection con = SignleconPendingProject.getConnection();
}
