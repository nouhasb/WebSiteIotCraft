package projects;

import java.util.List;


public interface Projectdao extends IdaoProject<Project> {
	public List<Project> getAll(String des);
}
