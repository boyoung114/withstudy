package withstudy;

import java.sql.*;
import java.util.ArrayList;


public class MyStudyMgr {
	private DBConnection pool;
	
	public MyStudyMgr() {
		pool = DBConnection.getInstance();
	}

	// MyStudy
	public int insertMyStudy(MyStudyBean ms, String id){
		Connection con = null;
		PreparedStatement ps = null;
		int re=-1;
		String sql="";
		//id num title day
		
		try {
			sql = "insert into with_mystudy values(?, mystudy_seq.nextval,?, TO_CHAR(SYSDATE, 'YYYY-MM-DD') )";
			con = pool.getConnection();
			ps = con.prepareStatement(sql);
			ps.setString(1, id);
			ps.setString(2, ms.getTitle());
			
			ps.executeUpdate();
			re = 1;
			
		}catch (Exception e) {
			e.printStackTrace();
		}finally {
			pool.closeConnection(con, ps);
		}
		return re;
	}

	//NewMyStudy
	public int insertNewMyStudy(String new_keyword[] , String new_content[], int i){
		Connection con = null;
		Statement st = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		int re=-1;
		int new_num = 0;
	
		//글 num, num, keyword,content
		
		try {
			con = pool.getConnection();
			String numsql = "select mystudy_seq.CURRVAL from dual";
			st = con.prepareStatement(numsql);
			rs = st.executeQuery(numsql);
			
			while (rs.next()) {
				new_num=rs.getInt(1);
			}
			
			
			for(int j =0; j<=i; j++) {
				String sql = "insert into with_newmystudy(new_num, newnum, new_keyword, new_content) "
						+ " values(?, newmystudy_seq.nextval,?,?)";

				ps = con.prepareStatement(sql);
				ps.setInt(1, new_num);
				ps.setString(2, new_keyword[j]);
				ps.setString(3, new_content[j]);
				ps.executeUpdate();
			}
			
			re = 1;
			
		}catch (Exception e) {
			e.printStackTrace();
		}finally {
			pool.closeConnection(con, ps);
		}
		return re;
	}
	
	//ReMyStudy
		public int insertReMyStudy(String re_keyword[] , String re_content[], int i){
			Connection con = null;
			Statement st = null;
			PreparedStatement ps = null;
			ResultSet rs = null;
			int re=-1;
			int re_num = 0;
		
			//글 num, num, keyword,content
			
			try {
				con = pool.getConnection();
				String numsql = "select mystudy_seq.CURRVAL from dual";
				st = con.prepareStatement(numsql);
				rs = st.executeQuery(numsql);
				
				while (rs.next()) {
					re_num=rs.getInt(1);
				}
				
				
				for(int j =0; j<=i; j++) {
					String sql = "insert into with_remystudy(re_num, renum, re_keyword, re_content) "
							+ " values(?, remystudy_seq.nextval,?,?)";

					ps = con.prepareStatement(sql);
					ps.setInt(1, re_num);
					ps.setString(2, re_keyword[j]);
					ps.setString(3, re_content[j]);
					ps.executeUpdate();
				}
				

				re = 1;
				
			}catch (Exception e) {
				e.printStackTrace();
			}finally {
				pool.closeConnection(con, ps);
			}
			return re;
		}
		
		
		// 제목 보여주기
		public ArrayList<MyStudyBean> MyStudytitle( String id){
			Connection con = null;
			PreparedStatement ps = null;
			ResultSet rs = null; 
			String sql="";			
			ArrayList<MyStudyBean> ms_arr = new ArrayList<MyStudyBean>(); 
			
			try {
				sql = "select * from with_mystudy where id = ?" ;
				con = pool.getConnection();
				ps = con.prepareStatement(sql);
				ps.setString(1, id);
				rs = ps.executeQuery();
				
				while(rs.next()){
					MyStudyBean msB = new MyStudyBean();
					msB.setTitle(rs.getString("title"));
					msB.setDay(rs.getString("day"));
					msB.setNum(rs.getInt("num"));

					ms_arr.add(msB);
				}
				
			}catch (Exception e) {
				e.printStackTrace();
			}finally {
				pool.closeConnection(con, ps);
			}
			return ms_arr;
		}
		

}
