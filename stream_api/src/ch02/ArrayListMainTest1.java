package ch02;

import java.util.ArrayList;
import java.util.List;
import java.util.stream.Stream;

public class ArrayListMainTest1 {
	
	public static void main(String[] args) {
		List<String> sList = new ArrayList<>();
		sList.add("ddddd");
		sList.add("bbbbbbbbbb");
		sList.add("xxxxxxxxxxxxxxxxxxxxxx");
		Stream<String> stream = sList.stream();
		stream.forEach(s -> {
			System.out.println(s + " ");	
		});
		System.out.println("\n--------------");
		
		sList.stream().sorted().forEach(s -> System.out.println(s));
		System.out.println("\n--------------");
		
		sList.stream().map( s -> s.length() ).forEach(s -> System.out.println(s));
		System.out.println("\n--------------");
		
		sList.stream().filter(s -> s.length() >= 10).forEach(s -> System.out.println(s));
		
		
	}
	
}
