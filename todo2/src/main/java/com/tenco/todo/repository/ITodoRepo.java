package com.tenco.todo.repository;

import java.util.ArrayList;

import com.tenco.todo.dto.TodolistDTO;

public interface ITodoRepo {

	ArrayList<TodolistDTO> select();
	int updateTrue(int id);
	int updateFalse(int id);
	int insert(TodolistDTO todolistDTO);
	int delete(int id);
	
}
