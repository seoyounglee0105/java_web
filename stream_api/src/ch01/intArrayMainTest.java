package ch01;

import java.util.Arrays;

public class intArrayMainTest {
	public static void main(String[] args) {
		// 배열 + Stream
		int[] arr = {1, 2, 3, 4, 5};
		
		// 원래는 for문 사용과 변수를 활용해서 연산 처리했음
		int sumVal = Arrays.stream(arr).sum(); // sum 최종 연산 : 결과 반환
		System.out.println("sumVal : " + sumVal);
		long count = Arrays.stream(arr).count();
		System.out.println("count : " + count);
	}
}
