package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import BEAN.Conservation;
import BEAN.News;
import DB.DBConnection;
import controller.ConserStudenrForward;

public class NewsTeacher {
	public static List<News> DisplayConservationTeacher() throws SQLException
	{
		Connection conn=null;
	    DBConnection kn=new DBConnection();
		conn=kn.ketNoi();
		List<News> list= new ArrayList<News>();
		try 
		{
			ResultSet rSet=null;
			PreparedStatement ptmt=conn.prepareStatement("select * from News");
			rSet=ptmt.executeQuery();
			while(rSet.next())
			{
				News cs=new News();
				String IDNews=rSet.getString("IDNews");
				String TitleNews=rSet.getString("TitleNews");
				String ContentNews=rSet.getString("ContentNews");
				cs.setIDNews(IDNews);
				cs.setTitleNews(TitleNews);
				cs.setContentNews(ContentNews);
				list.add(cs);
			}
			
			
		}
		catch (SQLException e) {
		}
		return list;
		
	}


}
