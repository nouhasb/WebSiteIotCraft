package users;

import java.util.List;

public interface IDAOuser<U> {
	public void adduser(U obj);
    public U getOne(long id);
    public String isAdmin(String email);

    public List<U> getAll();


}
