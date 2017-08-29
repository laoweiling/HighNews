package Businesses;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.OutputStream;
import java.sql.Clob;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

import util.JDBCUtils;

import entity.NewsBean;
import entity.QueryResult;



public class SelectNews {
	
	public QueryResult pageQuery(int startindex,int pagesize){

		Connection conn = null;
		PreparedStatement st = null;
		ResultSet rs = null;
		int newsid =0;
		String newstitle = null;
		String author = null;
		String content= null;
		String pubtime= null;
		int typeid =0 ;
		String newspic= null;
		QueryResult qr = new QueryResult();
		try{
			conn = JDBCUtils.getConnection();
		    String sql = "select * from news limit ?,? ";
			st = conn.prepareStatement(sql);
			st.setInt(1, startindex);
			st.setInt(2, pagesize);      		
			rs = st.executeQuery();		
			List list = new ArrayList();
			 while(rs.next())
			 {	
				
				 newsid = rs.getInt("newsid");
				 newstitle = rs.getString("newstitle");
				 author = rs.getString("author");
				 String s = getValueFromClob(rs.getClob("content"));
				 typeid = rs.getInt("typeid");
				 pubtime = rs.getString("pubtime");
				 newspic = rs.getString("newspic");
				
				 NewsBean nb = new NewsBean( newsid,newstitle, author, s, pubtime, typeid, newspic);
		   		 list.add(nb);
			 }	 
			
			qr.setList(list);
			
			sql = "select count(*) from news";
			rs = conn.prepareStatement(sql).executeQuery();
			if(rs.next()){
				qr.setTotalrecord(rs.getInt(1));
			}
			
		}catch (Exception e) {
			e.printStackTrace();
		}finally{
			JDBCUtils.release(conn, st, rs);
		}
		
		return qr;
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
