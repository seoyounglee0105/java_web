package ch01;

import ch01.Todo.MyBuilder;

public class Todo {

	// 디자인 패턴 - 생성 - builder 
	
	private String content;
	private int complete; // 1 : 완료, 0 : 미완료
	
	// 기본 생성자를 private으로 재정의
	private Todo() {
		
	}
	
	// 정적 내부 클래스
	public static class MyBuilder {
		
		private String content;
		private int complete;
		
		public MyBuilder setContent(String content) {
			this.content = content;
			return this;
		}
		
		public MyBuilder setComplete(int complete) {
			this.complete = complete;
			return this;
		}
		
		// 핵심
		public Todo build() {
			Todo todo = new Todo();
			// Todo 변수 content = Builder 멤버변수 content
			todo.content = content;
			todo.complete = complete;
			return todo;
		}
		
	}

	
}
