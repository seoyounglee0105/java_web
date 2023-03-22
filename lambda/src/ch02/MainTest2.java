package ch02;

public class MainTest2 {

	public static void main(String[] args) {
		
		new Thread(() -> {
			for (int i = 0; i < 100; i++) {
				System.out.println("i : " + i);
				try {
					Thread.sleep(500);
				} catch (InterruptedException e) {
					e.printStackTrace();
				}
			}
		}).start();
		
	}
	
}
