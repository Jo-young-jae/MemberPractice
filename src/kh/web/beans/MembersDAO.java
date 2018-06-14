package kh.web.beans;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class MembersDAO {
	private Connection getConnection() throws Exception{
		Class.forName("oracle.jdbc.driver.OracleDriver");
		String url = "jdbc:oracle:thin:@localhost:1521:xe";
		String dbId = "kh";
		String dbPw = "kh";					
		Connection con = DriverManager.getConnection(url, dbId, dbPw);
		return con;	
	}
	
	public boolean checkId(String id) throws Exception{
		Connection con = this.getConnection();
		String sql = "select * from members where id =?";
		PreparedStatement pstat = con.prepareStatement(sql);
		pstat.setString(1, id);
		ResultSet rs = pstat.executeQuery();
		
		return rs.next();
	}
	
	public int signMember(String id, String pw, String name, String email, String phone) throws Exception{
		Connection con = this.getConnection();
		String sql = "insert into members values(members_seq.nextval,?,?,?,?,?)";
		PreparedStatement pstat = con.prepareStatement(sql);
		pstat.setString(1, id);
		pstat.setString(2, pw);
		pstat.setString(3, name);
		pstat.setString(4, email);
		pstat.setString(5, phone);
		
		int result = pstat.executeUpdate();
		pstat.close();
		con.close();
		return result;
	}
	
	public boolean loginMember(String id, String pw) throws Exception{
		Connection con = this.getConnection();
		String sql = "select * from where id=? and pw=?";
		PreparedStatement pstat = con.prepareStatement(sql);
		pstat.setString(1, id);
		pstat.setString(2, pw);
		ResultSet rs = pstat.executeQuery();
		
		pstat.close();
		con.close();
		
		return rs.next();		
	}
	
	public int deleteMember(String id, String pw) throws Exception{
		Connection con = this.getConnection();
		String sql = "delete from members where id =? and pw=?";
		PreparedStatement pstat = con.prepareStatement(sql);
		pstat.setString(1, id);
		pstat.setString(2, pw);
		int result = pstat.executeUpdate();
		pstat.close();
		con.close();
		
		return result;
	}
	
	public int updateMember(String id, String pw, String name, String email, String phone) throws Exception{
		Connection con = this.getConnection();
		String sql = "update members set name=?, email=?, phone=? where id=? and pw=?";
		PreparedStatement pstat = con.prepareStatement(sql);
		pstat.setString(1, name);
		pstat.setString(2, email);
		pstat.setString(3, phone);
		pstat.setString(4, id);
		pstat.setString(5, pw);
		
		int result = pstat.executeUpdate();
		pstat.close();
		con.close();		
		return result;		
	}
	
}
