package pendingProjects;



import java.sql.PreparedStatement;



import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;




public class PendingProjectDaoImpl extends AbstractPendingProject implements PendingProjecttdao {

	@Override
	public void addproject(PendingProject obj) {

        PreparedStatement pst = null;
        String sql = "insert into pendingprojects (titlep,stepsp, componentsp, imagep) values (?,?,?,?)";
        try {
            pst = con.prepareStatement(sql);
            pst.setString(1, obj.getTitlep());
            pst.setString(2, obj.getStepsp());
            pst.setString(3, obj.getComponentsp());
            pst.setString(4, obj.getImagep());
            pst.executeUpdate();
            System.out.println("workingadd " );
        } catch (SQLException exp) {
            System.out.println(exp.getMessage());
        }
    }
	
	public void deleteUProject(long id) {
	    String sql = "DELETE FROM pendingprojects WHERE idp = ?";
	    try (PreparedStatement pst = con.prepareStatement(sql)) {
	        pst.setLong(1, id);
	        pst.executeUpdate();
	        System.out.println(" User Project deleted by admin");
	    } catch (SQLException exp) {
	        
	        exp.printStackTrace();
	    }
	}

	@Override
	public PendingProject getOne(long idp) {
		PendingProject project = null;
	    PreparedStatement pst = null;
	    String sql ="SELECT * FROM pendingprojects WHERE idp = ?";
	    try  {
	    	 pst = con.prepareStatement(sql);
	    	 pst.setLong(1, idp);

	        try (ResultSet resultSet = pst.executeQuery()) {
	            if (resultSet.next()) {
	                project = new PendingProject();
	                project.setIDP(resultSet.getLong("idp"));
	                project.setTitlep(resultSet.getString("titlep"));
	                project.setComponentsp(resultSet.getString("componentsp"));
	                project.setStepsp(resultSet.getString("stepsp"));
	                project.setImagep(resultSet.getString("imagep"));
	                
	            }
	        }
	    } catch (SQLException e) {
	        e.printStackTrace();
	    }

	    return project;
	}


		
	 

	@Override
	public List<PendingProject> getAllp() {
	    List<PendingProject> list = new ArrayList<>();
	    String sql = "SELECT * FROM pendingprojects";

	    try (PreparedStatement pst = con.prepareStatement(sql);
	         ResultSet rs = pst.executeQuery()) {

	        while (rs.next()) {
	            System.out.println(rs.getLong("idp") + " " + rs.getString("titlep"));
	            list.add(new PendingProject(rs.getLong("idp"), rs.getString("titlep"), rs.getString("stepsp"), rs.getString("componentsp"), rs.getString("imagep")));
	        }
	    } catch (SQLException exp) {
	        System.out.println("Error: " + exp.getMessage());
	       
	    }
	    return list;
	}


	@Override
	public List<PendingProject> getAllp(String tit) {
		 List<PendingProject> list = new ArrayList<PendingProject>();
	        PreparedStatement pst = null;
	        ResultSet rs;
	        String sql =  "SELECT * FROM pendingprojects WHERE titlep LIKE ? OR componentsp LIKE ?";
	        try {
	            pst = con.prepareStatement(sql);
	            pst.setString(1, "%" + tit + "%");
	            pst.setString(2, "%" + tit + "%");
	            
	            rs = pst.executeQuery();
	            while (rs.next()) {
	                System.out.println(rs.getLong("idp") + "" + rs.getString("titlep"));
	                System.out.println("SQL Query: " + sql);
	                System.out.println("Search Term: " + tit);
	                list.add(new PendingProject(rs.getLong("idp"),rs.getString("titlep"), rs.getString("stepsp"), rs.getString("componentsp"),rs.getString("imagep") ));
	            }
	        } catch (SQLException exp) {
	            System.out.println(exp.getMessage());
	        }
	        return list;
	    }


	
}

