package projects;





import java.sql.PreparedStatement;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;









public class ProjectDaoImpl extends AbstractProjects implements Projectdao {

	@Override
	public void addProject(Project obj) {
		PreparedStatement pst = null;
        String sql = "insert into projects (title, steps, Components,image) values (?,?,?,?)";
        try {
            pst = connection.prepareStatement(sql);
            pst.setString(1, obj.getTitle());
            pst.setString(2, obj.getSteps());
            pst.setString(3, obj.getComponents());
            pst.setString(4, obj.getImage());

            int rowsAffected = pst.executeUpdate();
            System.out.println("Project added by admin, Rows affected: " + rowsAffected);
        } catch (SQLException exp) {
            System.out.println("SQL Error: " + exp.getMessage());
        } finally {
            if (pst != null) {
                try {
                    pst.close();
                } catch (SQLException e) {
                    System.out.println("SQL Error on close: " + e.getMessage());
                }
            }
        }
    }

	
	public void deleteProject(long id) {
	    String sql = "DELETE FROM projects WHERE ID = ?";
	    try (PreparedStatement pst = connection.prepareStatement(sql)) {
	        pst.setLong(1, id);
	        pst.executeUpdate();
	        System.out.println("Project deleted by admin");
	    } catch (SQLException exp) {
	        
	        exp.printStackTrace();
	    }
	}
	
	
	 public void updateProject(Project project) {
	       
	        PreparedStatement pst = null;
	        String sql = "UPDATE projects SET title=?, steps=?, components=?, image=? WHERE id=?";
	        try {
	           
	            pst = connection.prepareStatement(sql);
	            pst.setString(1, project.getTitle());
	            pst.setString(2, project.getSteps());
	            pst.setString(3, project.getComponents());
	            pst.setString(4, project.getImage());
	            pst.setLong(5, project.getID());

	            int rowsUpdated = pst.executeUpdate();

	            if (rowsUpdated > 0) {
	                System.out.println("Project updated successfully");
	            } else {
	                System.out.println("Project update failed");
	            }
	        } catch (SQLException exp) {
	            System.out.println("Error updating project: " + exp.getMessage());
	        } finally {
	           
	        }
	    }
	@Override
	public Project getOne(long ID) {
	    Project project = null;
	    PreparedStatement pst = null;
	    String sql ="SELECT * FROM projects WHERE ID = ?";
	    try  {
	    	 pst = connection.prepareStatement(sql);
	    	 pst.setLong(1, ID);

	        try (ResultSet resultSet = pst.executeQuery()) {
	            if (resultSet.next()) {
	                project = new Project();
	                project.setID(resultSet.getLong("ID"));
	                project.setTitle(resultSet.getString("title"));
	                project.setComponents(resultSet.getString("components"));
	                project.setSteps(resultSet.getString("steps"));
	                project.setImage(resultSet.getString("image"));
	                
	            }
	        }
	    } catch (SQLException e) {
	        e.printStackTrace();
	    }

	    return project;
	}


		
	 

	@Override
	public List<Project> getAll() {
		 List<Project> list = new ArrayList<Project>();
	        PreparedStatement pst = null;
	        ResultSet rs;
	        String sql = "select *from projects";
	        try {
	            pst = connection.prepareStatement(sql);
	            rs = pst.executeQuery();
	            while (rs.next()) {
	                System.out.println(rs.getLong("ID") + "" + rs.getString("title"));
	               
	                list.add(new Project(rs.getLong("ID"), rs.getString("title"), rs.getString("steps"), rs.getString("Components"),rs.getString("image") ));
	            }
	        } catch (SQLException exp) {
	            System.out.println(exp.getMessage());
	        }
	        return list;
	    }

	@Override
	public List<Project> getAll(String tit) {
		 List<Project> list = new ArrayList<Project>();
	        PreparedStatement pst = null;
	        ResultSet rs;
	        String sql =  "SELECT * FROM projects WHERE title LIKE ? OR Components LIKE ?";
	        try {
	            pst = connection.prepareStatement(sql);
	            pst.setString(1, "%" + tit + "%");
	            pst.setString(2, "%" + tit + "%");
	            
	            rs = pst.executeQuery();
	            while (rs.next()) {
	                System.out.println(rs.getLong("ID") + "" + rs.getString("title"));
	                System.out.println("SQL Query: " + sql);
	                System.out.println("Search Term: " + tit);
	                list.add(new Project(rs.getLong("ID"),rs.getString("title"), rs.getString("steps"), rs.getString("Components"),rs.getString("image") ));
	            }
	        } catch (SQLException exp) {
	            System.out.println(exp.getMessage());
	        }
	        return list;
	    }

}

