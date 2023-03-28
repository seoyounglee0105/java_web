package ch01;

public class MyHouse {
	
	public static void main(String[] args) {
		
		// Electronic110v 인터페이스를 구현한 Nintendo
		Nintendo nintendo = new Nintendo();
		
		// 어댑터 패턴이 구현된 객체
		TencoAdapter adapterNintendo = new TencoAdapter(nintendo);
		
		// Electronic110v 인터페이스인 Nintendo를
		// Electronic220v 인터페이스를 매개변수로 받는 connect 메서드에 사용 가능
		connect(adapterNintendo);
		
	} // end of main
	
	public static void connect(Electronic220v electronic220v) {
		electronic220v.connect();
	}
	
} // end of class
