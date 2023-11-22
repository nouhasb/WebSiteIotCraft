package projects;



import java.sql.PreparedStatement;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;









public class ProjectDaoImpl extends AbstractProjects implements Projectdao {

	@Override
	public void adduser(Project obj) {
		// TODO Auto-generated method stub
		
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

