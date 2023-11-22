package projects;

import java.util.List;

public interface IdaoProject<P> {

	public void adduser(P obj);
    public P getOne(long ID);

    public List<P> getAll();


}
