package pendingProjects;

import java.util.List;


public interface PendingProjecttdao extends IdaoPendingProject<PendingProject> {
	public List<PendingProject> getAllp(String tit);
}
