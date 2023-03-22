package ch02;

public class MainTest {

	public static void main(String[] args) {
		// 인터페이스를 구현 클래스로
		// 인터페이스 안에 있는 추상 메서드를 구현 메서드로
		IMaxNumber maxInt = new IMaxNumber() {
			@Override
			public int getMax(int a, int b) {
				if (a > b) {
					return a;
				} else {
					return b;
				}
			}
		};

		// 람다 표현식
		IMaxNumber lambdaMaxInt = (x, y) -> {return (x > y) ? x : y;};

		System.out.println(lambdaMaxInt.getMax(50, 100));
		
	} // end of main

}

class MaxNumber implements IMaxNumber {

	@Override
	public int getMax(int a, int b) {

		return 0;
	}

}
