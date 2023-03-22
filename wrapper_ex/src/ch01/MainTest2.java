package ch01;

public class MainTest2 {

	public static void main(String[] args) {
		
		String str = "127";
		String str2 = "10.5";
		String str3 = "true";
		
		byte b = Byte.parseByte(str); // 
		System.out.println("byte b " + b);
		int i = Integer.parseInt(str);
		boolean bool = Boolean.parseBoolean(str3);
		System.out.println(!bool);
	}

}
