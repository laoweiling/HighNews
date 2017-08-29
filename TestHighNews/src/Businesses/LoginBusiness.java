package Businesses;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import java.util.Vector;

import entity.UsersBean;




import util.JDBCUtils;



public class LoginBusiness {

	public UsersBean login(String _username, String _userpwd) {
		int userleval = 0;
		int id = 0;
		Connection conn = null;
		PreparedStatement st = null;
		ResultSet rs = null;
		UsersBean nb = new UsersBean();
		try{
			conn = JDBCUtils.getConnection();
		   
			String sql = "select * from users where username = ? and userpwd = ? ";
			st = conn.prepareStatement(sql);
			
			st.setString(1, _username);
			st.setString(2, _userpwd);
			
			rs = st.executeQuery();
			
			
			if(rs.next()){
				 
				 nb.setUserleval(rs.getInt("userleval"));
				 nb.setUserid(rs.getInt("userid"));
				 nb.setUsername(rs.getString("username"));
				 nb.setUserpwd(rs.getString("userpwd"));
			}
			
		}catch (Exception e) {
			e.printStackTrace();
		}finally{
			JDBCUtils.release(conn, st, rs);
	 }
		return nb;
	}

	
	
    
}
