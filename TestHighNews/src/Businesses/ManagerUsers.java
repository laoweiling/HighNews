package Businesses;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Vector;

import util.JDBCUtils;
import entity.NewstypeBean;
import entity.UsersBean;

public class ManagerUsers {
	
	public static UsersBean selectUsers(int _userid)    //按类型号查找
	{
		Connection conn = null;
		 Statement st = null;
		 ResultSet rs = null;
		 UsersBean  nt = new UsersBean();
		 try
		 {
			 conn = JDBCUtils.getConnection();
			 conn.setAutoCommit(false);
			 st = conn.createStatement();
			 rs =st.executeQuery("select * from users where userid='"+_userid+"'");	 
			 if(rs.next())
			 {	
				 
				 nt.setUserid(rs.getInt("userid"));	
				 nt.setUsername(rs.getString("username"));
				 nt.setUserpwd(rs.getString("userpwd"));
				 nt.setUserleval(rs.getInt("userleval"));
				
			 }	 
			 conn.commit();
			 conn.setAutoCommit(true);			 
		 }catch(Exception e)
		 {
		    try {
				conn.rollback();
			} catch (SQLException e1) {
			
				e1.printStackTrace();
			}
		 }finally{
				JDBCUtils.release(conn, st, rs);
		 }
		System.out.println("selectUsers 中的userid"+nt.getUserid());	
		System.out.println("selectUsers 中的username"+nt.getUsername());	
		System.out.println(nt);
		return nt;
	}
	public static Vector<UsersBean> selectUsers(String select_type)   //查全部，查单个
		{
			Connection conn = null;
			 Statement stmt = null;
			 ResultSet rs = null;
			 Vector<UsersBean> ub = new Vector<UsersBean>();
			 try
			 {
				 conn = JDBCUtils.getConnection();
				 conn.setAutoCommit(false);
				 stmt = conn.createStatement();
				 if(select_type.equals("1"))
				 { 
			     System.out.println("请输入要查询用户的编号:");
			     String _userid = new BufferedReader
			    		 (new InputStreamReader(System.in)).readLine();
				 rs =stmt.executeQuery("select * from users where typeid="+_userid);	 
				 }
				 if(select_type.equals("2"))
				 rs =stmt.executeQuery("select * from users ");
				 while(rs.next())
				 {	
					 UsersBean nt =new UsersBean();	 
					 nt.setUserid(rs.getInt("userid"));	
					 nt.setUsername(rs.getString("username"));
					 nt.setUserpwd(rs.getString("userpwd"));
					 nt.setUserleval(rs.getInt("userleval"));
					 ub.add(nt);
				 }	 
				 conn.commit();
				 conn.setAutoCommit(true);			 
			 }catch(Exception e)
			 {
			    try {
					conn.rollback();
				} catch (SQLException e1) {
				
					e1.printStackTrace();
				}
			 }finally{
					JDBCUtils.release(conn, stmt, rs);
			 }
		    
				return ub;
		}
		
		
		public static boolean  insertUsers(UsersBean r)    //增
		{   
			Connection conn = null;
			 PreparedStatement prep = null;
			 ResultSet rs = null;
			 UsersBean NT = new UsersBean();
			boolean flag = false;
			try
			{
				 conn = JDBCUtils.getConnection();
				 conn.setAutoCommit(false);
				NT = selectUsers(r.getUserid());	
				if(NT.getUserid() == 0)
		    	{
				prep = conn.prepareStatement
			    	("insert into users(userid,username,userpwd,userleval) values(?,?,?,?);");
				prep.setInt(1, r.getUserid());	
				prep.setString(2, r.getUsername());
				prep.setString(3, r.getUserpwd());
				prep.setInt(4, r.getUserleval());
			    prep.executeUpdate();
			    flag = true;
			    conn.commit();
			    conn.setAutoCommit(true);
				}
				
				
			}catch(Exception e)
			{
				try {
					conn.rollback();
				} catch (SQLException e1) {
					
				}
			}finally{
				JDBCUtils.release(conn, prep, rs);
		    }
			
			return flag;	
		}
		
		public static boolean  deleteUsers(int _userid)    //删
		{   
			Connection conn = null;
			 PreparedStatement prep = null;
			 Statement stmt = null;
			 ResultSet rs=null;
			 UsersBean nt= new UsersBean();
			boolean flag = false;
			try
			{
				conn = JDBCUtils.getConnection();
				 conn.setAutoCommit(false);
				nt = selectUsers(_userid);
				
				
				stmt=conn.createStatement();
				if(nt != null)
				{
		     		prep = conn.prepareStatement
		    		 (" delete from users " +
		    		 		"where userid=?;"); 
				}
			    prep.setInt(1, _userid);
			   
			    prep.executeUpdate();
			    flag = true;
			    conn.commit();
			    conn.setAutoCommit(true);
		
				
			}catch(Exception e)
			{
				try {
					conn.rollback();
				} catch (SQLException e1) {
					
					e1.printStackTrace();
				}
			} finally{
				JDBCUtils.release(conn, prep, rs);
		    }
			
			return flag;	
		}
		
		
		public static boolean  updateUsers(UsersBean r)    //改
		{   
			Connection conn = null;
			 PreparedStatement prep=null;
			 ResultSet rs = null;
			UsersBean rm= new UsersBean() ;
			 boolean flag = false;
			try
			{
				conn = JDBCUtils.getConnection();
				 conn.setAutoCommit(false);
				 rm =selectUsers(r.getUserid());
				System.out.println("rm=="+rm);
			     if(rm.getUserid() != 0)
				 {
			    	 String sql = "update users set username=?,userpwd=?,userleval=? where userid " +
			    	 		"="+rm.getUserid();
//			    	 prep = conn.prepareStatement
//			    		 (("replace into users (userid, username, userpwd, " +
//			 					"userleval) values(null,?,?,?)"));
			    	 prep = conn.prepareStatement(sql);
			     prep.setString(1,r.getUsername());
			     prep.setString(2, r.getUserpwd());
			     prep.setInt(3, r.getUserleval());
			     prep.executeUpdate();
			     System.out.println("r=="+r);
			     flag = true;
			     conn.commit();
			     conn.setAutoCommit(true);   
				 }
			    
			}catch(Exception e)
			{
	           try {
				conn.rollback();
			} catch (SQLException e1) {
				
				e1.printStackTrace();
			}
			} finally{
				JDBCUtils.release(conn, prep, rs);
		    } 
			return flag;	
		}

}
