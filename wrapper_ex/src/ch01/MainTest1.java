package ch01;

public class MainTest1 {

	public static void main(String[] args) {
		
		Integer num = new Integer(3); // 박싱 : 기본 자료형 값을 참조 자료형으로 감쌈
//		int n = num; // 자동 언박싱 (오토 박싱)
		int n = num.intValue(); // 언박싱의 기본 형태
		
		System.out.println("n : " + n);
		System.out.println("----------------");
		
		Integer num2 = 30; // 자동 박싱
		int result = num2; // 자동 언박싱
		System.out.println("result : " + result);
		
	}
	
}
