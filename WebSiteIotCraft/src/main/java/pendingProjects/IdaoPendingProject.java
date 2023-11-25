package pendingProjects;

import java.util.List;

public interface IdaoPendingProject<P> {

	public void addproject(P obj);
    public P getOne(long ID);
    public void deleteUProject(long id);

    public List<P> getAllp();


}
