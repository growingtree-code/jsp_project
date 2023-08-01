package review.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import conn.DBConnect;
import model.Review;

public class DaoImpl implements Dao {
	
	private DBConnect db;
	 
	public DaoImpl() {
		db = DBConnect.getInstance();
	}
	
	
	@Override
	public void insert(Review r) {
		// TODO Auto-generated method stub
		
		Connection conn = null;

		String sql = "insert into review values(review_seq.nextval,?,?,?,sysdate)";
		
		PreparedStatement pstmt = null;
		
		try {
			
			conn = db.getConnection();
			
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, r.getPro_num());
			pstmt.setString(2, r.getWriter());
			pstmt.setString(3, r.getContent());

			pstmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			try {
				pstmt.close();
				conn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
	}

	@Override
	public ArrayList<Review> select(int p) {
		// TODO Auto-generated method stub
		Connection conn = null;
		ResultSet rs = null;
		ArrayList<Review> list = new ArrayList<Review>();
		
		String sql = "select * from review where pro_num=?";
		PreparedStatement pstmt = null;
		
		
		try {
			conn = db.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, p);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				list.add(new Review(rs.getInt(1), rs.getInt(2), rs.getString(3),
						rs.getString(4), rs.getDate(5)));
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			try {
				rs.close();
				pstmt.close();
				conn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

		}
		
		return list;
	}

	
}
