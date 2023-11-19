package users;

import java.sql.Connection;

public class AbstractDAOAuser {
	 protected Connection connection = SingleCon.getConnection();
}
