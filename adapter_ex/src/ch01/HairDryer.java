package ch01;

public class HairDryer implements Electronic110v {

	// 전기를 연결하는 메서드
	@Override
	public void connect() {
		System.out.println("헤어 드라이기 연결 110v On");
		
	}

}
