package users;


import java.sql.PreparedStatement;

import java.sql.ResultSet;
import java.sql.SQLException;

import java.util.List;

import org.mindrot.jbcrypt.BCrypt;


public class USERDaoImpl extends AbstractDAOAuser implements USERIdao {

	@Override
	public void adduser(USER obj)  {
		
        PreparedStatement pst = null;
        String sql = "insert into utilisateur (fname,lname, email, password) values (?,?,?,?)";
        try {
            pst = connection.prepareStatement(sql);
            pst.setString(1, obj.getFname());
            pst.setString(2, obj.getLname());
            pst.setString(3, obj.getEmail());
            pst.setString(4, obj.getPassword());
            pst.executeUpdate();
        } catch (SQLException exp) {
            System.out.println(exp.getMessage());
        }
    }
	
	public boolean emailExists(String email) {
	    PreparedStatement pst = null;
	    ResultSet resultSet = null;
	    String sql = "SELECT COUNT(*) AS count FROM utilisateur WHERE email = ?";

	    try {
	        pst = connection.prepareStatement(sql);
	        pst.setString(1, email);
	        resultSet = pst.executeQuery();

	        if (resultSet.next()) {
	            int count = resultSet.getInt("count");
	            return count > 0;
	        }
	    } catch (SQLException exp) {
	        System.out.println(exp.getMessage());
	    } finally {
	        try {
	            if (resultSet != null) {
	                resultSet.close();
	            }
	            if (pst != null) {
	                pst.close();
	            }
	        } catch (SQLException e) {
	            System.out.println(e.getMessage());
	        }
	    }

	    return false;
	}
	


	public boolean userExists(String email, String enteredPassword) {
	    PreparedStatement pst = null;
	    ResultSet rs = null;
	    String sql = "SELECT password FROM utilisateur WHERE email = ?";
	    
	    try {
	        pst = connection.prepareStatement(sql);
	        pst.setString(1, email);
	        rs = pst.executeQuery();

	        if (rs.next()) {
	            String hashedPasswordFromDB = rs.getString("password");
	            return BCrypt.checkpw(enteredPassword, hashedPasswordFromDB);
	        }
	    } catch (SQLException e) {
	        e.printStackTrace();
	    } finally {
	        closeResources(pst, rs);
	    }
	    return false;
	}


	private void closeResources(PreparedStatement pst, ResultSet rs) {
        try {
            if (rs != null) {
                rs.close();
            }
            if (pst != null) {
                pst.close();
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
	
	
	public String getUserNameByEmail(String email) {
	    PreparedStatement pst = null;
	    ResultSet resultSet = null;
	    String sql = "SELECT lname,fname FROM utilisateur WHERE email = ?";

	    try {
	        pst = connection.prepareStatement(sql);
	        pst.setString(1, email);
	        resultSet = pst.executeQuery();

	        if (resultSet.next()) {
	            return resultSet.getString("lname") +" "+ resultSet.getString("fname");
	        }
	    } catch (SQLException exp) {
	        System.out.println(exp.getMessage());
	    } finally {
	        try {
	            if (resultSet != null) {
	                resultSet.close();
	            }
	            if (pst != null) {
	                pst.close();
	            }
	        } catch (SQLException e) {
	            System.out.println(e.getMessage());
	        }
	    }

	    return null; // Return null if no user with the given email is found
	}

	




	@Override
	public USER getOne(long id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<USER> getAll() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<USER> getAll(String des) {
		// TODO Auto-generated method stub
		return null;
	}

		
	}


