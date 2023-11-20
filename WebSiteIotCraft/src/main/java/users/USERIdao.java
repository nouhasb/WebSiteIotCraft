package users;

import java.util.List;


public interface USERIdao extends IDAOuser<USER> {
	public List<USER> getAll(String des);
}