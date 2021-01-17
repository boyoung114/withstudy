package withstudy;

import java.sql.*;

public class PersonMgr {
	private DBConnection pool;
	
	public PersonMgr() {
		pool = DBConnection.getInstance();
	}

	//ȸ������
	public int insertPerson(PersonBean person){
		Connection con = null;
		PreparedStatement ps = null;
		int re=-1;
		String sql = "insert into with_person values(?,?,?,?,?,?)";
		
		try {
			con = pool.getConnection();
			ps = con.prepareStatement(sql);
			ps.setString(1, person.getId());
			ps.setString(2, person.getPw());
			ps.setString(3, person.getNick());
			ps.setString(4, person.getEmail());
			ps.setString(5, person.getBirth());
			ps.setString(6, person.getPhone());
			ps.executeUpdate();
			re = 1;
			
		}catch (Exception e) {
			e.printStackTrace();
		}finally {
			pool.closeConnection(con, ps);
		}
		return re;
	}
	
	
	public int loginPerson(String id, String pw){
		Connection con = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		int re =-1;
		String db_pw;
		String sql = "select pw from with_person where id=?"; 
		try {
			con = pool.getConnection();
			ps = con.prepareStatement(sql);
			ps.setString(1, id);
			System.out.println(id);
			rs = ps.executeQuery();
			System.out.println(sql);
			if(rs.next()) { 
				db_pw = rs.getString("pw"); 
				if(db_pw.equals(pw)) { 
					re = 1; //아이디 비번이 일치하면
				}else {
					re = 0; //아이디 비번이 일치하지 않음
				}
			}else {
				re = -1; //비번이 없음
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			pool.closeConnection(con, ps,rs);
		}
		
		return re;
	}
}
