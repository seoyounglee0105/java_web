package com.tenco.todo.repository;
	
import java.util.ArrayList;

import com.tenco.todo.dto.CategoryDTO;
	
public interface ICategoryRepo {
	
	ArrayList<CategoryDTO> select(); // 전체 조회
	
	int insert(String name);
	
	int delete(int id);
	
	int update(int id, String name);
	
}	
	