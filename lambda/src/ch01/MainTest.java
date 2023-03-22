package ch01;

public class MainTest {

	// 람다식 (Lambda expression)
	
	// 함수형 프로그래밍 방식 (FP, Functional Programming)
	// 자바 8부터 함수형 프로그래밍 방식을 지원함 -> '람다식'
	// 함수를 기반으로 하는 프로그래밍 입력 방식
	// 매개변수로 전달받는 입력 외에 외부 자료(데이터)를 사용하지 않음
	// -> 여러 자료가 동시에 수행되는 병렬 처리 가능한 코딩 방식
	
	// 순수 함수를 구현하고 호출함으로써 외부 자료에 부수적인 영향(side-effect)을
	// 주지 않도록 구현하는 방식
		
	// 익명 함수
	// -> 컴파일러가 타입 추론이 가능하기 때문에 코드를 줄여서 사용할 수 있는 개념으로 발전됨
	
	// 람다식 (람다 표현식) : 코드를 간소화하는 표현식
	// () -> {};
	// ex) () -> {System.out.println("반가워 람다");};
	// x는 매개변수
	// ex) (x) -> {System.out.println(x + "<<<");}
	// 매개변수가 하나라면 () 생략 가능
	// ex) x -> {};
	// 구현부가 한 줄이라면 {}도 생략 가능
	// ex) x -> System.out.println();
	
	// 람다식을 사용하기 위해 선행되어야 할 것
	// 1. 인터페이스가 먼저 만들어져 있어야 함
	//    -> 반드시 하나의 추상 메서드만 존재할 것
	// 2. 어떻게 구현될지 식을 재정의해야 함 (람다 표현식으로)
	// 3. 람다식을 정의했다면 식을 정의할 때 사용한 인터페이스 타입을
	//    이용하고, 그 안에 추상 메서드 이름을 사용해서 호출해서 사용할 수 있음
	
	// Thread를 사용할 때 함께 사용되는 Runnable 인터페이스도
	// 조건을 만족하므로
	// new Thread(() -> {}).start();로 사용 가능
	
	public static void main(String[] args) {
		
		// 인터페이스로 인해 매개변수의 타입 추론이 가능해서 생략 가능
		// return 키워드로 인해 반환값의 타입 추론이 가능해서 생략 가능
		IAdd iadd = (x, y) -> {return x + y;}; // 해당 식을 add에 저장한 것
	
		int resultAdd = iadd.cal(10, 10);
		System.out.println(resultAdd);
		
		// 람다식 정의
		IPrint iPrint = (a, b) -> {System.out.println(a + " : " + b);};
		// 람다식 활용
		iPrint.myPrint("홍길동", "ㅇㅇㅇ");
		
		IPrint2 print2 = () -> {return "반가워 람다";};
		
		String temp = print2.print();
		System.out.println(temp);
		
		// 람
	}
	
}
// 람다 표현식 만들기
// 주의점 2 : 함수형 인터페이스라고 함. (단, 인터페이스 안에 추상 메서드는 반드시 1개만 존재)
interface IPrint {
	void myPrint(String str, String token);
}

interface IPrint2 {
	String print();
}


