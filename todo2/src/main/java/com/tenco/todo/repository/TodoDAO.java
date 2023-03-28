package com.tenco.todo.repository;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.tenco.todo.dto.TodolistDTO;
import com.tenco.todo.utils.DBHelper;

public class TodoDAO implements ITodoRepo {

	private Connection conn;
	
	public TodoDAO() {
		conn = new DBHelper().getConnection();
	}
		
	@Override
	public ArrayList<TodolistDTO> select() {
		ArrayList<TodolistDTO> resultList = new ArrayList<>();
		String query = " SELECT * FROM todolist ";

		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			pstmt = conn.prepareStatement(query);
			rs = pstmt.executeQuery();
			
			while (rs.next()) {
				TodolistDTO dto = new TodolistDTO();
				dto.setId(rs.getInt("id"));
				dto.setTitle(rs.getString("title"));
				dto.setDescription(rs.getString("description"));
				dto.setPriority(rs.getInt("priority"));
				boolean comp = (rs.getInt("completed") == 0) ? false : true;
				dto.setCompleted(comp);
				dto.setCreatedAt(rs.getString("createdAt"));
				dto.setCategoryId(rs.getInt("categoryId"));
				resultList.add(dto);
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
	public int updateTrue(int id) {
		int resultCount = 0;
		String query = " UPDATE todolist SET completed = 1 WHERE id = ? ";
		
		PreparedStatement pstmt = null;
		
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setInt(1, id);
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
	public int updateFalse(int id) {
		int resultCount = 0;
		String query = " UPDATE todolist SET completed = 0 WHERE id = ? ";
		
		PreparedStatement pstmt = null;
		
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setInt(1, id);
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
	public int insert(TodolistDTO todolistDTO) {
		int resultCount = 0;
		String query = " INSERT INTO todolist (title, description, priority, categoryId) VALUES (?, ?, ?, ?) ";
		
		PreparedStatement pstmt = null;
		
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, todolistDTO.getTitle());
			pstmt.setString(2, todolistDTO.getDescription());
			pstmt.setInt(3,  todolistDTO.getPriority());
			pstmt.setInt(4, todolistDTO.getCategoryId());
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
		String query = " DELETE FROM todolist WHERE id = ? ";
		
		PreparedStatement pstmt = null;
		
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setInt(1, id);
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



}
