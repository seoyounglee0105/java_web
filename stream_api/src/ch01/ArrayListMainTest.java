package ch01;

import java.util.ArrayList;
import java.util.List;
import java.util.stream.Stream;

public class ArrayListMainTest {

	public static void main(String[] args) {
		// 자료 구조라면 스트림을 생성할 수 있음
		// 스트림은 최종 연산만 할 수도 있고,
		// 스트림은 중간 연산 + 최종 연산을 할 수도 있음 ==> 중간 연산만 할 수는 없음
		// 최종 연산 : sum(), count(), forEach() 등
		
		// 중간 연산 : map, filter, sorted 등
		
		List<String> sList = new ArrayList<>();
		sList.add("Tomas");
		sList.add("Edward");
		sList.add("Jack");
		
		Stream<String> stream = sList.stream();
		
		// 최종 연산 forEach
		// 최종 연산과 중간 연산의 구현은 람다식 활용
		// s : 요소변수   (람다식 활용)
		stream.forEach( s -> {
			System.out.print(s + " ");
		});
		System.out.println("\n---------------------------");
		
		// stream을 이용하면 코드량을 줄일 수 있고 가독성을 높일 수 있음
		
		// 중간 연산은 최종 연ㅅ난이 호출되어야 진행됨
		// 중간 연산 (sorted) + 최종 연산 (forEach)
		sList.stream().sorted().forEach( s -> { System.out.print(s + " "); });
		System.out.println("\n---------------------------");
		
		// 중간 연산 (map - 람다식 활용) + 최종 연산 (forEach)
		// 자료 구조를 map 형태로 변경 -> key : 기존 String / value : 길이 값 int
		sList.stream().map( s -> s.length() ).forEach( s -> System.out.print(s + " : 글자 개수 확인\n") );
		System.out.println("---------------------------");
		
		// 중간 연산 (filter) + 최종 연산 (forEach)
		sList.stream().filter(s -> s.length() >= 5).forEach(s -> System.out.println(s));
		
	}

}
