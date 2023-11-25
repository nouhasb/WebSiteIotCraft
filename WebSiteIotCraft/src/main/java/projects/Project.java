package projects;

public class Project {
	private long ID;
	private String title;
	private String steps;
	private String Components;
	private String image;
	
	
	
	
	public Project() {
		super();
	}
	
	

	public Project(String title, String steps, String components, String image) {
		super();
		this.title = title;
		this.steps = steps;
		Components = components;
		this.image = image;
	}



	public Project(long ID, String title, String steps, String components, String image) {
		super();
		this.ID = ID;
		this.title = title;
		this.steps = steps;
		Components = components;
		this.image = image;
	}




	public long getID() {
		return ID;
	}



	public void setID(long ID) {
		this.ID = ID;
	}




	public String getTitle() {
		return title;
	}











	public void setTitle(String title) {
		this.title = title;
	}











	public String getSteps() {
		return steps;
	}











	public void setSteps(String steps) {
		this.steps = steps;
	}











	public String getComponents() {
		return Components;
	}











	public void setComponents(String components) {
		Components = components;
	}











	public String getImage() {
		return image;
	}











	public void setImage(String image) {
		this.image = image;
	}











	



	
}
