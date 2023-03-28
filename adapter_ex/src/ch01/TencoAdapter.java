package ch01;

// 어댑터 패턴 설정
public class TencoAdapter implements Electronic220v { 

	// 호환시킬 인터페이스를 멤버 변수로 받음
	Electronic110v electronic110v; 
	
	// 호환시킬 인터페이스를 생성자 매개변수로 받아서 멤버 변수 초기화
	public TencoAdapter(Electronic110v electronic110v) {
		this.electronic110v = electronic110v;
	}
	
	@Override
	public void connect() {
		electronic110v.connect();
	}

}
