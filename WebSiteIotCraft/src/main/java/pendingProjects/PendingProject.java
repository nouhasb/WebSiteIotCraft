package pendingProjects;

public class PendingProject {
	private long IDP;
	private String titlep;
	private String stepsp;
	private String Componentsp;
	private String imagep;

	
	
	public PendingProject() {
		super();
	}
	
	
	
	public PendingProject(String titlep, String stepsp, String componentsp, String imagep) {
		super();
		this.titlep = titlep;
		this.stepsp = stepsp;
		Componentsp = componentsp;
		this.imagep = imagep;
	}



	public PendingProject(long iDP, String titlep, String stepsp, String componentsp, String imagep) {
		super();
		IDP = iDP;
		this.titlep = titlep;
		this.stepsp = stepsp;
		Componentsp = componentsp;
		this.imagep = imagep;
	}
	public long getIDP() {
		return IDP;
	}
	public void setIDP(long iDP) {
		IDP = iDP;
	}
	public String getTitlep() {
		return titlep;
	}
	public void setTitlep(String titlep) {
		this.titlep = titlep;
	}
	public String getStepsp() {
		return stepsp;
	}
	public void setStepsp(String stepsp) {
		this.stepsp = stepsp;
	}
	public String getComponentsp() {
		return Componentsp;
	}
	public void setComponentsp(String componentsp) {
		Componentsp = componentsp;
	}
	public String getImagep() {
		return imagep;
	}
	public void setImagep(String imagep) {
		this.imagep = imagep;
	}
	
	
	
	
}
