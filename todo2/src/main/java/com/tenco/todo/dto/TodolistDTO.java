package com.tenco.todo.dto;

public class TodolistDTO extends CategoryDTO {

	private int id;
	private String title;
	private String description;
	private int priority;
	private boolean completed;
	private String createdAt;
	private int categoryId;
	
	public TodolistDTO(String title, String description, int priority, int categoryId) {
		super();
		this.title = title;
		this.description = description;
		this.priority = priority;
		this.categoryId = categoryId;
	}
	
	public TodolistDTO() {
		super();
	}
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String desription) {
		this.description = desription;
	}
	public int getPriority() {
		return priority;
	}
	public void setPriority(int priority) {
		this.priority = priority;
	}
	public boolean getCompleted() {
		return completed;
	}
	public void setCompleted(boolean completed) {
		this.completed = completed;
	}
	public String getCreatedAt() {
		return createdAt;
	}
	public void setCreatedAt(String createdAt) {
		this.createdAt = createdAt;
	}
	public int getCategoryId() {
		return categoryId;
	}
	public void setCategoryId(int categoryId) {
		this.categoryId = categoryId;
	}

	@Override
	public String toString() {
		return "TodolistDTO [id=" + id + ", title=" + title + ", desription=" + description + ", priority=" + priority
				+ ", completed=" + completed + ", createdAt=" + createdAt + ", categoryId=" + categoryId + "]";
	}
	
}
