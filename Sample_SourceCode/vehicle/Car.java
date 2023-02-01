package vehicle;

public class Car implements Vehicle {
	public static int index = 0;
	private String color;
	private int number;
	private double litter;
	private double gasoline;
	
	public Car(String color, int number, double litter, double gasoline) {
		this.color = color;
		this.number = number;
		this.litter = litter;
		this.gasoline = gasoline;
		index++;
	}
	
	public Car(String type, int number, double litter) {
		this(type, number, litter, 10.0);
	}
	
	public static void recordNumber() {
		System.out.println(Car.index + "台登録しました");
	}
	
	public void showInfo() {
		System.out.println("色：" + color);
		System.out.println("ナンバー：" + number);
		System.out.println("燃費：" + litter);
		System.out.println("ガソリン：" + gasoline);
	};
	
	public void run(double distance) {
		if(distance / litter <= gasoline) {
			System.out.println(distance / litter + "走行しました");
		}
		else {
			System.out.println("ガソリンが足りません");
		}
	};
}
