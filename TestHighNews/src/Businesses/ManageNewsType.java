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



public class ManageNewsType {
	public static NewstypeBean selectNewstype(int _typeid)    //按类型号查找
	{
		Connection conn = null;
		 Statement st = null;
		 ResultSet rs = null;
		 NewstypeBean nt =new NewstypeBean();
		 try
		 {
			 conn = JDBCUtils.getConnection();
			 conn.setAutoCommit(false);
			 st = conn.createStatement();
			 rs =st.executeQuery("select * from newstype where typeid='"+_typeid+"'");	 
			 while(rs.next())
			 {	
				 	 
				 nt.setTypeid(rs.getInt("typeid"));	
				 nt.setTypename(rs.getString("typename"));
				
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
		System.out.println("nt.getTypeid()   :"+nt.getTypeid());
		System.out.println("ManageNewsType.nt"+nt);
		return nt;
	}
   
	public static Vector<NewstypeBean> selectNewstype(String select_type)   //查全部，查单个
	{
		Connection conn = null;
		 Statement stmt = null;
		 ResultSet rs = null;
		 Vector<NewstypeBean> rm = new Vector<NewstypeBean>();
		 try
		 {
			 conn = JDBCUtils.getConnection();
			 conn.setAutoCommit(false);
			 stmt = conn.createStatement();
			 if(select_type.equals("1"))
			 { 
		     System.out.println("请输入要查询新闻类型的编号:");
		     String _typeid = new BufferedReader
		    		 (new InputStreamReader(System.in)).readLine();
			 rs =stmt.executeQuery("select * from newstype where typeid="+_typeid);	 
			 }
			 if(select_type.equals("2"))
			 rs =stmt.executeQuery("select * from newstype ");
			 while(rs.next())
			 {	
				 NewstypeBean nt =new NewstypeBean();	 
				 nt.setTypeid(rs.getInt("typeid"));	
				 nt.setTypename(rs.getString("typename"));
				 rm.add(nt);
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
	    
			return rm;
	}
	
	
	public static boolean  insertnewstype(NewstypeBean r)    //增
	{   
		Connection conn = null;
		 PreparedStatement prep = null;
		 ResultSet rs = null;
		 NewstypeBean NT = new NewstypeBean();
		boolean flag = false;
		try
		{
			 conn = JDBCUtils.getConnection();
			 conn.setAutoCommit(false);
			NT = selectNewstype(r.getTypeid());	
			if(NT.getTypeid() == 0)
	    	{
			prep = conn.prepareStatement
		    	("insert into newstype(typeid,typename) values(?,?);");
		    prep.setInt(1, r.getTypeid());
		    prep.setString(2, r.getTypename());
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
	
	public static boolean  deletenewstype(int _typeid)    //删
	{   
		Connection conn = null;
		 PreparedStatement prep = null;
		 Statement stmt = null;
		 ResultSet rs=null;
		 NewstypeBean nt= new NewstypeBean();
		boolean flag = false;
		try
		{
			conn = JDBCUtils.getConnection();
			 conn.setAutoCommit(false);
			nt = selectNewstype(_typeid);
			int _newsid=0;
			
			stmt=conn.createStatement();
			if(nt.getTypeid() != 0)
			{
				rs = stmt.executeQuery("select newsid from news where typeid ='"+_typeid+"'");
			
			while(rs.next())
			{
				_newsid = rs.getInt("newsid");
				ManageNews.deleteNews(_newsid);
			}
			prep = conn.prepareStatement
	    		 (" delete from newstype " +
	    		 		"where typeid=?;"); 
			
			}
		    prep.setInt(1, _typeid);
		   
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
	
	
	public static boolean  updatenewstype(NewstypeBean r)    //改
	{   
		Connection conn = null;
		 PreparedStatement prep=null;
		 ResultSet rs = null;
		 NewstypeBean rm= new NewstypeBean() ;
		 boolean flag = false;
		try
		{
			conn = JDBCUtils.getConnection();
			 conn.setAutoCommit(false);
			 rm =selectNewstype(r.getTypeid());	
		     if(rm.getTypeid() != 0)
			 {
		    	 prep = conn.prepareStatement
		    		 ("update newstype set typename=? where typeid=?");
		     
		     prep.setString(1,r.getTypename());
		     prep.setInt(2, r.getTypeid());
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
			
			e1.printStackTrace();
		}
		} finally{
			JDBCUtils.release(conn, prep, rs);
	    } 
		return flag;	
	}
}
