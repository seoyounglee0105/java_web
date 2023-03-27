package ch01;

public class AirConditioner implements Electronic220v {

	// 전기를 연결하는 메서드
	@Override
	public void connect() {
		System.out.println("에어컨 연결 220v On");
		
	}

	
}
