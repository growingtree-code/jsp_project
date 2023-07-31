package  member.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;


import conn.DBConnect;
import model.Member;


public class DaoImpl implements Dao {
	
	
	private DBConnect db;
	 
	public DaoImpl() {
		db = DBConnect.getInstance();
	}

		
	
	public void insert(Member m) {
		// TODO Auto-generated method stub
		Connection conn = null;

		String sql = "insert into shop_member values(?,?,?,?,?,?)";
		
		PreparedStatement pstmt = null;
		
		try {
			
			conn = db.getConnection();
			
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, m.getId());
			pstmt.setString(2, m.getPwd());
			pstmt.setString(3, m.getName());
			pstmt.setString(4, m.getEmail());
			pstmt.setString(5, m.getAddr());
			pstmt.setInt(6, m.getType());
			pstmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			try {
				// 자원 반환
				pstmt.close();
				conn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}

	public Member select(String id) {
		// TODO Auto-generated method stub
		
		Connection conn = null;
		ResultSet rs = null;
		Member m = null;
		
		String sql = "select * from shop_member where id=?";
		PreparedStatement pstmt = null;
		
		
		try {
			conn = db.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				m = new Member(rs.getString(1), rs.getString(2),
						rs.getString(3), rs.getString(4), rs.getString(5), rs.getInt(6));
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			try {
				// 자원 반환
				rs.close();
				pstmt.close();
				conn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

		}
		
		return m;
	}

	
	
	public void update(Member m) {
		// TODO Auto-generated method stub
		Connection conn = null;
		
		
		String sql = "update shop_member set pwd=?, email=?, addr=? where id=?";
		
		PreparedStatement pstmt = null;
		
		try {
			
			conn = db.getConnection();

			// java에서 sql을 실행하는 PreparedStatement객체 생성
			
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, m.getPwd());
			pstmt.setString(2, m.getEmail());
			pstmt.setString(3, m.getAddr());
			pstmt.setString(4, m.getId());
			pstmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			try {
				// 자원 반환
				pstmt.close();
				conn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

		}
		
	}

	
	
	public void delete(String id) {
		// TODO Auto-generated method stub
		
		Connection conn = null;
		
		String sql = "delete shop_member where id=?";
		
		PreparedStatement pstmt = null;
		
		try {
			conn = db.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			pstmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

}
