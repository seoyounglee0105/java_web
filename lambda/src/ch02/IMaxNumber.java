package ch02;

// 어노테이션으로 '함수형 인터페이스'라고 지정해줌
// 추상 메서드가 하나만 존재해야 한다는 제약
@FunctionalInterface
public interface IMaxNumber {

	int getMax(int a, int b);
}
