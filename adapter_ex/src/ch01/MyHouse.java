package ch01;

public class MyHouse {
	public static void main(String[] args) {
		
		AirConditioner airConditioner = new AirConditioner();
		connect(airConditioner);
		
		Cleaner cleaner = new Cleaner();
		connect(cleaner);
		
		HairDryer dryer = new HairDryer();
		// 철물점에서 어댑터 준비
		TencoAdapter adapterHairDryer = new TencoAdapter(dryer);
		connect(adapterHairDryer);
		
		Nintendo nintendo = new Nintendo();
		// 철물점에서 어댑터 준비
		TencoAdapter adapterNintendo = new TencoAdapter(nintendo);
		connect(adapterNintendo);
		
	} // end of main
	
	// 전기 콘센트
	public static void connect(Electronic220v electronic220v) {
		electronic220v.connect();
	}
	
} // end of class
