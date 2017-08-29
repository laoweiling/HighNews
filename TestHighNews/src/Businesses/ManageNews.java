package Businesses;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.sql.Clob;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Vector;

import javax.sql.rowset.serial.SerialException;

import util.JDBCUtils;

import entity.NewsBean;
import entity.NewstypeBean;

public class ManageNews {
	
	public boolean insertNews(NewsBean nB) {      //增
		
			Connection conn = null;
			PreparedStatement st = null;
			ResultSet rs = null;
			int count =0;
			boolean flag = false;
			Clob clob = null;
			try{
			conn = JDBCUtils.getConnection();
			conn.setAutoCommit(false);
			try {
				clob=new javax.sql.rowset.serial.SerialClob(nB.getContent().toCharArray());
			} catch (SerialException e) {
				
				e.printStackTrace();
			} catch (SQLException e) {
				
				e.printStackTrace();
			}
			
			NewsBean ur = new NewsBean();
			
			ur = selectNews(nB.getNewsid());
			 if(ur.getNewsid() == 0)
			 {
				 System.out.println("可进行插入新闻操作");
	     		NewstypeBean rm = new NewstypeBean();
			   rm =ManageNewsType.selectNewstype(nB.getTypeid());
			if(rm.getTypeid() != 0) 
		     {
				System.out.println("typeid1存在可进行插入新闻操作");
			String sql = "insert into news (newsid, newstitle, author, " +
					"content, pubtime, typeid, newspic) values(null,?,?,?,?,?,?) ";
			st = conn.prepareStatement(sql);
			
			st.setString(1,nB.getNewstitle());
			st.setString(2,nB.getAuthor());
			st.setClob(3, clob );
			st.setString(4,nB.getPubtime());
			st.setInt(5,nB.getTypeid());
			st.setString(6, nB.getNewspic());  //存储的是图片路径
			
		     
			 count = st.executeUpdate();
			 flag = true;
			 
			 conn.commit();
			 conn.setAutoCommit(true);	
			
		     }
			 }
			
		}catch(Exception e){ 
			e.printStackTrace();
				try {
					conn.rollback();
				} catch (SQLException e1) {
					
					e1.printStackTrace();
				}
		}finally{
			JDBCUtils.release(conn, st, rs);
		}
			return flag;
	}
	public static NewsBean selectNews(int _newsid)  //查
	{
		Connection conn = null;
		 Statement stmt = null;
		 ResultSet rs = null;
		 NewsBean rm = new NewsBean();
		 try
		 {
			 conn = JDBCUtils.getConnection();
			 conn.setAutoCommit(false);
			 stmt = conn.createStatement();
			 rs =stmt.executeQuery("select * from news where newsid='"+_newsid+"'");	 
			 while(rs.next())
			 {	
				 	 
				 rm.setNewsid(rs.getInt("newsid"));
				 rm.setNewstitle(rs.getString("newstitle"));
				 rm.setAuthor(rs.getString("author"));
				 String s = getValueFromClob(rs.getClob("content"));
				 rm.setContent(s);  
				 rm.setTypeid(rs.getInt("typeid"));
				 rm.setPubtime(rs.getString("pubtime"));
				 rm.setNewspic(rs.getString("newspic"));
				
					
				
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
		 } finally{
				JDBCUtils.release(conn, stmt, rs);
		}
			return rm;
	}
	
	
	public static Vector<NewsBean> selectNewstype(String select_type)   //查全部，查单个
	{
		Connection conn = null;
		 Statement stmt = null;
		 ResultSet rs = null;
		 Vector<NewsBean> rm = new Vector<NewsBean>();
		 try
		 {
			 conn = JDBCUtils.getConnection();
			 conn.setAutoCommit(false);
			 stmt = conn.createStatement();
			 if(select_type.equals("1"))
			 { 
		     System.out.println("请输入要查询用户的编号:");
		     String _newsid = new BufferedReader
		    		 (new InputStreamReader(System.in)).readLine();
			 rs =stmt.executeQuery("select * from news where newsid="+_newsid);	 
			 }
			 if(select_type.equals("2"))
			 rs =stmt.executeQuery("select * from news ");
			 while(rs.next())
			 {	
				 NewsBean nb = new NewsBean();
				 nb.setNewsid(rs.getInt("newsid"));
				 nb.setNewstitle(rs.getString("newstitle"));
				 nb.setAuthor(rs.getString("author"));
				 String s = getValueFromClob(rs.getClob("content"));
				 nb.setContent(s);  
				 nb.setTypeid(rs.getInt("typeid"));
				 nb.setPubtime(rs.getString("pubtime"));
				 nb.setNewspic(rs.getString("newspic"));
				 rm.add(nb);
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
	
	public static boolean  deleteNews(int _newsid)     //删
	{   
		Connection conn = null;
		 PreparedStatement prep = null;
		 ResultSet rs = null;
		 NewsBean u = new NewsBean(); 
		 
		 boolean flag = false;	 
    	try
		{			
    		conn = JDBCUtils.getConnection();
			 conn.setAutoCommit(false);
			 u = selectNews(_newsid) ; //要先判断再进行删除
			 if(u.getNewsid() != 0)
			 {
			   prep = conn.prepareStatement
		    		 (" delete from news " +
		    		 		"where newsid=?;"); 
		     prep.setInt(1,_newsid);
		    
		     prep.executeUpdate();
		     flag=true;
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
	
	public static boolean  updateNews(NewsBean nB)             //改
	{   
		Connection conn = null;
		 PreparedStatement prep=null;
		 ResultSet rs = null;
		 Clob clob = null;
		NewsBean ur = new NewsBean();
		 boolean flag = false;
		try
		{
			conn = JDBCUtils.getConnection();
			try {
				clob=new javax.sql.rowset.serial.SerialClob(nB.getContent().toCharArray());
			} catch (SerialException e) {
				
				e.printStackTrace();
			} catch (SQLException e) {
				
				e.printStackTrace();
			}
			 conn.setAutoCommit(false);
			 ur = selectNews(nB.getNewsid());
			 System.out.println("ur=="+ur);
			 if(ur.getNewsid() != 0)
			 {
	     		NewstypeBean rm = new NewstypeBean();
			   rm =ManageNewsType.selectNewstype(nB.getTypeid());
			   System.out.println("NewstypeBean.rm :" + rm );
			if(rm != null) 
		     {
				String sql = "update news set newstitle=?,author=?,content=?,pubtime=?,typeid=?,newspic=? where newsid " +
		    	 		"="+ur.getNewsid();
				prep = conn.prepareStatement(sql);
//					 prep = conn.prepareStatement
//		    		 ("replace into news (newsid, newstitle, author, " +
//					"content, pubtime, typeid, newspic) values(null,?,?,?,?,?,?)");
					
					 prep.setString(1,nB.getNewstitle());
					 prep.setString(2,nB.getAuthor());
					 prep.setClob(3, clob );
					 prep.setString(4,nB.getPubtime());//待转化
					 prep.setInt(5,nB.getTypeid()); 
					 prep.setString(6, nB.getNewspic());
					 
		
		     prep.executeUpdate();  //执行这里就回滚
		     System.out.println("nb=="+nB);
		     flag = true;
		     conn.commit();
	 		 conn.setAutoCommit(true);
	 		
			 }
 
		     }
			 
			 else System.out.println("用户不存在");
			 
		}catch(Exception e)
		{
			e.printStackTrace();
			try {
				conn.rollback();   //执行了回滚
			} catch (SQLException e1) {
			
				e1.printStackTrace();
			}

		
		}finally{
			JDBCUtils.release(conn, prep, rs);
	    }
		return flag;	
	}

	 public final static String getValueFromClob(Clob clob) throws SQLException {  
	        String value = null;  
	  
	        if (clob != null) {  
	            int size = (int) clob.length();  
	            value = clob.getSubString(1, size);  
	        }  
	  
	        return value;  
	    }  
}
