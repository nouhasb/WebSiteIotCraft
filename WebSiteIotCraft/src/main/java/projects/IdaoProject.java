package projects;

import java.util.List;

public interface IdaoProject<P> {

	public void addProject(P obj);
	
	public void updateProject(P project);
	
    public P getOne(long ID);
    
    public void deleteProject(long ID);

    public List<P> getAll();


}
