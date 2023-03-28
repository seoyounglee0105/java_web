package com.tenco.todo.repository;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.tenco.todo.dto.CategoryDTO;
import com.tenco.todo.utils.DBHelper;

public class CategoryDAO implements ICategoryRepo {

	private DBHelper dbHelper;
	private Connection conn;
	
	public CategoryDAO() {
		dbHelper = new DBHelper();
		conn = dbHelper.getConnection();
	}

	@Override
	public ArrayList<CategoryDTO> select() {
		ArrayList<CategoryDTO> resultList = new ArrayList<>();
		String strQuery = " SELECT * FROM category ";
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			pstmt = conn.prepareStatement(strQuery);
			rs = pstmt.executeQuery();
			
			while (rs.next()) {
				int id = rs.getInt("id");
				String name = rs.getString("name");
				CategoryDTO categoryDTO = new CategoryDTO(id, name);
				resultList.add(categoryDTO);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				rs.close();
				pstmt.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return resultList;
	}

	@Override
	public int insert(String name) {
		int resultCount = 0;
		String queryStr = " INSERT INTO category (name) VALUES (?) ";
		
		PreparedStatement pstmt = null;
		
		try {
			pstmt = conn.prepareStatement(queryStr);
			pstmt.setString(1, name);
			resultCount = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				pstmt.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}		
		return resultCount;
	}

	@Override
	public int delete(int id) {
		int resultCount = 0;
		String queryStr = " DELETE FROM category WHERE id = ? ";
		
		PreparedStatement pstmt = null;
		try {
			pstmt = conn.prepareStatement(queryStr);
			pstmt.setInt(1, id);
			resultCount = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.getStackTrace();
		} finally {
			try {
				pstmt.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return resultCount;
	}

	@Override
	public int update(int id, String name) {
		int resultCount = 0;
		String queryStr = " UPDATE category SET name = ? WHERE id = ? ";
		
		PreparedStatement pstmt = null;
		try {
			pstmt = conn.prepareStatement(queryStr);
			pstmt.setString(1, name);
			pstmt.setInt(2, id);
			resultCount = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.getStackTrace();
		} finally {
			try {
				pstmt.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return resultCount;
	}

}
