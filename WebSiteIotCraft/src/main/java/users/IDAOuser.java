package users;

import java.util.List;

public interface IDAOuser<U> {
	public void adduser(U obj);
    public U getOne(long id);

    public List<U> getAll();


}
