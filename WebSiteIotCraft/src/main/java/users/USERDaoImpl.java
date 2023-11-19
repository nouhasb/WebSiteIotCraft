package users;


import java.sql.PreparedStatement;

import java.sql.SQLException;

import java.util.List;
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
