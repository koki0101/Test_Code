package main;

import vehicle.Car;

public class Main {

	public static void main(String[] args) {	
	
		Car car1 = new Car("red", 1, 18.0, 30);
		
		Car car2 = new Car("blue", 12, 20.0, 20);

		car1.run(10.0);
		car2.run(11.0);
		
		car1.showInfo();
		car2.showInfo();
		
		Car.recordNumber();
	}
	
}
