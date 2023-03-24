package ch01;

public class Student {

	private String name;
	private int grade;
	
	// 빌더 패턴 만들어 보기
	private Student() {}
	
	public static class Builder {
		private String name;
		private int grade;
		
		public Builder setName(String name) {
			this.name = name;
			return this;
		}
		
		public Builder setGrade(int grade) {
			this.grade = grade;
			return this;
		}
		
		public Student build() {
			Student student = new Student();
			student.name = name;
			student.grade = grade;
			return student;
		}
	}
	
	// 싱글톤 패턴 만들어 보기
	private static Student student;
	
	public Student getInstance() {
		if (student != null) {
			student = new Student();
		}
		return student;
	}
}
