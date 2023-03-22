package ex02;

public class MainTest {

	public static void main(String[] args) {
		
		ILengthString iLengthString = (str) -> {return str.length();};
		int result = iLengthString.getLength("안녕");
		System.out.println(result);
		
		
		new Thread(() -> {
			for (int i = 0; i < 30; i++) {
				System.out.println("안녕" + i);
				try {
					Thread.sleep(1000);
				} catch (InterruptedException e) {
					e.printStackTrace();
				}
			}			
		}).start();
		
	}
	
}
