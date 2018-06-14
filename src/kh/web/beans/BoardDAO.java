package kh.web.beans;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class BoardDAO {
	private Connection getConnection() throws Exception{
		Class.forName("oracle.jdbc.driver.OracleDriver");
		String url = "jdbc:oracle:thin:@localhost:1521:xe";
		String dbId = "kh";
		String dbPw = "kh";					
		Connection con = DriverManager.getConnection(url, dbId, dbPw);
		return con;	
	}
	
	public List<BoardDTO> selectBoard() throws Exception{
		Connection con = this.getConnection();
		String sql = "select * from board_test";
		PreparedStatement pstat = con.prepareStatement(sql);
		ResultSet rs = pstat.executeQuery();
		List<BoardDTO> result = new ArrayList<>();
		while(rs.next()) {
			BoardDTO tmp = new BoardDTO();
			tmp.setSeq(rs.getInt(1));
			tmp.setNo(rs.getString(2));
			tmp.setTitle(rs.getString(3));
			tmp.setContents(rs.getString(4));
			tmp.setWriter(rs.getString(5));
			tmp.setWrite_date(rs.getString(6));			
			result.add(tmp);
		}		
		pstat.close();
		con.close();
		return result;
	}
}
